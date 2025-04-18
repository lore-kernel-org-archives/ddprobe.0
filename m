Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32C115442A
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745011193; cv=none; b=NyytjNI8KQw0oaizBODzo8K9atBrtkoHz+cXmetDVcExm63Tpm+9zqcDPzNG/MfGPIvxQAdn/vI+fsYYKlDcNFcl2LJwNXw6Hxym8T8Z0nt0KCBfOzsrHr7JwcvB1V7UCzd2of+wEpA2AdsWvg3bGrDUvv0s3G5oh/TejGS/e5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745011193; c=relaxed/simple;
	bh=5H8pXf3StCOr+Z2IfJUgQ+GhuK5OcKF5k9G7JpiCRRQ=;
	h=To:Subject:From:Message-Id:Date; b=q/RHQNEuKG/s1zDe/mA/aIp7jdPL5gAqKBU8Y8mjlRP6/kdZhWaaYVdoIedncXB5Crp9Cn21mzNnBLiWJUpG0ll2mmpohZbOiem71bWbHYnfAOaWnmkPC0wXTuBlXEAPLyrT+0zsuBriGtQXTX7i0+KjUK4M5pBNKW/kZxyWMm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r93DPulu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r93DPulu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A61C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745011193;
	bh=5H8pXf3StCOr+Z2IfJUgQ+GhuK5OcKF5k9G7JpiCRRQ=;
	h=To:Subject:From:Date:From;
	b=r93DPuluHsMAuP9HBZutBLbpGJVPosdBo9mKRHdfpNrq8tyYXp37V0uE87VXxHTeb
	 Fc8m00iLj++6j6YzO3VJBEA4amQ6RhxSFAGCTy2fWbegmHVKhqutGUOlxPH8aas9Lu
	 dq43105tEjLndqEXkocA0FHT8TeOveZGxKgwD9tbpHS0e8c0hOBSJOA5oPgtuU9Ilb
	 ZEde0DcWMwGq45PsGKJ2hIbZ3w/kbt4HeUEG5azqELGMKPg8WJllsbtuTIwe9Byzp7
	 GuTuRSgVdwL5BZW014O08pmIcY8G2jwRyB/bfX02a7zrIEUb2f3R8Ug73UBaN783e3
	 xUSOVDnEVrzAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B1C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501119358.4013.2951651173569727477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5826915d6389d563a201a2a8050b2aa874fa87255d9043f562c2bef19455a4f3
Date: Fri, 18 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745011193
