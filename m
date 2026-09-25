Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79384D8DA2
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790361034; cv=none; b=ueccRgA3EsMl7AQVcxRDqYCHsymjR5yToY1OTi/O+uYHIaU5Wig7Jusfj9C29e0uVRiW3G5TpG7G3OFHYUhwjheUPOgpWTb3KkjJeFd+DrIMh1sQiK+aos2e+io18LkeIB9psCucS/8pQeLRgrsy4bnkXDTmyxCzRGTm4GOC+fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790361034; c=relaxed/simple;
	bh=YbDfOSDBHRRbpGNv6hCN7pCrM9d+K5CZKEvJg0kqYQ8=;
	h=To:Subject:From:Message-Id:Date; b=PBTPPg/sU/IPWWvLKZAI+4/s0NRHM+haGWp289mgp24UIQi5C9PoEBhI0YmRWkN3ZaaQVl6voRzbmlxPwIKm87sC2U0x6zLOrFzI7sW41SHa2EiscNil4krtOqyb7vVN7+94oI4z4qNOyUG4QcZgZYXT4Gw3h2PhVcOCLpQL/XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJwtPqEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJwtPqEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3965DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790361034;
	bh=YbDfOSDBHRRbpGNv6hCN7pCrM9d+K5CZKEvJg0kqYQ8=;
	h=To:Subject:From:Date:From;
	b=XJwtPqEkokG2zVBPg9veZViFwxAlb6CxK3tP5N219jOMJBpm7kiETQ1Veb1vW/sB2
	 ADkyOhrSsbWtkxqmGPrajOTrNCkXOWo3LqHQlupEj8T3LRhingaHNWWNyuPu9/GqRa
	 rkflaQoEpmCVHL7q3NdrRrmlADJSa8gTGSjUo3nNtfoN54tP94TBPcctL3jUNk7Hg9
	 v1IR3ulhDIlqeKp3MdFOfJ5CQRsiTDlzXgCtKKu5jxk9dTzVb2C7p0A2lv9kZykbGW
	 cNhY7SXXmBrDq7KYVitOFvg1VXboXAJOE69b7qYD68s0gt1FCc0TNdZ1uoBa6oRhdK
	 kRYofIFVmY2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDE23C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036103384.23966.8999151201650944631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a8d694c76ae9bf60623ccad670dd2d98c10c3a587fe4e67ecfbbaae8fdfc51
Date: Fri, 25 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790361033
