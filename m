Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C0A1EA80
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724507754; cv=none; b=dhNdseJGDPeBazBhkieYfcy8irt8nlO42hjHgW/DtabS5fEtsZU+hiBNkw+ujPBRepXJQzMLyx1B5XyjCetSk1g/H4vAApwDUR1mj6XZsVi4LX0BMAmZKQcdf3wrRY3WUKIpDR5AwC9hlXCYTvt4ov3ZyNP4kQe6H7Wnf1NqJnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724507754; c=relaxed/simple;
	bh=ikMH66jwMcLrlu47fkrGI0A3GDMTcbxBFoFz5ml6dTE=;
	h=To:Subject:From:Message-Id:Date; b=ASRSSCYjW5m/+XhwwduDrhLJrWmUo39Ky+G+PAIm7ps9Z3lgQGowv+7g/tr3xz1O7Oy1zdBSKOziZ6GbGAEwDdWH+psChoaWrk5pxLZzC6GWACssd3IyrWXG8L+qAfW1YykDFoay+guDZgDxrC/82a/11gSg91IRNkuO2LYo9pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXIBlLnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXIBlLnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEDAC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724507753;
	bh=ikMH66jwMcLrlu47fkrGI0A3GDMTcbxBFoFz5ml6dTE=;
	h=To:Subject:From:Date:From;
	b=GXIBlLnZ5iq7glG2esKDUDwn7RhiZazJGodncFLRXs4u1OzEwvYsFIS0tG7RP4HwQ
	 iXiSD4tyv5UGBjMS50pj3VR95hL1W/f6OFj3aKy/2VeXPjc8MLSI+1ZgU5F+pYDSgB
	 nBfvHcyFytPshwHggLtADCOqT4NPFbdBFGIu5Jh7XIZAbDH10icPK+Jz/bDb0dq50v
	 DAVGRlDal5y9hHG5JQTb5Wp54jOFMPPRPUEm8OJ8BByK35mVErQ7zNCZsJYlRdFnCr
	 Vk+xX0s1bPyt0DhQhQu50VMGXh2ilddTKYHLtF7nLoyETGQR8CxgLBsURKSwnGYvgq
	 i8nDQz+o2INfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B79EC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172450775359.7606.8635097292457277141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e4b16cb0dc24456659c6014dbe368cb2fdc5494cbead7fca3dc1357415677d
Date: Sat, 24 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724507753
