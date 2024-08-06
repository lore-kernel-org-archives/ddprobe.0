Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B092143726
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722986154; cv=none; b=DTtmdJmSfSi1RDNxwbdFqOIIQPG7EH4dcESSOnLdx/xi9qHkJ83BuETAJakKT4njGqrXpW83wX4PDCBq0EXXCsja2jvCcfhACdW733r0IICh+8nk6xqmg2chfvx0FkoUYhHsD8LUt/KL+bTwwB0W10opCLDANAi17pDJ8D1SjWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722986154; c=relaxed/simple;
	bh=rR2EYyN/l+MzNI472HugSWne415ei5PwhIaZ63fGAdo=;
	h=To:Subject:From:Message-Id:Date; b=ZFbySGWiNxkWeke2tH7uOJkpXGzxEsRLU2uuOqKtFo2rPOgzSN1mKtPjPVFsrE1G1062jXGXP6sG9qV+KfpCum/ntL9Spv1g7/Vt2gc42w5vF0V5u8SdCC+mt8vUk9IWsFm08fKcs4RwTWpQJYtQ4B5+LwWP0gBfRRJvTBri4hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xlv2rL7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xlv2rL7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A864AC4AF0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722986153;
	bh=rR2EYyN/l+MzNI472HugSWne415ei5PwhIaZ63fGAdo=;
	h=To:Subject:From:Date:From;
	b=Xlv2rL7gs6MQkiCgS6Tqie0Hkykf3LGstG4OaZT9bCOB6o9buIGV+GGlAlxxuVJzd
	 CgoNw/ANjxF9tZHP3Drg4me4CBwYLV009N0WG7gmapI4bUvBdkDYWrLwkMH3uH/LJD
	 Sm3FAUrziKy5xVnDPjQfEM7+ncoToLSEfTEB2+hnZ+ALUntmTF7Olo4YoGhXGVQImC
	 alpW2aUzDilPh6Tf7Q6YvfCAcR+J8WKmv7u/n4CIHG+m8YAjZoL7z6/Xvbk0tTLJR5
	 RJVCJxz+e1SBl965k1z5EEhG+qLDcHkG4PTLoK8vO1BFEjjDo2Ml42sIIeEfszoyi3
	 w2ny4RyDs/IMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9694DC52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172298615359.6791.4219311111609354543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1ce5914d12a5212c757357df3cda3b9efbe5f1fa54d194a6e41cafdcc9b3f2
Date: Tue, 06 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722986153
