Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497C63E5EC2
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787220634; cv=none; b=teUrDbvCkAFzFiJAKaGm/Ki16enQWtkqrGgkAdW/umNDye5WQSK/fav+aa54tArLuMWDf+epoCltwnsHsDHtKIkhsc3S+kmwlURapdAVqj10WlQhp3xt0M9kKnZuU0hjM42e6FCla3jjQjUOe0ZILn6D7/TKt6rPOFOcXXqJJ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787220634; c=relaxed/simple;
	bh=ii3WQB85wgZtGs57oyCqNpZ+K5SyctFzbNWi5y9s12Y=;
	h=To:Subject:From:Message-Id:Date; b=Avy7qbNDkjBz1917MwZ54kwAnjVbiwfi61So2/AEUm3S6ha+/0R+sy7k2bhJs1CzBKNZjCRU7b+9pJ6lzyU4bwE059MZ7u8lMW+3gk+PXxtXwoCXKDpFMxzyQTKi3SBQpSQGhvtHhiSG2K4uR1hT5GleB7sv6rTrtKZyeIrTcbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPQf0ths; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPQf0ths"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FA6C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787220633;
	bh=ii3WQB85wgZtGs57oyCqNpZ+K5SyctFzbNWi5y9s12Y=;
	h=To:Subject:From:Date:From;
	b=lPQf0thsEiFGD0qSzFWhsTIMrIAr1hxGrKc4CdEFoWJe4qkhnM3C95Vbde2nVMoGV
	 t+8wusvgTx96TVImerQxWk5G1F4Vjx5GH2el36hPYsWT6dmkushtot6j0JfFTicPsb
	 /yqpHzMXJwX2zDvb00MmeZyhMxeavbdFV2zIEY7Mhy41xzI5R9K2ag7OAvO6qBiuah
	 QV9Sibov9por8/KCwT31e6HhpMqO/PN26KWyC8Y3UqJeBYSBCwBJzh4VMdg3WrqHxo
	 oLKZSixh8LRyHV/z4aEoxuzWYXxPhEwrtyAf9TZwD7bf3ULU4dwKheJwfDMUJr8aVZ
	 DZT3j5YmsyMEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC0C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722063369.16585.18029646700296357880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb906b1e44a77c91257e5b6da7c4bb728632754b01f3a20406147c9e3308b6b2
Date: Thu, 20 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787220633
