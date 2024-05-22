Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0C9770E6
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716354203; cv=none; b=F1rDMNvhXAMBR/HrgSS5wWXo1y7tj60DYGz1bOblX4a/RHvswkBVrkXvL0sq6fykargE64+5gj0UnIKv++l5RVRwecBdWMYCXt7UNgM7i8iUtLE92m6sDFIUZOGFj65ntLKbDMeKVNsG5gRGvKu0WHYZ7QCZipaBMtV28yZ01XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716354203; c=relaxed/simple;
	bh=EVSOOEuzttWJuowe0ONvtOm/VBmlSkr10UDUVfKrXzc=;
	h=To:Subject:From:Message-Id:Date; b=DrGjxZK/Qkm/jcopIQhxzIn7xY8Hwr4EbBNPoozlWHblbr7Md6SpgKm1ybnNlq8am5Z3kg+T/vuVYfONOnXjF4hxewxaxBYqiU8GCQLgBXVyRZxQNMAgSc3nyePB7i85A93E8cKSDAcR0r6Fd3o8xiBZH6DK8pJSEr4QHND7H20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEWB8GrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEWB8GrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE9FC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716354202;
	bh=EVSOOEuzttWJuowe0ONvtOm/VBmlSkr10UDUVfKrXzc=;
	h=To:Subject:From:Date:From;
	b=ZEWB8GrT9xZQvdc9Cl/k90sqh+N1BFqN9tdrJJlOybrWntwL7vXxtrCuuFWI8bYBk
	 ao3GgtQR0QwieNE32NZMczlLyZMIpYjVUEZELKKjWedQWuEDqYbR3fjH/NRW3y7ip3
	 Mk8ckt5SF0VZE6hgwleXTMA7OS+oZgWmYqAT3+L3bTOnS1TdAG37DCbgvLgyEZ8Uh4
	 UV4bNlMx8MRVOxDbb+3C6sriWcYD3htAi4K0OuTaMkJoBg9bv4oH/AXf8vGoxBePMy
	 t8x+HolDWtM46wOGCMwqGSxkvJuGB7MSHsUPAgJmX2K8wKnB39a/VcfqTngQ6+bRND
	 WHlsMOGfGP36g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7E3C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 05:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171635420276.28237.10264748288248277252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96061ef3e0ebb45572c061d0c0e332d93bc01e38c57e3265ce464a1ae1c08e38
Date: Wed, 22 May 2024 05:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716354202
