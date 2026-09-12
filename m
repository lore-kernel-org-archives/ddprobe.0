Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E87472071
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789212634; cv=none; b=bKZa0hBitH3DzaqHkfFPD4e4yctClEn41EVLDcJeCrzIMfemmdyr2fHBvVs9faWdbDBWe2usBZaCpc6xEy3ramKb3QDKmkkDCM5DLEds8kRYJgW8952sJTW+KMzHAbr0z+Y2TiMzCf1ailusKsHOmKwtR0ZQLPcL2VpDqVTn65Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789212634; c=relaxed/simple;
	bh=PluABh0nAnr4Ptkc8SRApc0Gur1so5jpQdgQir12wFA=;
	h=To:Subject:From:Message-Id:Date; b=OUWJuLqfIudTlhnJjDYcKV14P1/7tA7q9KeXHLZUEY7eVSOYdyhDXQ9py51+i6BrRxvIeUAlJFdKIZQW1jNko+1mWNTR8jKrTMjaCQpAN6QhCXTRBR5PxtlyCkkF9eEtcivdeBeCRU2IEPFkD/BHZCGazUTk1gNT7FFaHDvWhAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axYpPSN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axYpPSN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFC9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789212633;
	bh=PluABh0nAnr4Ptkc8SRApc0Gur1so5jpQdgQir12wFA=;
	h=To:Subject:From:Date:From;
	b=axYpPSN2bSicWVfgMRARiFA0zhFC/97PWBcEEPC/jQyonDlH8QPZ1LniKxztjXA+m
	 bz0LabAtQIzmYyE6A7i1JaHTzx6Kb20oyriJ5ttmefrDH9MBC0lEQHhuEU2x7rg//7
	 c9FLC4CntTgaYCcWn5BAmV5wfAEPmrt7JEvqrfBzQRwH6QUEjb9GSqD6qINJVC5o4i
	 bUytlKMp9NGYmNnxpHQDvS3tDzMoLOOV7RTF95ULzQV4BAvq+a/pbyAO9ElpF+Y2M6
	 XW9kMxJJrw0dInQDufpxr2UmyKMZKBfhHjuT4XZwUW2QGVJenCTqbE4FlnPKZS9J8+
	 Npn0dfpEebFQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F78C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921263368.6004.4636339610224001603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd63873d69241241c2cb663600642db2c7d5edc3fbaf90068e7ced66eec77a7
Date: Sat, 12 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789212633
