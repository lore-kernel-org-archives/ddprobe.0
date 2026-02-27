Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131DC472773
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772227494; cv=none; b=Cp9mrg//lWU71UWJKQnYtUbiPa1oSTKj/mvwocJyBDt6sM9ZBdodnyzrfu+sUUlJj/+3f5YaL3QKWtqqVjU2r9yzQkPNlDSTKwixlczgXYkYw7+yKg4pyRDK4q56CJlJAvuC4rXolw716CQGpWWAeY6hzLv5NM1zMriqWnDu2ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772227494; c=relaxed/simple;
	bh=m/X8xFDs9wmBA+LHQog0gS5IOcFdC9KwP7gcdUrA8cs=;
	h=To:Subject:From:Message-Id:Date; b=JxUuexTHh2vGeX7/jojWvIirT2dGiKxnMiIfSUvT2rt1NxFi+KJr6AdyqhmDDKsHrJLV/Esqr+s4YImRdNXYzjrZixLRW/E62udXz8xmOgsgWtN2Na9fHsrUFGwYkY2+Jgfa7p6r/anYtWllrUf0xgd09tHTy5KSxofMWyo40/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5viBg5p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5viBg5p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4C4C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772227493;
	bh=m/X8xFDs9wmBA+LHQog0gS5IOcFdC9KwP7gcdUrA8cs=;
	h=To:Subject:From:Date:From;
	b=a5viBg5pJ2zX2qcPQ0EAUFcEDTyg+Jag0GC/tNPQWGXHkJJUuw/j+DWhb5GG7imOK
	 en6Vgh5zFHYo88kd2oYVt5oBmxQlDdQRHmwROx0lI+ooWsfxOzdbnmU3uAzF+8BdX7
	 FAbQ6VvwPcUG66JLAZWMCh91P2a1DBs5hxE7kCqSBM4A435hUQiUMMx1NXIXh06VEm
	 ilyyAEWO+n9zL+lBBOvuVrg/k3/laQSbhRuWgROczcannOQwpojucBbFIpFltVDII6
	 XphZdmGc16gyjKPFfTpXraanaV/cgTGlyIQTYH9mZzbK8YR+XoEAkYxEK2Q6o1KJ7b
	 rY776R3KgCHhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E353103FF86
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222749363.19305.5340301678334056209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ac554b630be2321d51438910b9b1d4bf976417752b7b2cc4926a85962ec5e5
Date: Fri, 27 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772227493
