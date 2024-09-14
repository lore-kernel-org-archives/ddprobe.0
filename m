Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F2EEAF6
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726282554; cv=none; b=gb9tZywtg8SuaD+aS67Bw5luq8IBw5CpGeN7zZG9B4+lDS7YNDwESULRyYUaI7kHNCPYcce2kLu9DnpDp5HkD4fCzD0//sIs8YqewTyGl7giucsWY+NWdAAtfs844esJLFi2R25ziwsw72a0KGimDDblSBysq3+0GW8cQkNJPRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726282554; c=relaxed/simple;
	bh=qc+GSLFVF9lnQ7EDA0A4a1hTbZzhfawIUJ913gwice4=;
	h=To:Subject:From:Message-Id:Date; b=BKmEY9aCFC7fz//xpJZfisk/Hkgh1vDvEoNmN7fzI2u+nLDlfkgo7u2Q8Yeq4FtcULOmELCAycmmubgk8raMBG5Wye7Np5bsuWyvvkJNMX1poydf0jPjhkkf4Pkt4z8+8X53C3HSYo/poST1RCmx278QF7Xy0B/celdZxduZASc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO03ZBn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO03ZBn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B56C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726282553;
	bh=qc+GSLFVF9lnQ7EDA0A4a1hTbZzhfawIUJ913gwice4=;
	h=To:Subject:From:Date:From;
	b=AO03ZBn6zlrNzONtDFQReHALsOuHw3tXOR0+0nZe3Xb2bX7l6JsMKcDgT0yAjD3gW
	 EpC27ERMorDhSdPg8qqk4Eq93NZxqytys5W87idA/prS/EoR7nM3kcrk0Ua2vucHPo
	 iM4+zroaykmjPhzrjMsQjrnhv9TVbyN47onwedOC719r0/NzQXaCHgVlckmMs9b7mK
	 +Gd/D27EiRKpCD1bmHQG/14NFkw8dG2shDkDq2B/oDQh2D9bl3yIoUq16Ux3wKGscM
	 7/A662TrDB/dE7M4EGp2O6ofrKCaM9AM+ctZbBiQTeGN+FIQ07tT0qa/v6hxKhNvDV
	 khxGpnqZrdd8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911EBFA3758
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172628255358.18305.14770716248268305891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9b263346a241f96a8e4140c434ba2277dfcdb2524207350dd7cc4652a13639
Date: Sat, 14 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726282553
