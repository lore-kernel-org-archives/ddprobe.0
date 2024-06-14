Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF7716B754
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718381903; cv=none; b=SibMQI7ruLu6A5401V/rms/k19kv2Y5NYRz2o/atEQa/00bp/JpL77wMdV+pmG+z3Un1SsC5m3trRbbnFVQnItUx/iQw+n35nUIlD8A/+n25J28v57SU1/8HMlJwGGD/warthX3BhES3/iVnytpRxj/xVJOyFGG3iQuMRY0KRNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718381903; c=relaxed/simple;
	bh=T4xM1S5Qbhhe25wYhHHrwtexWiNSUazKrQ3VyCy9v3c=;
	h=To:Subject:From:Message-Id:Date; b=ZKHFOcmqPPNEFwTvwFDBuxkFesUlHYe5s+Ch3sJIjljo+peAdkGlxJGVFxXDpec3/nc5MqTo62OgNLLH2sB0YKE0fPGxTBuG484Xu3HWsgtEjkU7nhP+P7KHA9EZ2wcCH/NUDNd3B01mE1xxAz+k25VGccc6wumPnmlmxN1bPQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pReMpc2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pReMpc2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8CD3C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718381902;
	bh=T4xM1S5Qbhhe25wYhHHrwtexWiNSUazKrQ3VyCy9v3c=;
	h=To:Subject:From:Date:From;
	b=pReMpc2Nlnyl2qO9MUWCGlbqi8108dVfW76qJOfVhpGwUe8chK41D6IL4J432f2rw
	 3c/8dbJcQao0bUP0iz7S6fxlNO4E6RlIOzFWJF8AVDOd7dvCE0EnpVHTMIp1wyyhKs
	 pTEnaMCvXj9IY5ORnPXlnsbBQ4FCAsMc4lSTrjW0M989VtZxK0Voz/EoiPd+EBo6et
	 4f3F2kt6UTecOJpzfPbi7493P6lAHAzNPjNW8NWhOtpnJ4Mrqyo1DcD3OoqTTpMGz+
	 cyRkDLSVYum1N9lWDmgrTEOMfA0IYQpOlwI69nw43b71vk/GWeAcFWmM+kXC2A0U+t
	 nKJVFUZ1PrtsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE872C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 16:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838190283.1054.11370707373314028252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88526588f9cd6200288cc5c2de59a078fb8c0a7a13d6aed0106d8884b1aff142
Date: Fri, 14 Jun 2024 16:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718381902
