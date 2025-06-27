Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB641922FA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751024993; cv=none; b=j5gftnzniS4T7vWvPlcNoYli62kYqzU6X9pJn5eWFgkJnwKjmdqQwa+sw8nuUDcnR4DXbJWpxb3g4J85RuaBHTNoDNhhh93kDN45ZDyoj136HVm4sIUQERnxDgdTG5cOkHvGH6jCpi5iG9um/fYv+GZnaeFZupJzeZYWhc8ezJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751024993; c=relaxed/simple;
	bh=eNO0Ufxwcqi2Xt+HNhekf8WiNcCoc2RSRKob6TipQ20=;
	h=To:Subject:From:Message-Id:Date; b=ukmBe4QSdMy/PsPrkjVlVHkUt1YSooec76cGGIe4GB7+zGZ56n0mQaO9l7RkXnw+m03F86DA6f5iR7x7mVFI36+lQ5AgsrsTGGe61REff5yX0pKrW/YWps0a8CFztPSouApkle9u8S3oQ2SYydVAeTDLnvptbG2deN8OZuM1WAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGseceIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGseceIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0821C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751024993;
	bh=eNO0Ufxwcqi2Xt+HNhekf8WiNcCoc2RSRKob6TipQ20=;
	h=To:Subject:From:Date:From;
	b=iGseceIMBOX3R4pHxUE637phGTDClucoBx5grlQt3xycd8xiIj9S+JmHP3Lh80onx
	 iyS0/WyPTAyBfMViplHKTNcEkChV4qcXbMSdIfuN0iup68jEFJoiuT1ZqIM1Yya1ko
	 c6TBiiAnZofSUGe4Mz0mHkL8OEqsZ96iMnadnsmbc6rFEyZHgI/ScIRcaaDNTatvJG
	 eTKIeUc9Bg+LAwasHPCXzSzmVbNQpk8T4aGyCPrbq8cFR0QlCAu+ZbpYZ9f2ppGw97
	 QasqFD0UReJUEHJFBLAxOhkdQ5oRPMw+YcQCm3sbsGNMxYNnN4bh8oiq8XAZhBYWKF
	 1ikHWcxbZew6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95042C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102499359.4681.5521974842373303799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462b6b0b75253925ee904f0f3a496273dab77e0e44674b160f1accc87eefb51e
Date: Fri, 27 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751024993
