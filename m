Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A282E736D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790123434; cv=none; b=UToNRxIvDp42Y6SxKCiODuG3mxM9PWF1TZmsTdypEyyVXy4viEOcCGaX1jrE9hNZHtBNpc0E9dEtQFsenYuEJV5CguX/hcisWPqZjswhSm1IbiDl3YQ1py1CB7TIVpbNDIQJr5G0yRXTtPACW2mhDV0jud1/OObLF6wMkSVMrUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790123434; c=relaxed/simple;
	bh=CX8y1Emb6/59EKAK1vPUslm4WK6Y47pIWJ4dVVaXWiE=;
	h=To:Subject:From:Message-Id:Date; b=o4oTXSot2uOs02GiTSkm0fI6dQ5qQSoA+/No+LRjFjIJHw6hDBP7isq+VfyxFxqwnQQ7gH5g6PtKYCRxpfYWNHAP6RLuIcoOJPRmNBQ2fOCbqEyJLnGMkqQGvnd5LqX/EKDevJBN1s0g6uuetXvY5mmgFlzfrgFoZ2mpBSkl0OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUyk/vFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUyk/vFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3089C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790123433;
	bh=CX8y1Emb6/59EKAK1vPUslm4WK6Y47pIWJ4dVVaXWiE=;
	h=To:Subject:From:Date:From;
	b=nUyk/vFzTf03jAcoF36M+pYvG+NDXM2ylMMQNc5H4K+OFAOXuIFx0ahUsHmAQdLBc
	 KrYxjx6ePvg3pOXGLqKT2rUq/3RDWEvlhlk9gF2cIPrKTptoausOJY4xc8UBq+FnOQ
	 MdMWYKwarb75/iYMKxm5fvvH+zjnR4feuc8ycFabGTQ8Y+lJk4DYP5HgS0o7Fzf53U
	 kQk1xRkqJNfTEkKnBkktne5T13L0zs0RUMyZASdrqcxG5cLj+x47gQQ8GvsWKUiw21
	 Ok5s3hZAUmpCWTdkMVh5175gGtrabothVyN6an8BEaExRVhZaTW1N5ez/1o7JLWNqo
	 kya5a6VKJkLAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFAAC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012343370.17280.17990580297397263300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9479c78f5127357443917d40e50977977774caf5b0788c2239451b7091b9936b
Date: Wed, 23 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790123433
