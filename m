Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD7418C327
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720038923; cv=none; b=IoVSES04cDN7bnA80he+mAkeDXtKzUtsXa8Ogn0tUyarG5AEGT6b0jYr+o18B9WN31Yn07ZnJgQIHeP+x3TkRqB3acx7FNoeD3ZuL0gmfIP6mMxy5o1J9IsDxan5M+gHG5IChQ6RymI/3HA+anmhb9kv3Dt5fzugPNmBUG3qxTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720038923; c=relaxed/simple;
	bh=vOXAI6WSwhlvOdxAAkqN8od2lWCi0YAnPHbWPRO98OE=;
	h=To:Subject:From:Message-Id:Date; b=c2RJ6idClyQZOxvF0xNVRQvD6gHrgC3JW66XWLUQRV77LDXIADoKClPG67WLeADJVvRQT0/vQLFrx1gLGh+tOzvpAo7MB8Q3fear4v/U1TyzqKMNQkWljuK7p486gWLFpR0Bo39ZMz2ZpI7SXfnkgtHlugUX+uzjHI0zKwsyH9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoczQWyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoczQWyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D7AC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720038922;
	bh=vOXAI6WSwhlvOdxAAkqN8od2lWCi0YAnPHbWPRO98OE=;
	h=To:Subject:From:Date:From;
	b=aoczQWyZ38R9hM9qsYzUwscpslGMLgJr7Xc+I9B46hBFwZFVcvpTe/G/G2Qq6fKse
	 TCduEkdSHGSs6Vfz6AicGgHSN+xOH89HGeND6gXUPbiqPuf6o0bPgK6A60O41iV3/l
	 Prj8+FhB2z560qTUP5xT/ZX69OLARzX7uKZn7x1nQHjziMkn8objQ3i20VIz9cjcGx
	 IWVx6KSdvilcfsZ42AbFQ2wifCNMtYhr4fJYV3sSgAldlU54kZvAVXr8klecim6lZc
	 7pPryK/ax3ZGY1Pdq+QxtUqTn8hWanenGDuX8l3dJt2HzgdRcrsKSuQqfrCyFa+sUY
	 1Y54Ek5ZsPSWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE22C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003892277.24619.10863622787781988100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfddf5ab3db1c3e7b9e594fdd7fbf45962fdb6df0cd64b622c54a1ac25b733a3
Date: Wed, 03 Jul 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720038922
