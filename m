Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3699F1A83F7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755988794; cv=none; b=CF3TL22nKyuhAg5xhzF/HR+7Q7AGXm0uZtRSdxMjfotS/L1wHAvbQU6AfpxT2UyvGuvtuIdklIrWDXuu2Ix3BLLTd0IWrgRi3jBsBo18+uNhSbmq0QDJZzS3Gr1bJtk7iDXTWkD5tHLRlp9ql/Rj5KoNURzgPRG1Lgy6nAq/zzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755988794; c=relaxed/simple;
	bh=2k3Tyx/1iTRwAA2DCmKSeOsBAIt2C3clhPfE/gmKFmw=;
	h=To:Subject:From:Message-Id:Date; b=An9LGnUuZ8b2t5wTiT+71sE1soPDPJqhVhzf/yYgWykMlFNWQqmteFP9rMk3N11nrhFBQb/HJEd6i5gB33PRbZcq7NGBrucq606HkMgTdLLPix7ZSjYzc2K2eWlv0mD3RVhfptXUfeVcCXK1JITPxfcQ18+cF7V3/PG/05FvmPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSPDAVPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSPDAVPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8B3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755988793;
	bh=2k3Tyx/1iTRwAA2DCmKSeOsBAIt2C3clhPfE/gmKFmw=;
	h=To:Subject:From:Date:From;
	b=NSPDAVPBCLVPRLwSQbHdl0kJpOwFJxLu0Y6IgCmIWM7pNoXESmCxm34NHe97ht3V6
	 wdTShyb1eYEocOb8aDE2DTXu8EIX6HbCgppJt0ZuDBwmb0Ml8o4+UWnSAgDfESxMUj
	 u4QN25I9xvAqymjqho07i9UhoHuJN6GKF7FhBWJlLNDFvvSyTwdNG7kvdhbQ8XOEHb
	 KuykkIkrXjHk5AUzr94plT5uoH2obmle7PTeOBwpAKXNVdsyoBPocUmct/QmB8VtDJ
	 nIgCH1NbDKfPBabjyQZcBN5wotozyaxNRndQ9aeTJ605jAdqpRdnhdwdZxAb9bMNg+
	 WykvermT4qwpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF32CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598879357.24453.9782884000423582951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cff3d56e8934321a3585551be75e84618b31dffbbff605ef5b8a2cdb820e54d
Date: Sat, 23 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755988793
