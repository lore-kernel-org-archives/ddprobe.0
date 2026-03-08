Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D76A2E719C
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772972694; cv=none; b=korl84rDwc6JPFQuFWSLmkSv6zIEogi+xgL/ni9M6yKYPJY/PBkCwtCd9xHsrY17eyi6YSW9Cc2irIQR5bfDg8l89fVKLSQE+FCpLDaiHbTcQkXUe7WY4dMvCnAyD1G/FQ8hFkWv44haFyQ9H1asr/NM3RsWyxTEUfiT5ij61zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772972694; c=relaxed/simple;
	bh=vIqnT3zWFXSB7Fg1dOejpPk7BS8tgHllbYnCyMUvjJo=;
	h=To:Subject:From:Message-Id:Date; b=mRa2WfjH8F3VDdubWFkGLElXwbScC3lR/NXHP8DYaD0Byl+5eo7QaCeyQAR7Oiz6oI9DNbsBxtPqFRDwI4O0S6HQzYQFnUo/jDtK9IHKQy+U8qRTAOs7BeHSIETqpkRK1n+tkn/2+qJ4I4OCbAhnuwXW0gbRlF0GL30NTCHxlyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmirprmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmirprmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C9DC19423
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772972693;
	bh=vIqnT3zWFXSB7Fg1dOejpPk7BS8tgHllbYnCyMUvjJo=;
	h=To:Subject:From:Date:From;
	b=qmirprmHNZMvnvKUH8vPxKxDenvwh1/8EA9DK3SmCbAomOlFU093stvsbr0hvhvVf
	 E6/NOst6tbN7PooYgo02HSC/AXfG3IjkO+h3geLTi4diOTMWfCAxF8g+wfPFlkCSfb
	 isRQATeWw9x+h+H56nDUcX72ShEyWx/m8pyKFD6XygUEUe/ewSHKEe6zs9PGDzhCIL
	 rOSob7Dt5gF6ysdaVJxt0u6nWi1pjAuxQCpdT9pd5SmE2CJSFqfsuX84YcOQFozZo6
	 Gluc8OgZmp3v1gXhxSROsfGK01cXzvByg7OayiEyVXR/DbOb1yuSAaUySHYrGt+B1S
	 u7wfL2Zl18VoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93971F5513F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297269358.19229.12398449016135337369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c96b1fcae845fa74ba411d26fbf1280357f8f7795f660a2ea879f692b559815
Date: Sun, 08 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772972693
