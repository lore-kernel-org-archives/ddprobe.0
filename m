Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407DE2F3C18
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786575634; cv=none; b=WWl0PyTfagLWbCWKWqTxPVzf6glcYCvT8AilBd2/h7qBaELekYDtefPuLXQYkPwVPSEyhospSlUTvmU3YD2bsZwtVIISDVl/71jilBf+UPO36z2fDK4UGJApQfitCWyl+BTixQdsFq5vwj6TARtcwvO54Olqtj1ugClMQonEH1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786575634; c=relaxed/simple;
	bh=k0IRmO6I6Iuw25jqeOTYnui6fCxU2IOpMAxngK/97IQ=;
	h=To:Subject:From:Message-Id:Date; b=NzP+BiJE+aLcFxMlH30PYjlwKCNHkTDlyuXD9gYSN9vYt4P6TziLwu/X3t1JlNG4pjt9RoI8e1rNeBJ1F0EyymKjksz1AB8ZOsYT8wypNr5DHLZ2oR3xmxcDi4w6vCO4p4b08PVUwfQDDqjM4F8ucJ/UiRW1SdEmHkRdbj+FP2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+CHEEjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+CHEEjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0023C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786575633;
	bh=k0IRmO6I6Iuw25jqeOTYnui6fCxU2IOpMAxngK/97IQ=;
	h=To:Subject:From:Date:From;
	b=n+CHEEjYgRMByQfL0kGFAL0g2wmpSH1XXq9RbN9lT0wXcqPXezej28HG4sbOOoJyH
	 RJTAcEJv9tErTrvqltl0/x0ZVXvMX02i/B5w3LDK/Rdfj1TTRJm0N1hM6pPHcEwwnI
	 IT3sNDWikHysbq4GMErLnlDtM4IqQKkOFBqW4CPDMs9YFkkXlind186qU3pYRcubQL
	 LYQpld7x2deH+/nxc2fjrKi33vhI4SY8bRxKm+Jr5ZCYDRYekNS0IKZet6Uo+H4Lja
	 Iqjl1d3aK/dv3Cx8SslXh6Sw8cdRfUQTOtQ8Wt6slRXTt2br8LoJNade6K1W6x6qfJ
	 XAS+Vpfe9tpzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD138C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657563368.31517.11975164464744025724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d155af31e0b24ac97dc404b82de1831a8d817b1a93f5233022118fce5e2243
Date: Wed, 12 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786575633
