Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27369B652
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763860314; cv=none; b=WrKnSFZqQnhQJP26Go7+xh2bbYL4Q7wAPuVVm7B7ln6fr4MTV/Le0PObQGdkQNRyLbgKlj9RaiKF4LSceBhuBn8amp2L4uw2QFhV317bISVP4UGQCs/LgG1yQDFrjNtTIT5YNubLimiH4Z3PQ7l+ut/fBjSuXQM6dp9dc951NVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763860314; c=relaxed/simple;
	bh=75YofDOglkKCkR+RpHG+7/vRBkksnJmYktOfP1D5IAE=;
	h=To:Subject:From:Message-Id:Date; b=Vqrv6ZgCJ4qoIhwdyT2axvZq6AiSPZthFz/K45oSAstlBE7PVE+5HS2RkQgYcIDd7kU5FXyMwpUzCcJJOQ+lMbACck1qJkazbo7zHYPYtPrBYNvp6CYfPFPPppd3Jk2v2szLhxxeFx3unQ759crysRFiBD7IO7SejO8EVXb/mME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUDh4ZIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUDh4ZIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A538AC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763860313;
	bh=75YofDOglkKCkR+RpHG+7/vRBkksnJmYktOfP1D5IAE=;
	h=To:Subject:From:Date:From;
	b=CUDh4ZINS+jGEAwn5snV+Zy6v8J6TdhUOUkhiB1lO4gbCCh+RImJSFHdznG679ExH
	 L6fHudy38eIvbYNV+XXwo9nak0GnfbKg8B5y9PD2ei5maixsWA5qgQr/aylp4iz8iY
	 gYw6q/pG78xDFBYkInnfmMvr+tAf/lyENxPBRV5K3fjCv35L/aSlzs/QJkBtJHa66Z
	 lHhYQQEGDlE30yKUO79CYvXRq6xZmkedF/pwXXFxUH6qZBtP0qYmhh5gKY7Yq9pH+r
	 kPwH16hTqTrX9yS4qiHiZabLo6lCOOTMI3wixhNexhHQKHTJZSGZE3ySme63aHdGWc
	 UHQIqMesgIGNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F38CFD312
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386031358.20703.12762951683627151210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1547dacef1d6a5005033972bd828a56badfd9234bf9f773637babd35188f0c
Date: Sun, 23 Nov 2025 01:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763860313
