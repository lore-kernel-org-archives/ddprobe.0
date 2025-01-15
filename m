Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E21B248171
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736934954; cv=none; b=H+bNggYdJ9yIDZhd7U3PdeUXfFp5TC0lsvXbPF4+WJrt8eDYHb9sQBXfmqkSGRZjOfZ2IOMW9P6Kp5WbOS1K7vnR3Z9x1uwVYGZZvwrM2PmLkdQGPmdUCq8mP9Zk/6iIEL+iLvgjkd6IFHHXh2pJEcKjus7bIJIj62xL+s09tDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736934954; c=relaxed/simple;
	bh=Gfcp9VpFGFZRDYc8avOgHFORNbyd6Jtc+xdrwuorsVQ=;
	h=To:Subject:From:Message-Id:Date; b=MZszp0DzZOersJI1E9KWGYmD3jQNM0mqfm+vesokbP+Sq8BKbIb6fUJafdfucdItHdmdLAVlbgP6Q7FHr/tncHaCdr53pMBj0+FhYmXMuezqd2cEhQOjCJIvO+6Ke2rPvQ3Wmmnu7tDwT0Cm274Inr5bV5Ku4IjbuQns8FOSbU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuQVctfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuQVctfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FF6C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736934953;
	bh=Gfcp9VpFGFZRDYc8avOgHFORNbyd6Jtc+xdrwuorsVQ=;
	h=To:Subject:From:Date:From;
	b=JuQVctfyE1fZTYWdf7BxYDrqAna7ajKgHowmORFmrybs0wLnzh9dpnarOH+QUcDNy
	 btgGZYgPyxwSora4sTgWu4G7ndSB1vK4DAIqU5gVCT2GZZ03Ooz6uWSMDT51wEmpHt
	 fdiHjQ7nRUddBZcmPpw2TIqvmC4XKPVkHqIpd2Dl+isDo1Q0pcEalztKLQ0w/TjkL/
	 o60p8E8a6eMVaRwOogb6TWJWXLCUbk9MC2sGQ+iyHkFf7Z38rR9VPoGsDmKY2f8Pwq
	 fod/RxyTyko3OHlZ1yweSJvLOL2J3p1HiGYhBb1DXMEgkpaDrRw5jtjJTUbGjOuliE
	 /WgxfjYkOzsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C76C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693495363.20848.14890480877293637308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02eb1c7e8cfb6cba1349f98a98d0897424c53f6c74801867cea53bff7aa6cb2
Date: Wed, 15 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736934953
