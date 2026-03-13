Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C50A38CFF8
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773431094; cv=none; b=o10jFQdMNNSvqVlkammxXRh/IRc0CZMYZKzK0lw1/qE4z4Hl75d/vf65QIhdWCAkqy1SRijot+8OskPhdT619tYww10t/RtrSVi9uZGPNaJz1n9W+Io9AKzysLcpMiyog1KPDLETc7NDIl5rqOmk03SAGpufkBzd4TKXIJTr72s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773431094; c=relaxed/simple;
	bh=DrcV12VUWeM66XPqgUqvenz4ya6tRATlsnnppEHV6rk=;
	h=To:Subject:From:Message-Id:Date; b=oYBXqCXpSlLo8++u377xs+yNSdlioyoahkJze7VOY4SEQQlC5N186l1W6l2iRdJ07iDHz4/RWmkJB78bP1zByOnCb8raW4TcDrKGS8zjtkQq4U6iHGh9etiGyfOAS+8zv8VCSX76UxZtvsC51adOUlDukP1hLqDz6SN09KPDCeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6ZTOasN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6ZTOasN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD987C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773431093;
	bh=DrcV12VUWeM66XPqgUqvenz4ya6tRATlsnnppEHV6rk=;
	h=To:Subject:From:Date:From;
	b=V6ZTOasNoOC+lMbiyjaOB3ajMCn2D7T48k31xUasJY8JCWaHJyTC9K1b5IqhC0xcm
	 tqiFOKX7lY/NYPgzumg9GzVrJ5Ophu8gmFPFocN+TTL1ZVbOZEi+Oh+OYev8r6ohwS
	 6TJnraghZyR3iyCAwZyu6k/hUgitRwrsc/YKDWMn3TGu9/B6bobr6w1GftfCAXLoWn
	 4WHZjOXewNa1gQ/M44ro26IniTWgOIgIjxsZdSYmiEDqjDVlxMkvzGM2HoXErQ9o9u
	 reCdoWP9HvonXeedHkweRYxDl8exy7TirO8KdtZfBMbOOkLVeHLUkSStpVVIiIiBb2
	 tr9dz+xOHObTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99353107BCE1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343109361.22196.9578517905899602301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32142c3162d194d2151918e0b5bb89bf3676e4cce495009d0dcdfc149b01d1ab
Date: Fri, 13 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773431093
