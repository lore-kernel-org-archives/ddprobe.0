Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461A717A2FC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780860274; cv=none; b=fUHQsnyjEAKk4CxjP3GdenPhTAFDVQ6FUqGWa1tlDppaT33/lkw4Rqm+Ldh2AlirmgIiVPKsO8Ssoend+8Z7GHRZCCHxfqoeI5bTdd7pAEdUvt3NtuSMW1+OSmM6+mnP3iqagZ0QE+7nqBB8g9DhnD2YsvoQl3tyOzN5QBTFJrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780860274; c=relaxed/simple;
	bh=FvDi2wAw1I8mFy9OJoO8bj7kAbTZGu3Tguo1Bmvrmkc=;
	h=To:Subject:From:Message-Id:Date; b=lnphTnnCWtajQPl5hIiQEuwn4jn+HBduuJJCkckc7brjyGEXjBdZM1Gqh3pPSeVSDru79Iz8gGCK5m5xs2ZGQ79DNC3XC9EE5k3k16E2TLyoF6e9nvaPGoSFVVTvfONI8cI3Om66M3BII/LgAyE4mGuHlSXw4ME9Vo9q1jr4nmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlmnCQmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlmnCQmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D060AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780860273;
	bh=FvDi2wAw1I8mFy9OJoO8bj7kAbTZGu3Tguo1Bmvrmkc=;
	h=To:Subject:From:Date:From;
	b=WlmnCQmY4TJNlWasTNG8+BI/TMG3xFIcUzZOjVsCMfHVGCyG03wi9JNajar+EnuFE
	 7CGBvdlBe5dOrSkrIDCPjEtI6eAoDwpelBxURmVPROeeDqYYa7cOSrzm0u1LZ68YjY
	 BYQTFh0bFO/psOZSqb7uo/OTOzoAGO2fqI8GZc6SvQ25lwH56aq3PCjUC99Z+8dppv
	 G6QyPaEeLl/xOwxzq8Z0pnhQ2yLcWpPmB3xrHgDt/nqDhw8PGqpEhIBC6zL1f41Vh2
	 4z99a2tA08NH7hrBwp2CCTgv8RXga5RJomQE+titvTaiqOj2ADX2JslxIDI/UT0M2S
	 ytUxdctzWYJyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE942CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086027369.6183.14316797188321861312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01821a0e86094f7dbf28f9d55b7e40f2755e62d00bb1b6a92457953f322cbe86
Date: Sun, 07 Jun 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780860273
