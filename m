Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C09157498
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713940823; cv=none; b=mOx3vt1BEuGqgwd/Orxq8zg4kT5wEfbWCEq/pEqgGMECG2EsPhZxDv7kfXU1MLA/tIs7RU/broRdXFm/4dH4Q/ZBUJ+fcVP3BwPDmTeb6bqpK0Zl/JbFs0A83WRzJ/PebRH49eIyET9j3l3jnwt8gEuurEsPD6B7L2cRHRZCf2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713940823; c=relaxed/simple;
	bh=jeUD9Y2aw4labWm8WcqDU54YgprrSy6hnfFR4Sl67aw=;
	h=To:Subject:From:Message-Id:Date; b=rQgipAWBC8GzEJ6tfZUyCEEmRT+0JMn478jPxLOBKwdaaUF3OGumFO1jF/OqNxTmkHur2IAGp8Q6OS67wD0aD/FQhq9ipGCE8O6n7GQPYj8JIFxYYc6jGDFhOxfrOdkoRuHjd8mmrgz7VBLl5EocLrWpqef4W2zZcXnFiTPuFUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlIJ2mke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlIJ2mke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA83C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713940822;
	bh=jeUD9Y2aw4labWm8WcqDU54YgprrSy6hnfFR4Sl67aw=;
	h=To:Subject:From:Date:From;
	b=DlIJ2mkeUVmvfN0Iqz4dFGxwq2Ss1dr2pY8L3NvsdgEN6LKa5ya33tvE2osyCGusn
	 BzRpMRa1GfN6hrl4u5udoD03NubyjiBwUkRf0Rnz+6wPURS0WOa60jXCsvu7nMv6Dz
	 Cu5x8laMYRbaK53+dQ+lK2kRtnVNFhhuFrrGvxbosUWDBgg2MgonVm+9vibgzSw0XE
	 Tg2aG/USSmCEhRYZoPOaYbx6SN/r1cLjbR2jLUR8pwrtTV09kEmpaqTdDs3qm9X89R
	 k1y7Ohhci2B0dF9oUY/4F+AgJOYqqz2SbKNAM+eS/DdxhPHy0h2sEY1MzTKi7LgbK7
	 b+6Y2HuM1AXGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81E1C07E8E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394082280.13124.15491984012789248611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b041aab9fa115ea269eadb0439ae283586a5d5f1d37ccdda392a5dd136b659
Date: Wed, 24 Apr 2024 06:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713940822
