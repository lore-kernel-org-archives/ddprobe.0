Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381FC3A703E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769114634; cv=none; b=MPRcl6gs5grNJ/toijvUwuwynw5NglExE2QzK3UiB1ADmFzWrX6Vlc+iiKR/IZaFgVfmoowG/5d8wxePC3vP0izywAZsUINAzaf7Gzj4Jsj5vvceyL8uLWFmvTsOPjtOES8jIVLZjy+tnSScgZup4boAJsB2hpLMnAJJs98HFTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769114634; c=relaxed/simple;
	bh=SrZMWuXojExUe0a+dCcfNZ5sUUHZ/+3WHciucTIypzw=;
	h=To:Subject:From:Message-Id:Date; b=jIRxmquCPKglhnADB0HydvpNsZiLolVDLtU7e1J6WOL0m+HcZPQK7H6xzad+k7h//MCmNP0ac0ZuSNef8iQLfmJLoDmwuZsAWHftCdlQtcWO9l5WEho0LajKBOZ00uS7dqQhTHKc5Sq5ob35gcWrllxUiQA8ttw8jQE8vRvLs5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trjPiots; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trjPiots"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7556C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769114633;
	bh=SrZMWuXojExUe0a+dCcfNZ5sUUHZ/+3WHciucTIypzw=;
	h=To:Subject:From:Date:From;
	b=trjPiots125Hcd2FgjDS9MF3aLcHWcJ3hDoeego1fKWxiVKeya/t5hNPOmBeLb2nR
	 D/D9PErK5ZeOPGjSG0GJ1ZuHHfDll/ZsDnPUtqfoMssGvOx4HogmQJhDamjk8luEfz
	 poNVtgXttNwFL/66Cugh9ay0n7UGSx6gOIQuY3riACCyws3nxXdiXLctDzddnDoMLW
	 4296/Dvdcx8IJletrwKQl7ovLy4+ZwktXx1MPFbDuzluMywZ99GU8YlHAeMWSDqYUN
	 VNDUwJ1IqN6ydh/1vOIfxmKTbm8DzK87Rbnao60nkFP611XuAditDph9Ba+/1Wei/u
	 9PsqUryDnQo4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979BDD6CFA4
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911463358.22555.4161233193898038094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8725869cac69a70e4481921d8dab0535daf942c408d77fb08b68b5067667668b
Date: Thu, 22 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769114633
