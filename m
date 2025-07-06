Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C1F2E3704
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751775594; cv=none; b=OCQI76tcowiseUgtVF7gzp0Ka2yPvqVbpBclwg/Q/+aPX0zESdTz1LmtaxjfYY8T12j2XIn6hrTCWJom54eq98zsZAEmrpQcNVdpAv3GVrqGpufwkQUWxzF+ED5a4TPWUWiLtYcc/DQG1DxKQONN/aFR7Szpi0f1T6mpkbcO9Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751775594; c=relaxed/simple;
	bh=BzyCf6fi4NlcFRCPkbkRuVS3iq1Ff8N/9n6fzh+cU9I=;
	h=To:Subject:From:Message-Id:Date; b=CaZxWcSlff3Hu6lKJNPIsJ40QGzzuHCLwUrtxkeEDGym3EyDE7hwZAHdJOw/8azcRVVMQvcBYJ+0S1bFtsodv0///K51BfRjkyqIC5aNY4forii5JXVIt5HbCNFmYcotaj2pfHkOdw4CAXHnvDGCUkn06T3uwGkCXKjktJNXJEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIy8BB5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIy8BB5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65A9C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751775593;
	bh=BzyCf6fi4NlcFRCPkbkRuVS3iq1Ff8N/9n6fzh+cU9I=;
	h=To:Subject:From:Date:From;
	b=pIy8BB5lwXrmf4G7q1UYzxa88DybmnzzvbS5LPJsmyEJ/49ymRGq2QMIs2FXPBjfx
	 jfvX7P6n2q2rJs7OMg7OkZnb7QgGpEYW9Zamm7Y90qdZlAbpLGUHcsP9tQC6zMRaXz
	 CTKgcdittwvNRDLWASc0Soy7KoWCWTxqY53hJqFya3JSOATMSbZD8KxnbDXtHxE74Q
	 h5fQGCTQCd6N+mLOv37NRvahRnlSZvG0UFVBq3h3/TIbP65YMYMRjgUu77cdsvTKZV
	 V1QU0wkEzyeFJDHtR18SfDMsIcOyloi2eTS0EkEKScV8tGE0Qx4LpYjBerzA2zDzHx
	 c9WrqqDf72z0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180BC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177559358.32270.467856599120510261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47cc1c3d2d1b03a4d9379b8cb8226bb440fa8a3331bf1f63e621f200ab9c859a
Date: Sun, 06 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751775593
