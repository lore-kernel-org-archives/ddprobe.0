Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3187618DF80
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754111394; cv=none; b=buTGtPsYJO/XVO6L2jjNHvcqUrGfiME7LH/xGgeD07vFOpz4XIuMoiVUVnKUKxzivg6kmizGjOeMoXi7mNUJLoPy7h00mCWsI1IBGD9EZ7nex0A/zJi0KHMRReNdmWSKaeztqpGGvJVngtgnwNX7vVWyPGE94lLrwDd+7bCZ8gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754111394; c=relaxed/simple;
	bh=8W3fkG78I8rRDVriIMSV7f5ej2QRQ5mJayymjZHbf60=;
	h=To:Subject:From:Message-Id:Date; b=qls56lB0KbPx94rhOcCVgr9OhQG+Yn55DtaorVPgEYRW3lPt6V3dCDLG/zNeZJXUduOEjsVboQ2q3i+ymuQfqLQaf5fVPvEYF5mK4O4YB3CNXiznm+KgxvIS4w1O/HtP0ACQgj+ibDSkhYrbqY1O0q8olAd/fPObvXj40rwWBiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PR2q2B/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PR2q2B/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2535C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754111393;
	bh=8W3fkG78I8rRDVriIMSV7f5ej2QRQ5mJayymjZHbf60=;
	h=To:Subject:From:Date:From;
	b=PR2q2B/5vB7PXbZCUSVgLB9WLxtvze+R7wJiz0jUI9G3fo9QE2yPR66wnm04f9y6F
	 +brvJLuy70WD9pMG9x+7+dTVXcKZ/qGIBDB6zXj+3B/y8l2yoAR5eLU4KjRrGiQy/u
	 Px470NMGmlbi4hMJymQORBtLAcG0hP3IK59EUAuk6kfFDjHXlE+wqQOPKxmeZFh5Hs
	 /q715XmA/NsDXtbjm5rfIBasqwn8gr67nbZwMJ7D20/z0MKbR/WQ/ceuYgw1u0VeFX
	 tJjakgdu8eBhrs2pr6BqYLpHBrRWDheHRyJzoj9Qhc94yBuEnfKUxAlGl70FKjtHz+
	 UvDyREG1+F7Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3FC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411139358.15311.8776240519170158112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12bc226ff0789285d46bcbfde8d315638b66a63295c3859b2547d15186f1db2a
Date: Sat, 02 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754111393
