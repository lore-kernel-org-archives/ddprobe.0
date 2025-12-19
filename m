Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D93254BC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766145834; cv=none; b=uTSQCjZqvgNDOsDKMoDjtcQrTWSCm0ncQ/4DrET/+2zBPFdG26Js9xSYkU/VUrTxJUxpD7TJ620ZTEogbfy3Jn+um0uTrZTTOVxpRmebD4bQ+zTpoJim5jqW3vnpypQoBSAjK5R4+0RZLwxuCF112JxITH7/g237ki732JAs+Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766145834; c=relaxed/simple;
	bh=rmiBoveBYYFZ7VLdOqMQEss1TvbLp0MtDxfq4O2Iggg=;
	h=To:Subject:From:Message-Id:Date; b=Zcij4ARCmGiq89f1lhQgTJwpAhlV/FmeTExEzE6tUGYVrGX32r9hLMwUVAVLuBUGwzieHbrvEk0gwE++VGnDPIp+Mz0C+eu8PzorTy6Kc2fZL6jSyK5rlY1tB2gfhFce5ydMilb+PAVn4yRiCd0Pc/9r7clNIl4UF26B/hlhDKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpnMtOEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpnMtOEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453FC113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766145833;
	bh=rmiBoveBYYFZ7VLdOqMQEss1TvbLp0MtDxfq4O2Iggg=;
	h=To:Subject:From:Date:From;
	b=JpnMtOEdgEA7ohs95fVnoMS3TJVro6LeCgrrBHcQLF3QATX56eOdfbbyKWDZBXAQV
	 BV8bLaSHS3L03V7o1CSZnNoj67BPJldtZiSyTM35dMZgl30XJa8C0d2FWo5ai883io
	 VX43BB5YlxZs2amZlM89woC3TG2UjpEb8hzIxGOEqZJ7FMNn5mge4wLiETN0etADwl
	 J83rxmNWLXHrjhBF9HYhs5L5osFoVo4NSQUs8Bi1BJFhOAQIWrluKFXlLr7UfUm2a9
	 IzqZw3j3PdRSwDCfpfNdAwnleMj4a8F0bPxsRxvWQUtkMClI+7AxX9aCJg3zjYTIJg
	 3rRg4KyoG3ZAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91313D767FC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614583358.19766.14189526446143195904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfa6692d673325f17c0abff76a186860b019dc65f0c36c3efaa77f895a769dd
Date: Fri, 19 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766145833
