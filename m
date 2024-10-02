Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1959C31A89
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727847354; cv=none; b=XxdiU419TFnWPFk68+NgvOnewFPJcvzkDYYHPPLV6vpYO7N119V1IcmuCfr7XJzi2d9/p+R9tmdhyDQovf+UicxXKOSQSVaIPRUQ2BW+0/9qhy92LMdpDWVwbwogkiXcrZTh6Bm/7Vj17W/dbL6DjBBFUyHyuJL3GAdmOpT0Cq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727847354; c=relaxed/simple;
	bh=5VnUFSioHDd+amv+EgMQegBXZT0iWAYIvBqNvHBxWpc=;
	h=To:Subject:From:Message-Id:Date; b=IM6zutYQhC5DKOLEqDa3GowAIkVQx/QgArLbqVO4CqXBOYJ83qd3/Up5zAckmDDdm41IcnkZznjbK5h1pPQPP9j7KhJZzj5Hl+5yhJ7xBhINdDYNWRDXZEuQ8UdOfT4Vq/mNaLF5J+Uw3Pl/NbGa8I7HEpPDKocG6YloCMKlCv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2efkKtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2efkKtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22B1C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727847353;
	bh=5VnUFSioHDd+amv+EgMQegBXZT0iWAYIvBqNvHBxWpc=;
	h=To:Subject:From:Date:From;
	b=D2efkKtGZ+5m5sg1JQ4q9hXTgKWmtrRntHjevHQioNIaC7fvGs5/luwHupMKieMN0
	 KXOE5vvJsXZvDOtuqtpUXbDGqNeWifHu83IV0i1ZzHLYH6DJ0cyp9sUvaruP4+lqqM
	 eYEhDasNQUXc/wLjZCGWuUr4D1jhIpx66on3sU1LDtQf4VQw3uDm1JZrk5NvpccHcR
	 eVdeLGhZSnXPdIPyrqz5moRuWNO+JYBaAkJ/G1e3EtEkfC84NXJEPvAubvrJq89Qrc
	 iqMuBnF+YJ97gblI3ApLSnNKTRJncDyYWEx1arYAHesdjA4dRELHCAC787PNLvaz5R
	 OZxkfbxYlU3Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9149BCF3194
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784735358.26380.16745331690873686826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a106db24f4c692d4dabe9d15570c755837979e92d0a160a75c832e75fb9d0bd
Date: Wed, 02 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727847353
