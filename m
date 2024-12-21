Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9DA2905
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734753954; cv=none; b=vCA+YPeQALhy+xx8RmbJ7ERS+NfsrlYRMffoEeKdsUWOa4Q6rSd46F25yZl4VUrgT8LDk4Qg3ZGUpfaHvlCqUasNI/dCw8kpvyej4EQLelhD6cjmNvTGi+EghoYl4GBhYiM8rAGJgmnCF6HaboZS0W6PxRUAkqxe/UuDPho92KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734753954; c=relaxed/simple;
	bh=1u90gDmQLmFjehRIDZYcKruh5u0nFhjy/y/hw8JOjDc=;
	h=To:Subject:From:Message-Id:Date; b=TmolY8MRcgDngc6HQL5Cx8uhrQmOFQwxekkcjphEi+3S1legj95dyIf49bmzkqCWTrridar9MrToIWtmNzEVJETRQCV+sHod9px6e9pTi5YafUeInSNHSt4Y84i7OdpWVEXpkjAFjtrED6taN/kgY1h3CzEBs3XU7GC33msaV8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaXuYZPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaXuYZPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3B1C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734753953;
	bh=1u90gDmQLmFjehRIDZYcKruh5u0nFhjy/y/hw8JOjDc=;
	h=To:Subject:From:Date:From;
	b=aaXuYZPoLUsSXzm/m2MAXZK76Q235OLtc/3xGt317r+SYzoL/4wtElWfsGHm9Cf18
	 AC79op9cxd8VWlM3ru0qkuVjAT0nAsE65huZJIv8DosQOmL6G/CaXiJsMCFmAf9G9C
	 IZLVmblPcRdYpKw7JaQ2tMpAIFrda3tkbMMr+6ihh5EX8IJ4ii4lAyg1uRr9sZpX+e
	 2IxYuUjc91nz5tnTnTg5elRMutXESd65Zfp7ykU4Z3RuXFTKFh2RIONdAcRxiuoC8X
	 4K8Rm3wasnjhLdIj4KAKEroOfdUXm5LLqSfaDkOFysSBEzZz0mNFRAlbxA85v/DbCN
	 EY0jNZ3hTr77g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6479E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475395364.18003.3075333086601026820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ca611739167e990bb07e0ca9042b171308f9a7849c897113ff8487bba3dc55
Date: Sat, 21 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734753953
