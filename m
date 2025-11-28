Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2CD2D47E6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764317574; cv=none; b=MiLzyE0GDTlI113eG0JSD3yVT5PlDw5SYlCCrOjA9eKw4ud5AaO/TYBPVje4V5EoKn0rL1Kt+LpauHdMWWUZ7mcFyhvR+229XLCYgyIeQAzP7YR+xyIrIkxBuuQPr2lAPsvzjtk7zC6zIOKIcxs80Pi1YUxEmbPwRTS0BnYCsQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764317574; c=relaxed/simple;
	bh=zB/uM/07kYEG4D0ql4MfdNTT0abzr0KH2aXKktesbrw=;
	h=To:Subject:From:Message-Id:Date; b=mJE7wWNucMsZ1PwzcQtzSAtC+RIRii7WPkRFE6Ctlbg/gEwrhDNYC7gpD+HfQwLi6d7kXDYoGtgyuTp2kr8CBJnvoMmu98bNpw8Dq5AK1CBWFhhFlzPz70wTYu6Yi0YAGK71GwHxDoETIpEGGE4j55UdxDeVobyqj5rYumaskcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5DgHdkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5DgHdkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4793C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764317573;
	bh=zB/uM/07kYEG4D0ql4MfdNTT0abzr0KH2aXKktesbrw=;
	h=To:Subject:From:Date:From;
	b=H5DgHdkWJkCJ03bXojmaO1gPf2c5ripI548H/JsyxeH0AVeQTap9XotgsiUH7gsZx
	 5t2bsxNm8fi6H2lo7WOSF6iLlg64SulGr93MyITPJyaNn6FfKtIwPBiWOoyMg8shVd
	 NCjAPIW60WCSg+yMjPWJ36R/R7o2aP6pW6px+fQLvMY40U549goxNHbCngAU/MNJ0p
	 dibYXgNbYddXIGDCgewkGycYCNywC9cyB03ZheClTgeb1OIADB94wuJDVnYJlQuy8c
	 gGmSIsoStvBuxLzzZk8sKyNmhRfL2kygP6NESM2g0EW3Yc2ZLjDtkn9PYN2c3OZlgO
	 vlOFK8EWsFpZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B38CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431757358.10415.14785314470361220695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46be6a5215b307109ff5bc8fbf1fa115633838eda38310ca105b489b2dacff2e
Date: Fri, 28 Nov 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764317573
