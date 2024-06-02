Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5289729CFB
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717320923; cv=none; b=Vpv+fasW4qOdyy7azfjDFNaJW151rlOJ3KNL9EeY2xElgVNxc/5VDLHWZb+fNWP4V/2lcqRUVzBcMs2rY0OkxIKdiKEJrB2W5hKqX2Ffgu+S0Nf8UocbBuVYMMDgordhc76N/5NLM+gHxzbtXuy9AKiT9FBWKMEq/QNttIdziVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717320923; c=relaxed/simple;
	bh=KzjsEt6+DZbpXLobwgrciS79vq3hb64gCcP+KJ4YBZY=;
	h=To:Subject:From:Message-Id:Date; b=jzpRt2L1vyZpg7f8MTVwpSygbD0sDLj87k0tLxwreuHzeakb02KSmZVgXjwX2fuLv0MT9Dm6oXBqlIa+QmJuHwYWpzLYnFUSKTpkIPUz0ywblvz9GyJNyHTIrdsTRn3WqIzHD8KGo+1ueNbcuUce+umWIbRKyUM5OqZce6TFSeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFl1bv9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFl1bv9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33FEC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717320922;
	bh=KzjsEt6+DZbpXLobwgrciS79vq3hb64gCcP+KJ4YBZY=;
	h=To:Subject:From:Date:From;
	b=DFl1bv9LGH/N8WkCQyR8e2Ieo2r0tU2HPCBI0uCWlVD8Nx471m5BnIjOT8iH9yxfk
	 Ko405BiD7Q7fCT1p68SlH9dstpS+5D2qEc9APHsZyv5wuKhTREI6E69Jb/CWnirnjd
	 O5DlEMWeLIAOAjeYBCuV9xI++8gYqKis6q9fb6CMwVir54j95I9sVbp9J2Gf3XZ/h/
	 ePENGaAaK4KlzHirYC7hSRcXUYTBFgb2OXqC+iPzqLAgW2U9KZO37xzlhkiTGIKTWD
	 Su6QFE06rqYRMeAhsbUD1utQT85pkDxtPFqvpuF3GYH+MULZyc8zufAb3c6+Hzou/H
	 8XFWyyIbzIqsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2118C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732092276.26846.16599046846892500889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc6fcc0384a3ecfc8509a096575e797d30294556c96bf55df184c9f8d0f060b
Date: Sun, 02 Jun 2024 09:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717320922
