Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42B61BD9C9
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790172034; cv=none; b=qWxyAcp+FB/ot4czgr88BzEXCGywTGUNkeXhEdIoUzAkexQYnXTyPS8h2OpqfQad5blgBl+OW8gnPgdDLvvUNwd4wexYcghJDAfw4D8EkBxA04R4zov4LiitKJNOmDQn+7KkcnCzdgKeY8KhSBEozN+Thd7P0ryHiLdsdlyUfJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790172034; c=relaxed/simple;
	bh=Nh4ufK0gW72sIwod4QvF8iSDaB2QDsECv0UOzaPuIW8=;
	h=To:Subject:From:Message-Id:Date; b=rhN96+87PtxnYjLXPaTUIi7z9WB4o7/QaI/GJF5mwcyihlx+QKvwdjjbIXZ8CuAXdPG+FxOGzGyqPkseSdNU/x3OEeg+eLBB8iPSQqxczih9upere7I+7/2PLjCwdAUkHW99JnXHTTAG55VCMY3D56JI6TQsx6ArEOD6ODkrua4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m27h/C13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m27h/C13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5221C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790172033;
	bh=Nh4ufK0gW72sIwod4QvF8iSDaB2QDsECv0UOzaPuIW8=;
	h=To:Subject:From:Date:From;
	b=m27h/C13WXbPSD0ovIy2/Fgkz78AA6TQJIG9yOlDYhTSqYa/RiWhKotF5d/9CsPip
	 Web6WzgaKeelXlh3h814VGamwPutAy/IJNImJoA5cRbVQqVDdMf/zTp0n0Ce0ht9CE
	 Yi970Kfwto2HSc5V/ORgkp8UcpCVUyVVy2ARx4ejT16WuX+yG4U/rPxm1y2B8g3tJV
	 3hCi9HuKMk9Yzg1s8BDStPNUOUMHnyNdASepmNnKBA2pKZDRCiQud1gumMttIV3ek4
	 bBWn0HucN1IaxysPrBAi3TgDGAmpKHGuYv2TSCdUBOELTLU8QFdOFtSM4x+Ikz1Vin
	 yrMQ3E2XosmJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A48C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017203370.20980.17244783085827077702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fb3d528e905fdbcbab253cbde1e447646272b2d04ba015dbff643bf146b7d3
Date: Wed, 23 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790172033
