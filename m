Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F04B1DB154
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753040994; cv=none; b=V6xi+OF/dl04PYbkzuOLtBs9GzdOFl67NgNf2CewPRr22a2zNpSwJNpQ53SantkkIKaTJ87x2W6Nz8X2vN+QqnXj6OSsF4KY9ED//sBpkHct3XuFN9quJUl03d1toh6klMnlXyripTsUOtwgAIo2O1PBPrIfLvFnhG3tLK1/FhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753040994; c=relaxed/simple;
	bh=7W9Bxs4sLC9xwZEy4TKVPwcQZDT4hefRzFnkQaFc5Is=;
	h=To:Subject:From:Message-Id:Date; b=FqVeVy6pcQENO+Pv3l2dJ6571UdgddeCJFVgYpjMJfYz5OpjULCaQ/+6chLmJXs2htSkiyyMEWbswj8T/UI34081gja64WhtvNLZzZs1sYglB1gbCbVlkLKr9Ik0WuNlkXXlJOg+v34vEOF70LP2acr30JRHSq0yW0BXgJrnFJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYTpVh7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYTpVh7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3627C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753040993;
	bh=7W9Bxs4sLC9xwZEy4TKVPwcQZDT4hefRzFnkQaFc5Is=;
	h=To:Subject:From:Date:From;
	b=EYTpVh7abryS9J1yKxSi7aag/ewlwHJxWytM5f9bi/r8VC0EutxttOVyaTrF/f5ti
	 K+wKg/h6Ubv7yVeOl9yIbtM/PnN+qw9SAE7hbNxvO1gub5QZfssVKwSmnIjDKJdOI2
	 lv1GD0GNFTP/ol5n1out2Pi57qpggp7Gya3Ss2jVOxsMRLMjZ9Fzx8cMLWGTyKtJyb
	 LjkW6WNq8can6+/un5QsfNw1OEnFEOMhFMVYIxcvDgDB5pgEr/0xs4icr+/mH2C8sI
	 Oi3Sm1pU0ocwrux6riaHrToWVAVBnlw9+rllYYKk0WqK+aOAz2QbM151SwJdi1MfAK
	 b4tAdGLLtLXZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96CC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304099357.27512.2097450027045408390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487ccd41221dfc3b26bcaf216f11b4e5609252db070a97e118a32d3cf1c62331
Date: Sun, 20 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753040993
