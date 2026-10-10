Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6BD411FA4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791630034; cv=none; b=nLeQrnI63e7QQQw/LuBb3cy9FyBKt8NYOBF4p8PVDkVS3L0pNL0jE6r+V46ocx7NOQ8dbZaJ31txcFlY7yt48vVPHpUmTOvQ2vSJBrwu5of71R42huMTZkxmx6HU9vq7zYbBY7VGKpS0nceTvFRbcrkj1qth0yI7eRAvY5kbj+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791630034; c=relaxed/simple;
	bh=Uz4fWKHO/asuRyqAcomDHM+nkrhtCxXoxs86rRzjKlQ=;
	h=To:Subject:From:Message-Id:Date; b=UG7EcYpwytu2KhHPnmlkFs4HlAaWo2ihhAYp5IMqMPDLDLUp0T7SCB831+EZIH++GYCV72jvTZg8ozgCBbv68bg7fUSiFLuwi1G9Ihp0VKqaXQSPrj+De+XAxslADN51kzdOfuyum1upOjfZ54hr5OQEPyjiBH/ZDJ4VWUX03gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPvUfBxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPvUfBxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1282C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791630033;
	bh=Uz4fWKHO/asuRyqAcomDHM+nkrhtCxXoxs86rRzjKlQ=;
	h=To:Subject:From:Date:From;
	b=rPvUfBxeCFB+zMqqDHPlrg9y4zo2TMFv9YVd/O5XcBGIhzX9gLfQHtQU2dfSI3uTt
	 KE4SNCPlu5aIhQULkd21/8pr/iFHh6aW49yyH2eFL7FbZWOR44j6S9O4BkhOiifKaG
	 K85phEAE02NW8Ul46Ns87Q1f81tp5fGDH8QAzvX0kdp4aJ+ZquO2pN1noWOPG10vma
	 gtYQ2/WeipGhXk1+7zEn8MSz85tBX3uGoM2KNrCgBzxig1xQa5il67N75jcs6XNRPb
	 Om0bPkUcDHpRddDylKorw+jcy4oQ+dPoVLDKan7Lg0GHCDwu/wazAXV4MMeMjPMz+9
	 SxauRxlh2PhHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFDECA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163003370.8637.8477863647373226262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2789b051b09f665a214fb5be08ddb9094431d825e2659dc49a62405a7f790d
Date: Sat, 10 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791630033
