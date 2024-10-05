Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECE45338D
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728165954; cv=none; b=e2xt3OT+YhL7VGHjyZhvaB6KfAFjv1nTUEsPBmfWxr8pqQPhSSvcK1zzxvSQx2LL0MuxYHgoK1dj/U5GW1ZrR5cQ0g+Rkz78vOtZAqCITMr1GXWJ77Ke0NNsft7yuKeWq16bysrgU/Ns/3hAhhv+dMvjzXxNjaP4Ijg4ySOITwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728165954; c=relaxed/simple;
	bh=sYJOCp2zVPy5SFXGKRqQXRbZoV279oJJ1Y/5JDS4zDI=;
	h=To:Subject:From:Message-Id:Date; b=QbLJWspsbwZM4BxqEWBSr+WFRGBh0OE4/XrEtp+4fF1TZsRp5gj8CVcnl51JBgMnUMtRmwzbP2UMkPK0stbrYGlWiwQCl+3TLBYLx8H8NVR1Cr8UxNTR5AZJB3GV28RrUxP3nbwO5C8ofz3tc9Fal69skc+be2LcVIJ4EFeYgdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qs9wSGY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qs9wSGY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3E8C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728165953;
	bh=sYJOCp2zVPy5SFXGKRqQXRbZoV279oJJ1Y/5JDS4zDI=;
	h=To:Subject:From:Date:From;
	b=Qs9wSGY/74dqDF+dtV3cYD8Z46Knh8fS8jYFT2GpsXwnIG0UKCia6hdh+KIDZWf7n
	 8epMbhKkTC5Xe95POUB1Y8SPhOBq1io4kWZhWFF5wKy8nhNj4tStjAZj7Oh6+j/NCk
	 Nr2Dw5/NrTwmoc4PS9BjaVznNccbnlb4E4WJbjnbtzOxZtAdX6UnxUkNjzt5HlM5GL
	 2PRzqmoUateFvQ+u19onp18CmPdGsqN4pIdyi07QN6tx8MYzbQv96SjHLBOpzyhksO
	 U+IounoWoCPwWF2Q7CZKKkH21Xj/Cm90xPVLBQvojT0s9VKsPjiYobVU+wOEMqTIEp
	 UaKIDgbcE7NHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B297CFB43C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816595360.9745.14372485983398647742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2920cee5e72915db91f03e0222a069a10f692ea6380df0bce938eab364ade1
Date: Sat, 05 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728165953
