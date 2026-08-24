Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474EB370AFD
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787595034; cv=none; b=qqRMHIwKIi9U5vvRODJpu6Xr0Yi4zf2RR3cfEnnBDbGNSS0YRQulaJVWTsGA7neuaM6QfDtHL9pCMUsMux0doVBPkYAHDfzpRj5pfH6Ev8OgFDUF2mfyehtYMJEKC10NtH6H5iJ2Wqf8KeZxU9Uj4LvHz6xMAK9hySGOisAZAHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787595034; c=relaxed/simple;
	bh=tVrzt3Jmv/h2G9F9ssvyYZC/frrtOokbXcywmKTNc3Q=;
	h=To:Subject:From:Message-Id:Date; b=Y3Gi+8PwsVlYNZUkSFmGcrMqZ/aQM9OIKqtPpBhDd2QHOUz3bpykP2nKrVEAONJo3yM6OdWXtLVUV1Ymu2TwsOhbc6tHbtjPxiLODV4Kryn8DdPj11ED2VtXDrER20gL3to4MaZmdeXnMoOlrfSVEGQqhjWFKoC9PRxJ7JrQFOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZP6AvzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZP6AvzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23B9C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787595033;
	bh=tVrzt3Jmv/h2G9F9ssvyYZC/frrtOokbXcywmKTNc3Q=;
	h=To:Subject:From:Date:From;
	b=AZP6AvzNGrkBCVJzDh5thuCtxsPcBfGZ/3K38S8W8Fdg1Qc/iY6jpC00i1aYl6Rxj
	 LBDRjLRyUdg2KJV6UKP6U90etMfYMxsiiw6lOdeqeRcFCXUVZN4K44xZTzH8PXG22U
	 Q775V18HrheNHLCgCCJxSlEEIbLjtz69/VGDmT+e+Mip1FFkGX1zp9n30JfXcL/f5N
	 Cx4oKShhkWuh7fkVHB/blRUhflVRXmGZbRo94UGSBIJNlZgvEY3ezhq2ie3E6EFLDC
	 8/PrBei9Wz/qP6L6D1i+faf9zDlyTLqZJkULhxZNLjStdXCAh6wqUTWszmRTppmJSF
	 MohTEsHqm2cSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC10AC5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759503369.9340.14074675600626768713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c5063b4f6ca37afec8a7ece33f28c515f3c4187675e717c5c52f647db8d48e
Date: Mon, 24 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787595033
