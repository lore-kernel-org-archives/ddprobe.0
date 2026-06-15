Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F69434A799
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781537794; cv=none; b=oX8T+Mi99SKTapaHAOGM/pswn+NmUHLRZkIEPfe7eCZ9VOBmEhXloNLBYh/ms1RQmd8hGOdObfq36Kqw24B/MUIqnpWxubL5LFL2prR3Fgtj1gXpY+dHU7+t49331dedCsxg1cisLwtYltOWzj9BOVlwT8KvlpcOrkz5gfB2ZqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781537794; c=relaxed/simple;
	bh=JoK1B4qUTZKj+Sudy7bOAWo84vwFeZmsHHEPUU3oVqU=;
	h=To:Subject:From:Message-Id:Date; b=dBJcFb+ilYg/0vV09EDhdxsOY1EqGUVu6gOYlaKliTS0s7L6txW4Xs7JWPtB8AhAp5bTdi8u9YQDsRGMHGeCYdpWGKBelP5KWIcqqstackRKz+FQuCG9uMdExi67PhqvwKSe55aahMFwIB6+r8SlRceuLZZzUHOA0URCAGikRno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV5KPPo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV5KPPo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B73C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781537793;
	bh=JoK1B4qUTZKj+Sudy7bOAWo84vwFeZmsHHEPUU3oVqU=;
	h=To:Subject:From:Date:From;
	b=MV5KPPo+HZDeJEPifGCrcNTWG/Iv10oocsxnOH/k08wUXfZGTEYKBhRVhbvmLUdj6
	 gpVATaaXU/J2v8pIATHN5J/QjdLkjE50YMhQ7EfPI2Tmjs3xNQgFAVeAALCqSMznVD
	 eD2o/F9vUfbnIvox4MgCUV55n3aw7eIJdWlcxreDuTGQB+auaC2SfPWnIeitZc9E5G
	 TA3inKn60ovD9NpFcqmwWv0FyiKt1CJ5qLEkv6ZTfJ0d3kBM72G1zvuaqPW88AfKOj
	 qOHADroKhq9WCB8P0ryMbRVO2Uf7gpVWXbYtQm83nogJQknzAo0bu+09mWdTTYZTys
	 kUJ/O9u5Fks0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C2BCD98E1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153779374.11088.4463232024487704938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df5c1ad31423f56805bb0d74eb2dfb4e5a253c4735f4b77a9501a9d1f649572
Date: Mon, 15 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781537793
