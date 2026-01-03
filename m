Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C667202997
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767467034; cv=none; b=U0aYK5yfLRh3dOKARe389+IUAPF/QE4fIKneSL/gEqghHRxBygqPWUwic21o/3uC/o7xtAWufToZPAlY8R70RIUzp/652DpN8mO6ShYWIYYW4ro+0Nqij5JdV2hCP32FYjzUgn1UED22ZgcVsza9DVTR1f6HO2SNPz15FfgSvE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767467034; c=relaxed/simple;
	bh=kw9FG1G+04GxCulE5e1q/oXZwKfXVFNH+94i/7xxsao=;
	h=To:Subject:From:Message-Id:Date; b=tzHXJbSkLVcun3eP8S2yigl0Eo8f6/dtLW2CaXCZsnu9NBFDElZPUO/CYHqKwuEth0ZE7KXgkujvOzVnior3zyNFlokTSusuwCX5S0OytMZORJhOXDSxvf3jvRKjXEdTN6maBQzVlTTZKYK/Ne0l2DTEmkwQT57xsp+IcW56eEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUcRR01a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUcRR01a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A165BC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767467033;
	bh=kw9FG1G+04GxCulE5e1q/oXZwKfXVFNH+94i/7xxsao=;
	h=To:Subject:From:Date:From;
	b=FUcRR01aI4J8ChHidutedebxFBrB1vQE6kMYUSKqONr3bMly7zlVrP/7ynu2wNI59
	 B1LevtPI5nZKPrDCCePMm8RmMmtoTuf7hoSfEaimKC+wMkadXmpzBDIovocBJQsmEU
	 Usqgd2Odc4dLs6esFEmBMjaxtEN84tClvRHKr+ovFd2jX4nWHpAlm4UpKdzefctXNq
	 SCKEqGcKgWLcNagG6MTx4zyOBQ87QJgnWT+ml9aZz+8O3O5Z7N+s/qBtsIY+EQzqUs
	 JTazHt5jqXC7erq78E3GqBwYFvnJ08JFJPYtXLXwN7B87rosGukx1JEy3NvDM/JI7+
	 fOY8wnaGuynjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA2FC6182
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746703358.16860.12491159008163577339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4391d4f7631ced1f8adea7b1206410152cd360e10bb5ec19b04fc30e776c72c
Date: Sat, 03 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767467033
