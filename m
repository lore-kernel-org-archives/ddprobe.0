Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3924E1F60A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734764754; cv=none; b=aaA75D2rMO6YGmI06OkQGRG75y6/IkD3dTntqTmVwZJqlpXMFzz0q2PmDOvo4i9+x8LkLJRgfdCDeLAifU2jsUqooXNWkRi8JFv2hGCjZNSQ4bHZ3npmiyCVLCrKs/wnRgMSwsHu12Lmi+a4jzfiNvcK6KVnMm6XeWajBbeM3Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734764754; c=relaxed/simple;
	bh=Tv6eoA9K2ZzSA0EYfs89Zt+x9ea5svBX23vyEzPex24=;
	h=To:Subject:From:Message-Id:Date; b=VZjxhm881KMP3oWt55K8Q40TY2RB/fsvsGbdEv7DCWzkUQw/Zuam+IbybhPT2TebI/a28F36Zibes+AogcehAZx34fG3KNSYHIq7tHhyEqDatswVgzEacqjM2hHYBAd1OszlqdCOeoyhuRygqAJRssM/dpjzk46Zp5u11FrvVNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4/+p0Gw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4/+p0Gw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB009C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734764753;
	bh=Tv6eoA9K2ZzSA0EYfs89Zt+x9ea5svBX23vyEzPex24=;
	h=To:Subject:From:Date:From;
	b=e4/+p0GwHfncP+nA/qEY3li8i44W9vqHDrc93vFQrJhLpKDAOm7ghlachfOW7KOln
	 40ZhoIi2WfsDAL0ZmRMdEVFMSOD9Sx0SID4ePXNOw9n8HqrpiJJNPbL1zw4pZzjAbe
	 8DLoTch5aVnKMV0wgwXnfTsKjUcglNqf8FbRkPNE+HI6GW3U1HkYeKacw80npux555
	 2Zglob4hSNevKuY8kQVMTOYisR0G6cLZ5S/ScS8Y2CqdgFhoS5EWkVtB94zScDrIvi
	 hDWiGoGvmoI1wcM5vmMaJXN2WjKbuRA/2NY6xUAU78xBvv7F2zJKrq7XMZpv5QaKDF
	 mT4uN3vw6hr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A09BE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476475362.17231.13492171943886623040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7555b4e53cc17cd0d56d3963c8dc99b714f6137776a7afc106562d9920714ca
Date: Sat, 21 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734764753
