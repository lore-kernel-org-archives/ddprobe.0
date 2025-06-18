Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAD02EA75A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750261194; cv=none; b=NTKxAuGYd1Kcte98GO9+1ThzKflpuH5eGptWejD/74JunPQnPmr9/+MUppK1SO13VUIxF8UUOfb8hqeOHVUtxf+rMqqvq//5y0C9btk+cK/bwryNMHqB5bBpDRZhwDNUN5iKt+05BuOmNUOwILoBse+09suVHmCRIQve61l4vdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750261194; c=relaxed/simple;
	bh=MVrIbxdFBw6DeFWmkU/yuXt4H3MdIkCOMsINt2tY930=;
	h=To:Subject:From:Message-Id:Date; b=Er7TKrNPPBqamyHHQ5jdyeX9wZdlXzMW4eu06yxGeCdLdAyO7jtDxLTF5pJhvbsL++UVpRbIXJM3JkMjDLdJaSbdQdkrlJrhbjio5zpNaGvIfGRjghRDl6TxAyd0hj7TREs0Fm/bBBrum/V9xyYocGak9dOMEgO8agQWRycjMLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEy+SPCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEy+SPCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13DFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750261193;
	bh=MVrIbxdFBw6DeFWmkU/yuXt4H3MdIkCOMsINt2tY930=;
	h=To:Subject:From:Date:From;
	b=qEy+SPClxvPCeMJssu8Db7jXMRzMJ8UZZU0Xv5mLNsIEa1zdr5lH2rdZhWKmcdTaL
	 Gg0B4kBZwmQn5Kbpj+4Z6jS/N3lvyr9yKRZ93dEeFzpGWpW7Q9ZlYy8SK24ZHLDdE1
	 9HN0rmwbzaHNwRjGObh8JmsF7rHTJefxeuPVGfc/O+aWzsSIyN63O3MBMeE8nJMVOl
	 u+mYVbGPscP3vxJZlY49HPazXQOIx7CJR7uY2UZfahYP/QdmilQAn+vgEvPiPqtiCr
	 weae9LUfUnThuMtTZbUzx6RUF0rkwwD5ivvuTbvJF14X7D+3S6ffO9t6rp/cj835mB
	 4dfe0iVYP+BVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C0C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026119358.8570.14452995739468103503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9836577ba67f4b7bf7de0d5833f63b2b67817c03a902502a00b5ef0b9658d4
Date: Wed, 18 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750261193
