Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8929C3939C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785661234; cv=none; b=GnmDpv6e/uIiNazY3M1hY0jzYZU/Q7fH0bmr2CIFb4Ntxl+RGUhHeRCKEyPCfATrNTiFECbCplFlWOwAo+v8HNhp/VbeMkm6hk4bcPI/TXVfoDXzyQLTnROeBrG5EGp8htHrwLiO54DgwTQGnZc5D2UxQVbIiXPssdpwctm8hSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785661234; c=relaxed/simple;
	bh=Jk+7+TuLDSIEwyoHuyXBSXzX+Gl6ehe/c74pu8GKygE=;
	h=To:Subject:From:Message-Id:Date; b=bOKTDHh5nidjsiqOiWb5QO1d5OM62WAPAtRHN8ANjaCOUYq93D/YBoHepnK8t5BwoVJsUSD/dHwEPvRQCDDWAXvkKMg7MNT/mM/tIaHfn6Pr2KwJJt9szCv+dcRIiqNCtZFqxJv/PErvPCGWP/6/6Vm+yBZTn/p6QEM/wmYirSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Msv5B2ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Msv5B2ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04F6C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785661233;
	bh=Jk+7+TuLDSIEwyoHuyXBSXzX+Gl6ehe/c74pu8GKygE=;
	h=To:Subject:From:Date:From;
	b=Msv5B2wsicVhupburwPxOPtkh43Bl6QOcGZvoxN8jFpcWTRYquuQ3RQ9z5ehYSFNX
	 aEpy8fyfIZbyBPTKiJmLjImPxjf6bVQjtf0g0QgqeboR0ohnqiHsaUtdPxSdUT0Y8y
	 XDkqWquvqsRXafnqO8ZtAlv1iUCqD48xyi9sXwiLljajxYBAgnnrKitdLW90OyXrxv
	 pT5P/SJOjMLj27f7Kx5IgZL48CGOms3bMMwNwhl8fwJZDJ8dYZJKP61urRUgq6KQtz
	 NGC7EaA80/b1njlB0Vuu7B9p1naO1ZgPNIItnbfJMcxyIuc/mU1DiFC0Cfb5ENGDcU
	 AgBgKCGH0LDgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB424C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566123368.24826.8075287799930396774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7925d7a7dc288c44333b8d005a9f53d48d13a3323b18cf1b33dbfe6aa61108e2
Date: Sun, 02 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785661233
