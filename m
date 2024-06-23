Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B3F8F5B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719160343; cv=none; b=A+gLEuTOrsXGIbkCcdcYY+rhDpbkziOkjrBwAzaZacN/IhgNPpiOii/9uXzL6/5tVHhSU6OCuycUK1Cj87vDzQvhwTEplRf3zDErYn+mARKYYovTQhYpyO/hwPUEAZZvXmExkAkHHXPI8vTM8bua9johL1xG/mL+ydYIlYAViCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719160343; c=relaxed/simple;
	bh=KaNDCC7uOQHeUL4BezG0zhbn78M+nYYobTUNAMP7M5Y=;
	h=To:Subject:From:Message-Id:Date; b=ZST29R0O+thrjKpHefSZ49orQAevpdUXkBmAW/HNP3KSQmOoAmpRe+IOZIzK/H3B58YSx7+iN06cRG7SykSDJLWLuCOtBWC40dagJHD8CllZPtOWr0hJ1NfbtMSfYj9/Jmo/4EDfCGgfeJ3//LC2EYykZt1XgCHs4rq96lzm0Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWmGf9W3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWmGf9W3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C60C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719160342;
	bh=KaNDCC7uOQHeUL4BezG0zhbn78M+nYYobTUNAMP7M5Y=;
	h=To:Subject:From:Date:From;
	b=FWmGf9W3v51dOk2ZxJuosJTjKOU2XRgxCTAyHyvlUsiBGnyma/AqNZQ2rKgVxYnhQ
	 DfmXhsAuXWRzmtr/hxoPpabTtYcdvuaoT3mmduO4T7NZYdCLFM0d1mMzQoo3wNC95b
	 Sa67YHBFve5Zb+iGEMxL3TKkfV0Q72nAI2VuUTN/mCQ819EPohv2wP1wOgiUiSdlpA
	 nQbJAB2j8+4F+9EhcW4K15sYmFYGoant0148/bmZ3bj4z6Sr89GeQkrfyS5AVL8GCR
	 8j+YY43c5XQF56YmvS28jZ+gAB2ua6aPlgBOhx3uR3P6Nd7xrj+ux+KkL5/HnDFK0O
	 9FYHTDUs54tLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46E8C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916034279.4843.3431698570569713802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8095820666a9fad2c164e4640070bbca7e08202896975970590d40e0e3ba270
Date: Sun, 23 Jun 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719160342
