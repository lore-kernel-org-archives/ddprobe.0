Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B281F418F
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751702994; cv=none; b=NuwdmQTgh50CASYMedR0WSmA4qySUnZTpGlBmTLi6wE5cyRZE3c7EBiZZMHSBZJAHU6gfTQWqb6PoDIoVgFQQZjziIS7fQ4kRagH4+IeGuMUHS40fnCrbIC2eOys4cDgWHk6hjFv1ziLdlPzZ9FpWFvCBo6kzbxOiHXSSUQo7wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751702994; c=relaxed/simple;
	bh=Q/Wjww5HkYICrLxF7O3smm3RbOfKOn/vfsVM2UDL8T0=;
	h=To:Subject:From:Message-Id:Date; b=AlIBo2ESPX/G8k7mjEcmu7Yi9Px9jTi5W8dN+C5uuKbWA8jQQUaLsttMSDzgbk0aeRxf5PGSi7GdRnZ3Z06R0M8rK3qQ0sOWz7ubUmGC9s2dct8TtOpjlDAXq/Vy7jdis+ZiFPkDafZ163OuXrN8cs1tXiNdGnxbxbihuk1/pVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ndgr1GeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ndgr1GeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751702993;
	bh=Q/Wjww5HkYICrLxF7O3smm3RbOfKOn/vfsVM2UDL8T0=;
	h=To:Subject:From:Date:From;
	b=Ndgr1GeUrluOQ4p6WEeOJpbER+yd5PAaFLqilH6RawCuuNQvXvGx5a5BgknKuUmzd
	 23RJUWyFMEKQ6TSZWjF/DZNGwUA2IWtmDRqVMjyeuqaMFDzzjN4OhuPRM9dLAyGDxL
	 e4oK3ORcx+7sg4KSTocxokZdcVIdjWRtzJv0/ZUMpjb0XGUpwP67wZrMXW0Q+NEq8/
	 ZzF5pyEkAbVW6NdRNtgzCKUUpC5ybNU8TN7gLR7mMp43i5LafZvD4YEFbwtiAWt46b
	 1f/XuRiuzMyfJNKJRSQIfqr+W/3ote29bBAi0t0uOU4FvL5FOyIhfzQlvWl0u5w7p0
	 +opr6f56Gge6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A75C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175170299357.23206.8501689523812055642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b6f64325bb6e211afad2471aa52c5744f2ed366c8210697c9a3c1c15334348
Date: Sat, 05 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751702993
