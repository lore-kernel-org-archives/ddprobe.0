Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E4C1DE3C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745213394; cv=none; b=dprkO1+Ln9a3AiYJn5SuHWRXD2A36pB7GFhz1pa5iMb1g+wF/Ypfc4RVFeehztzuBictp2gniTPbTsrTm0wekCAf1293NxDfyjRuHRw8CwbQEVpra7wZwXpgJcIEsn8MvHGO25vtxwSwaLC/MufzkrGewr+G9FCtJNcfdX/hkPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745213394; c=relaxed/simple;
	bh=vsw/dvYRG32RM56kK02zJ0Hm14rYxkSwzlvTNbgCPrw=;
	h=To:Subject:From:Message-Id:Date; b=KnItp858HzJSDE7IYCXKV+pDoxveh0+iINhyKLjWAtLriGSP6kzve0fl1YKxBVbnzVrYOwurLP2wkxgMWh694tifsnGzLp194luLAMzldjtSMnJFCl3KjPiYuaq+iZ5jna3egNjjkU/CT8z0obr8E3X+jPIpXxEUMvmd9FNFvUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ff3dk1sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ff3dk1sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE8CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745213393;
	bh=vsw/dvYRG32RM56kK02zJ0Hm14rYxkSwzlvTNbgCPrw=;
	h=To:Subject:From:Date:From;
	b=ff3dk1sy84Yb4eAzPc0Djfv+d49QzoCP8vlnZOIVls12IkfOr/NDhZnlN6m5P590o
	 RZAPjXvcJFTNyn64239oPJQkp6p3eIWRKbiyQ3eO4jRqqaqb3gkqum5A7qlK20Z1ox
	 xZGNZk1jrrPOZDXrNoYAw9P0F9hp5NZkfMO3aUVDTKn7fFYkuJ1Ij3XdDmr49ShrV3
	 9wtLHr0YXVvLjGRzNiqoBF2ikebS5LED99GbTDx0Sf0TQYiTwHcuAyW/vwNJ57FNkD
	 IArmeIbPkCXkOTvNSlsHmuUPsTuIJ4x9fDxXzJsq4qbHZalkM+VXhfkqBqicm/xXOL
	 CqyOf/2XvLVkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993E4C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521339360.32249.11279403356106496157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef027a2376c8a21d0ffa30dc16e28f357d547747b8f61763ca4fe86b3da3dfb
Date: Mon, 21 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745213393
