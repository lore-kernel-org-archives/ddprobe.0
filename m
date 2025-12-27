Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BE93A1E86
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766816034; cv=none; b=CGhvh4QanKkn6CeE0Us7UjTgiqX5bhIDtox2ZSIiSBC0OhUp0aFFT4ISQ4S49eLGT15liYD0HTZh3oCmpsmIzkx22B4RXvQ8TwR4WCRF8ZmSE/BXI6tv4Uy+MF67kUDQg/jo0UtvWm00mwyqzgFUO+gWwf2L7NgZwoByy1ricC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766816034; c=relaxed/simple;
	bh=wWp70GEbdPhVsixXhIAm/xMcVXV0Zoe6GL01LXgBPvs=;
	h=To:Subject:From:Message-Id:Date; b=i20svqYEiAwOgIsu4lExCQJwVgVdSSZLcHyqPYpfiWzSKnzoO5NnB4rAz0rnXSuOaJDAvtozzqfsWLGFQApbMQMDfdqVRgkffpey+FKSKfPPx7idk/bukVqmzJELSruezThFFuKV8uuqoDzEIZP/EwmGslI3tBRohnb3HF9cwWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHmagSX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHmagSX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68ECC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766816033;
	bh=wWp70GEbdPhVsixXhIAm/xMcVXV0Zoe6GL01LXgBPvs=;
	h=To:Subject:From:Date:From;
	b=KHmagSX49RQYSv7oMOlWZN5948TjSNQd3xlRrlo3Am0Od7lonjKVz4zFpphjEd70W
	 LnW57dBrdAQ+H37SHdrAjuTdwezrjL1QFiXY2uu9A7t+4rufmywxc+6kEhEu2r95Hv
	 XcjIGzQp+Txt8bYLt4qXJxQglHe1VITheXZgquSeHPOKEY3AIZ2PCyHjyXjzalNyqc
	 vKr0wRUfNWebqbccEpPJ+70n7CoGCSGcWkVIvhpWwrtcf4buutgL976nRH1sDfPfFg
	 v1J7x7ppqqcADW7zN5MyYqaKT3oUNxGgwUSmRRV81nGGY5ceX9Dv1L1AhEELT7qyNs
	 PymW+XtUUdZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A42E8FDC9
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681603358.18864.14815647504868224387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc6fee30e5ae175b739770d501d8b2771e34a450971b2e8a4c2013275b25c00
Date: Sat, 27 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766816033
