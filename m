Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2506128466C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755720594; cv=none; b=HoeLAVptw1e8r7om/6O9FwghZRkvSHS+Ssj7QBgoQJYDHq+b5YNsheXKBvIwa2Mr//Ejdq3W8dV5ZYT97CamO4+RJnQwtyxeaGl5jXVQ6Xt5iferDIL/D1zgZZo4c16nKXSqEfTvAnnreffyNAXIFHTMARClhWXRLm+f12SHhEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755720594; c=relaxed/simple;
	bh=NOmpd8jarmuvx61DYW5jhj3h0WKv740woaa+Esbg1P4=;
	h=To:Subject:From:Message-Id:Date; b=bjGBqsttrNbTyToMOXQwsKm62+1FyiFYdp4brdH4VQQ797YMricquzSsYFOEA8WT7d44wH6rPEbxbhaWJamKXgYMRMaA/22BoPD1JPairg+KOky3SvMgRXxvbz6x701NG1LyXRR+oIyiWJMIWPjOxOLxrBdtmTS3bG7JVRprn2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaznyZ3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaznyZ3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF29C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755720593;
	bh=NOmpd8jarmuvx61DYW5jhj3h0WKv740woaa+Esbg1P4=;
	h=To:Subject:From:Date:From;
	b=EaznyZ3UmFXE7HwIVIrj79JlT+5XZxVNEd8fpaNh6eJS5ONToIHFHnCgQyHybGmmx
	 d7ukKPlSL1o8ywY4D9dy+gKVVRzoN+4gFBPCOEnXB5XsE05hMRPIKdVJ7V6WBnGsc+
	 rGHuSBBhHDZY3TTF5gPZM1wrl4kngZ6hpSbqR7KdvW7slvw49zpX7btjSOq3SokT0i
	 NeDM4FYIvk6GVSu1OuW68fXncwk3gOVicHbGV19WT8eoQAg8N6ROLlBAjdCCAWaJgP
	 5avnEEhfpmwlta4tyXu9DLlUG982eKHPflnZBcN1Jq+gjRF0rYHD7rFIZXWAztigbx
	 uibyC7HNymAyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBDCA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572059358.22392.8761670279035200954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5ae7eb02edaca1825c4944662f561a597ce0c2323d5ef21905b8cd2c222def
Date: Wed, 20 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755720593
