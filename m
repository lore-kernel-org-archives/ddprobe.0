Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E03C25EFA0
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741707534; cv=none; b=OVfkYnUVqiRgpceBSHtUrYEyJnA7Y4OyE1tI7fNIIYFIM8LoSoYXYiJNFeetpD/9yIiQxK7Lt0YZngJDtxzthc/oiITNo1pfbqp0AB74XCSdvmxoGWXMAn2T3YyrMcSyzI8ahCF0g79sZPTGOEXJQqrZuIepDRhQgNOiTQyMLJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741707534; c=relaxed/simple;
	bh=Phu+Iroo0N5C0G5koLbjF0tyc69QC92bOSczpB0QyJ4=;
	h=To:Subject:From:Message-Id:Date; b=XBx0hgRhBgfTELoA6CCPz3rznawmQGCSgeq+b40zrPvsni7YSUqd8CqgOmmTwzhYAPt+2Hi4AyMuk2xjcbmabWimnUTEmgFqYmT00wMd13rczxkn9pM/76cx/NIO/myV+xmWWV5HfvD6ALAHBHzrEcPJN/eCYZxr3I6fkQRSObY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZStHX9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZStHX9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6276C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741707533;
	bh=Phu+Iroo0N5C0G5koLbjF0tyc69QC92bOSczpB0QyJ4=;
	h=To:Subject:From:Date:From;
	b=BZStHX9IAIDTLQDz9EMT6ZarYEv3VNZX2Z2PYPaYExj285KHV361LIh1DW9Z/vDLb
	 I/cngDDM9OjoTLnVKvM2r3v8h+nlq/N/JGDdQPPXYC2ZxwKxipZG2uLM1GY8m8Qry7
	 bLvYSh26pxrIfzldhijAtuxvbpqopwvsDQnBmDSND1HJ2CO4U+R1capEZ9MDbvH+dy
	 tF/uvaNHEFr8QJci8ieRoN/alAMnHylkBYGQiEb+M//bq8iNnWejdGOSakqIYA7iah
	 p6Ozc4U2MZ14O6+hNPj+re6RHRQjFeC9SNRkcuSqllw137/l3mu1oFfxMCdCqkuya/
	 ufGkDAuY2wgyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95126C28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174170753359.19588.5812548778685656272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa532229efa15c0d8e13f4d32b9420fda14e3fc25d1bb680af40ae597510fc0e
Date: Tue, 11 Mar 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741707533
