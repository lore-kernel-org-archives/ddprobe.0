Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACF02747B
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754263194; cv=none; b=datkSdlWuZE14WJv0OR0kmFy1M9XdbtWpDk8tnjqjj17IIg2DkQSMQyvW0uMd9aEL3q7k8vjVnZRf55l1ff/heJnhSyua7bS2y8Ug76XjzW+f49s9YCRgh+KnWN3Y48BbRwdvxQqa1/AGkMcL2ctbLDlG2LE9OYtCiOXmBsDy+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754263194; c=relaxed/simple;
	bh=VgB88a5LAjhUTEufz4Lh2H5vmiUideFxmqslpHwSMwA=;
	h=To:Subject:From:Message-Id:Date; b=MS6qM1mr4wu60QaggZfpd6xa8sBpscvzGfEwwp3bqwgsTHVLOZPXvby1vT7L6xTbCspNX6y0FGE8U7x3OYCaBSrtvZTKCeK1ct99Qrw22PGQmXrAAtE659RrJIIezTGoS40R7m/Qwm23JGb7+AndUEFDeYJThlnxt2epDccYG6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKJr38t1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKJr38t1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28BDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754263193;
	bh=VgB88a5LAjhUTEufz4Lh2H5vmiUideFxmqslpHwSMwA=;
	h=To:Subject:From:Date:From;
	b=gKJr38t1XQTpNMkbhDdqO+dKoRA9EiuQVg6vvCOw39FWORrLGBSndh1+4oEfdk2w9
	 vtx0sqROaI1JgY9ltgzikCopAlA4xS3Rp8m5nMpxrl0UpA2y4H0U2Td8BkHmG8It7p
	 4d+beuSIZvk/S8/JFAnE/YIF5GvG1gIPXJ11Sc11s3pwgqIr14ETYDX2EhEKRx7i9f
	 GwALSP1tk1krzVpsGYMO8mWO3Vv5OmWrFcvzoH+wWBt2LCchUqKb6u+Vq6gcnCHHrC
	 1X9Rm0zvOGPgJ7AHG3tsysX7KK3/UzEr9pt6iCMmVhCENXVTnqXv6E/sujRHiSo9v6
	 ZIWVS6Pyp+Wsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F883C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426319358.5404.1506781798218941494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5fd31f382ad2d66bbe95feb489f754f139b4574284d9cb9a451314b6908254
Date: Sun, 03 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754263193
