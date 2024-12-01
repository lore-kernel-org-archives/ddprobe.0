Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3503B18593A
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733093155; cv=none; b=WEdprGMC+0naeT5B1+U8/zYViiVoAJk9Elc3OrOSAPWgtLCnCBaDGJoxrjwpTUrUby7L1z86YGaQrszovtcKv971Zgf/rn8N9sYCHkoCFx3/GN/tPyYM2gzysYAP6NLRKoneVyLr4HwvVlTmdd0rZzjhR92GmNMiIYp9rkUi6VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733093155; c=relaxed/simple;
	bh=Bw6yqhUbxoiabVzupqDeS1QVWx9tjmx6AzIzwDPWhRw=;
	h=To:Subject:From:Message-Id:Date; b=qLJQPWah086mZp7KzbcUs8HSDJqmrp/q3dmzBCDbM9stoWItdSXpr/kuyrxuxaiuW7ZmAml73dfym3jvPNxMWkRnOER1hquZLbeZdSs7mC44d+YZVNt3NlYi1cKOTwZg5ULxc+NEnYoRWIptO+GUrs1e1Qf8OIuPTYhnTBLbecc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eqb3mINn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eqb3mINn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC218C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733093154;
	bh=Bw6yqhUbxoiabVzupqDeS1QVWx9tjmx6AzIzwDPWhRw=;
	h=To:Subject:From:Date:From;
	b=Eqb3mINnZaK2EtepHw/OZ30hNU/mkHAfEvIQsDlIHoOWvMWB2uZxRDZpntWUXTumR
	 pKU8uK2NffDDAPSN7PDzTE1pIXnwAMo0eC2Puwl7R/kY1cA1gUV7/pRPlwkus93TZU
	 A57t6G6rruJGZm59cIPNrFjHJzTaZtVUPAmx3aLgrtYK2x3jgoW19wjMHAPFOezmii
	 pX0UqPnOxHQkdB4toBiZ1Lm5lafImWGOboOXZKCNLRCdhP9NnZyXx/xluBb457cli+
	 H58YHqETLthGf9OMkfVtcrV2ndTx+LwFE+Us9L073CPd/inZ4Q3r6hhJQw8ceM/e4Z
	 xQcTAc4XkFa4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CEBD4978C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309315358.28905.15889032355535657195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec53183cfa8779dd232d137b8812b371b2c7c81cd41d5acf7137974382d6d44
Date: Sun, 01 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733093153
