Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE6ABA34
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756173594; cv=none; b=Fu+Rui2WmAWu9WwFY96xURLSIKEpQLG0ko6sL4jilunR+aj5c8a5FIGAWvuganG+QabPZ9HtXAwV5e9rGjWE8JWwUIDiDuBPBI9gA7DauWJ6f+77QyUfyOchRIpPSnW2dFN7J3Ody52fkN0pkLgBpOL2UD7MboVdQK3k06Vyg3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756173594; c=relaxed/simple;
	bh=2PW4gT/J8srxP08aBglSD6jhwxK+EdZuqiYZF3kZvgs=;
	h=To:Subject:From:Message-Id:Date; b=FbrSzoYxf3zaotnbz5sPA/epGuwO6PAkf4jyn4rVHVo4uDUg5KTFQwpufhR0uhPxyhtASuG4FNxLH3c8BwPTv38rk5cw76kYiVoBrsd14fwyOc3XFdtTBE/BMdW48ia4XZL6VcfW7rw02CsylDTAmTK1ukquIWDshexFBNMy71E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwzGnBGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwzGnBGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE8C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756173593;
	bh=2PW4gT/J8srxP08aBglSD6jhwxK+EdZuqiYZF3kZvgs=;
	h=To:Subject:From:Date:From;
	b=OwzGnBGDIj/vG9qKB6Zje+gurNjgxgHvQUzBFkivzMEOs4tbxdU3p5tTpa88zR6G6
	 mJebhYJ18qkCPhyGpOt6BC10nxddT7IMeRjmPKhL5YRP3oRBoLnBMgpeTTwPJ9VvlU
	 QiLh8hGwiKDgmkeptDswjQDVhq7fSudto+LfLr26+V5MJT8B1T1TeTL5cXvlJN6tjO
	 MeFhFNAyT8PSsM5EMqFWmUlKm/IxSkY+rR3XdNhyCRevIwt1qNDa0CrQxfrB5jQpnJ
	 Bqy7lOSFhaO8P6Ms/8efXMCLMHIb388s5oMSGpvoxWbncbjbrlJJzlYACFmQabVFdA
	 U9UyAUobZDEhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED77CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617359357.12138.12584638757297246060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb4daa05133fdb702519918d427dba2c0058437b157ab468082cb9209b3ff76
Date: Tue, 26 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756173593
