Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9E118FC97
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789874434; cv=none; b=L/GEE9f+pgR/dluWTb2LFUCPZdahqF7HCgLIhOnr2452k+9JqXIeqx8zIcLGFvRn4JxoUgrRdf66kQW4ji1MwF1UNbTLpZJJFIk31i2pV1j7PWoevzza3qXZeGZkBjDliRJdPUJLLkym6igBDoJW0PopMAnKNsgHnByp2fwIvaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789874434; c=relaxed/simple;
	bh=3tfvsCke4qh9lzn2iZoNTxMspGKiDSQStmHamxLiJes=;
	h=To:Subject:From:Message-Id:Date; b=dAGyibcnKmvrAmJEMqaTsr8BVF9f2ArRqod26eZkpis6DjygaKm27ueo15LZSW+kO6dTxKJD6D1Wqrl15W8XfmIP/VJVmGozcq7iyBQ0xIirWx4hq66bakXaubJwEf/1v9k9Q79nBp+hC4gxkoc50Bxtl4jqpQpV6+BZ3SFIr5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJv1TN9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJv1TN9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5DBC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789874433;
	bh=3tfvsCke4qh9lzn2iZoNTxMspGKiDSQStmHamxLiJes=;
	h=To:Subject:From:Date:From;
	b=JJv1TN9g9EHJZ8+w3LUsBGOedWPD5wAOThvj0KOy5/3dcmuzxjUksuEj3D5I7J2tI
	 Y2U1Vos7xzG5z3FCWvfvubtyBiUE5911t6t0yahcTtg4nonQfhVKdnvQLufDQM+HSo
	 bPbcJqEnLak0ye1a40eqgXsycH9Ydc/t2cgJ/I15HsTiSbezg08W0VSDlvSWKAQaow
	 DXPG/4PQPB5TmytcB6Dr9JE4KnIA769pzHGJN8+4lPrfm5C1RkvVPe8DY3faxDoxAN
	 H79YZLAJrKZnS8C2qUStxrNblQBfF/hyibWsEeCJksZY+WBKjeFiMyGZz9FtJQ30CP
	 /96Nzh7xDTXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4C2C982DF
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987443369.19911.7318198766345680511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6bc916532ab414e1fb69a00626b334dc7cc0447c735cb5c413b7c614a340c79
Date: Sun, 20 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789874433
