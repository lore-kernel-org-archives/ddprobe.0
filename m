Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E897E1
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742282394; cv=none; b=gnkNycJAK1WU4K4MZmvlN/D0FGK6wmEX6WFCQuyaOJkDpbLYJTFXYd17/VYWtgHazTuCi0eG0hj3ZU854spAPx4yrk8CvPsNnt44VueGlIIkkRcbd2Ht883S4gGFdHYXY8lJ/0UZNRu+4w2uuK6rRBx1T7j2qUTinKBMDWGXIrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742282394; c=relaxed/simple;
	bh=6hZpyZh6vCuG8lXcrXWdI4OZt0e/N+rpDnolGembpcA=;
	h=To:Subject:From:Message-Id:Date; b=gUeAaeR8boGeWT6e1hD8PmqpC+DpH7I5+sgY5IAI487yFyLXuoNEA8dyrC1BOVWS0e3O0imHm2kkM0TxvMJrjZHZrf5U3nOj96lA/5AG5xlRE8Hu7Zr1gpeMdcIscW/S/u9u6PJ/KnnWK7qW41/O5QoPtkpt8dyxPKPuwwAKi6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wu8LIHR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu8LIHR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5214C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742282393;
	bh=6hZpyZh6vCuG8lXcrXWdI4OZt0e/N+rpDnolGembpcA=;
	h=To:Subject:From:Date:From;
	b=Wu8LIHR8DZXHpIqpHl6kMIYN/c5sC6gKFh1/mhaQr7M0IBicbJAmItciEZWSRqejh
	 jFBLbO1yVwsvx2NdsjK8uLU+oWNj+2SKpHaMOdKfKBghe+KryJ76A07sTxF29yLR3N
	 UVlvy1Weg7dpe0G5NHSOE7iTg2B4YDKxT+ds9yCdBMGLUMArW8Q46cwvpjM7lbK8nr
	 0Hs22JuJzpYcfmVfrLlwe6NX9FCDoI65IkXJ0FOM/R4c+sxgixn3T6GKY2D/tfF9sF
	 XrJf2ocRNQC3ZmPrlmL2NHsd55a7T0vmtxwgcv7ssZI2q3/rIkPgytZKSKv1VbWDfc
	 iIsIxPp7gY/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C4C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174228239368.20836.11049860557560683874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3220afe1e86edbecbd4f2c79dedb516b92a5cb6571b09a2879684689c79268e9
Date: Tue, 18 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742282393
