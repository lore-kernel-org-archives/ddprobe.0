Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEFB2D7DF3
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761638994; cv=none; b=lb8DQywb6Ew5kABv9eKrBCONHJ2pUe2wYokzQA6P/cg0xCX0CWtPGfdln4OJeCGBvC0ZdAEHOQbL+o+EJyH22d9oddhJG3UxRL8dKgVl3qXYIE843lHgT8efstSUtPfDXYRhVGuQmyo20d4dCYfdBypN1vqks+N9x0qSnO7PwYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761638994; c=relaxed/simple;
	bh=lz2+iQBq6ET/XlBjvwVwr8mrPamzup0dKDcpc7XbpVU=;
	h=To:Subject:From:Message-Id:Date; b=OYVGsF0LxZVhYHegr85HbDUcA2k3Ny/fCRqtZUZ7Bht+fBsEGUsn8+yQOq0GuE/Hb9GS0AZH+0t+8sXwBOqi0Qa4lDRnYWNnCS58+D/wyr9UyE64WJy4R0NygKzSA/So9QIybfFrhdnV2VIM6/FplRXPcvVWckXeq+BAHsogi8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axewPHTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axewPHTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9831C113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761638993;
	bh=lz2+iQBq6ET/XlBjvwVwr8mrPamzup0dKDcpc7XbpVU=;
	h=To:Subject:From:Date:From;
	b=axewPHTxYPFEqqQgZ/77CONBScbjm1UjJxf/22SXjElRmFwqmlYrvWUl8Ru80bWf0
	 ApyMuvtEXgZcSKm9TfMYk8jwo7NdTwYTR4kvfvLmbHGXuxMVasiwsuW9Vj3QKfCLfl
	 3oUqIxSq9qsRJYmW4ADGVSfTVOMMmMcliX6Ac2BhwWUd7K+0KEjIerC7KrVKwWr4wX
	 UC4RzGpCb1+nunrBDkONbVsB2uoKX0KOGFJGJEJNff5/7XrX8QmxITP35Y4DXJPHwe
	 mbFmwAqIP6nF8o9NgtHU29hTaRfESSYCdG8/zeJNjtb4bfQ0AZY31kJk8aNRn56wiU
	 LLxGPid/yMRTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94408CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163899359.7740.3285616886554911964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b62759f5254d732e5c7c84d68ea9819a46d5e687c3fffcc551ad230635c1528
Date: Tue, 28 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761638993
