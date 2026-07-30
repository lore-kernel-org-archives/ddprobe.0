Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A945368D45
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785382834; cv=none; b=CN0uFZppC7ntI+s3g/IUQC6ypwNip3kXKGtyoeiiJGEurom+paMZrVCLmVw9uupxcYT0d/uK8ve5QJolAvX9NQEPCzS7aqWFFh5j2LwI3cU9AEGFvdMup5ETODz9uPrFPRAcZ024Rp41QiLg/yauAzX8BP71dCKTwScM2nqc9uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785382834; c=relaxed/simple;
	bh=uT3C/FGZVAc2Lk3ATjNPzCVHAS/0yOC0IRBEjg319Ws=;
	h=To:Subject:From:Message-Id:Date; b=u8XqCiiOmKVF/o5IFPCKZ2f1EiNYPxDZIrlb8XMXy9h1Au33F02zI96AOulgpAGr3ekbrjV4hKl7N1pQUHq9YYg61G7sPnNiU7YCbHctDvZ94gbPqjEPlvnq38AZ0Y9J2BfSCWVb9OTGVA2xoJ5CwAp7iXcVhERb8rcPdUH/qwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiaxzznG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiaxzznG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A0AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785382833;
	bh=uT3C/FGZVAc2Lk3ATjNPzCVHAS/0yOC0IRBEjg319Ws=;
	h=To:Subject:From:Date:From;
	b=YiaxzznGZamSuejCEWc9S9eG/xFMdRSlb3c+PiEVySr+xbwiBdqMThEtQSrl98zYr
	 FDZb/wenT2l6Be+V1mLtD27VRY8d66MWAyhX/PmNgyfCiwjws8CnkwNmTqr3E7VjtR
	 83Cv1XG0Tf5vONAH6ei5Fw4uqJvUYH5sPqyRBRUu8TH0P0UT8G9gq/qflnzO8IR/jc
	 s+zt+lPgpe9XK/dLQir9wMzC41eV6dmm6hdv10eF01ELMB8mGktsu5l/BQ3aXy8Qwa
	 z3UTIgn0UVJ6UlvthB137PKKSAKzv7IUamqD9I14seI6y9R1WrM0QINKelLi1RkBtr
	 7x+hJow6fWlHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0599C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538283371.18999.5870542045073108612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589efd9aeeee31a50b15bbba51f644972e505f14bda0f9c2d30d497023111e8e
Date: Thu, 30 Jul 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785382833
