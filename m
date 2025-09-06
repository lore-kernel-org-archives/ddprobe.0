Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3289926CE0A
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757153394; cv=none; b=OU8KELMEWsLO6jKOzv/UcCT2iXdK7yOtM/Z1ZotaSwPgScfruvBwUYHWV9RJy/l+IVIysTxTVQjnDlmRtl4z14O9OIIKq5oo8FM1x5lIUSrSd5tNwdG5AtyJ7MUTCHZ9L5MOM2kO97QcGdQglFRPsLmDOwfVzo/TO1+yI05J1oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757153394; c=relaxed/simple;
	bh=7mnQVmnKn3HbfNMVS+EZTz81OB4+RjX8XpJ1p/66x2c=;
	h=To:Subject:From:Message-Id:Date; b=jlHA2I1bwLs78TxqZDwd1QbxA8VxBgdlfg3DX5yPpvxORwgHSMD5md4vhC7fUb+iGxlbLeFr8ntuNgZKYnGMhY8c4Q3sTeCnREyLX9c0uFRXOvCrD6eTnO5e+UPk7jbpTeEKda6B4RGG85yxMpKAfixgKC9c8c6XoMrqwpjYVGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRgDE88q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRgDE88q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A23C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757153393;
	bh=7mnQVmnKn3HbfNMVS+EZTz81OB4+RjX8XpJ1p/66x2c=;
	h=To:Subject:From:Date:From;
	b=IRgDE88qK31HfRx9dniKO8iMCx7p+a37TW66ef1QJpbMLcv7ulwvBC5XmQ9aVmT/y
	 BRpr+M1cKmkFqHCja7Iw++nwYpMGjjVklf0Lu12FUKGCdEmT4hJD88euvLn/S4eD0w
	 xjx04kmJwleoJ3K6Wb1GKnIxYaRiYX1eLa6vr8FEULAO/Z+WysdMhoS3gCFoMeASEv
	 R7oMcraxN1EhQsUNXsckqY3PYpeS/xvfUUK8sTa5FJAB9wiubkBOKCtHrCgoyauxM1
	 WW9IvybWbe9ZStcfZUWNL1IcCjWYOJgOy5jick/npgA+F/fl/nMMRWGOMiMORVxN+R
	 LMAes3lHV3jrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955C1CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715339359.24759.2208293326462552433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2aaecdbb8d56f5b5a4e03e8ab3abe32d96992ba4c0b574d877d6ceae9aa2c2
Date: Sat, 06 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757153393
