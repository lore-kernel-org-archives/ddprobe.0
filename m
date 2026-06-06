Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FEC2DC77F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780775674; cv=none; b=mWSf95SlX+Z+lsEfQLjJyBp0PvU1yjpI6Q38A+H56jTvCUS5xuv4ul/0mv5Warz19MV+DJ3pGO3cIKUk2fpF36a7iZU33cVYuxIm3j63xmhND49+/+kgmS1p6NjPRgx5W5kOVZYLwDRvAkCVLdMybLz2c0EDPAy7yPBAfm4VzAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780775674; c=relaxed/simple;
	bh=GnaFOk3blN7Ask2ncDIAk7PJYKlP08I4fGrhMjwAzfM=;
	h=To:Subject:From:Message-Id:Date; b=Of89T9T4rqP5NaMCg/Hr5mSosBBn/Q8/+PkxwTt1/4ssPSXdlnIL5pqAxdDSXSUDZoBNsEi5XoKsA0d5fCMJ0AOGAf6w16BisuNsg4uf/mQQcyMXp6Pho3nV7L+cOCTp8hhD69BXuO2s9Vy/BBiqSXnx7Hq+B2u/UMs92zTHPZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5xYTJI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5xYTJI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BE3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780775673;
	bh=GnaFOk3blN7Ask2ncDIAk7PJYKlP08I4fGrhMjwAzfM=;
	h=To:Subject:From:Date:From;
	b=W5xYTJI1T1IREMMe4+hlQjVspZpjLKk7GKozms1yXzXcv979sayi8dEXBUZC7kMot
	 K8ZmPgkdTUfy2gr1Yn2UrhIXIGHpb8WMIRef9lAC8wpwVkFtaeS8/dng3RIGVLl3ZI
	 MeEcCusE3Z5wP1maRU1SZ2bDJAGPjxugpGGdW+YbScmEBMZhgyMmO4blhlk1wsCAL6
	 L3Zkni5VQGX73zR6d9BJRpxsb9QJFRCNXDs+movzdRKsvGCR/inNsHVVBCamRsKhrN
	 ibftFShR8UJOjeXY75zRGf2hQ0DO17rzYGRyjJk1DS1T85Ft5sAwgpQZNu/8mFNgTC
	 WJAXChmixTa0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA54ACD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077567368.11292.1308664508623509867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a869d61b930b530f860da02eecf25e5bd864efd617bfa98112343cd51f929a
Date: Sat, 06 Jun 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780775673
