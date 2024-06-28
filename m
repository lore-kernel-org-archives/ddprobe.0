Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68612153561
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719596663; cv=none; b=ZNMv8yQB3L7N0AaEy17UxC3/2Sbrx5oPtsz85tCjZf9kjd2nNIDOF82C39OIarYP+fZOTQDNYttbspv0W9ySiyZkExCW1FlOIIcsFE/EtSQu2Aza8jFB4md8sq++n8EgcQGiz4+jkHS9frNZL4Ph9qhjMhEAvPNNnp8SccvMZo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719596663; c=relaxed/simple;
	bh=5/pZUaQeiREBh/zhvaLahoWmo438VdqTc5bL9AOrOhk=;
	h=To:Subject:From:Message-Id:Date; b=jNZiCUfab1F/Iord6/Z704Klp+Z2YEN+o9kxAuOH1Tmhda4FNDbRxlWcXOGaCD7sugNN+Rajb5itJXnbX4UDbYG58Ot35CDzgCe9DCi50K+x1qvC+aac2ztkxBQiRT2Ro2tk48XqYGI2xmxlxY/J2z42n278K/ccLCe+HgYA5Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjUJwvFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjUJwvFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED589C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719596663;
	bh=5/pZUaQeiREBh/zhvaLahoWmo438VdqTc5bL9AOrOhk=;
	h=To:Subject:From:Date:From;
	b=JjUJwvFcOdlzMXjWI0uXQUlcUFelgz/wbrihrEZ5MWKXQ607Lrx/bCwipr6zsk2Og
	 Pm3ku9WLvRG+KXKi0qFLjNZn9vuZ2dfkxrgzVLuBiNYG1clhaX7AEnJEFUsEtud/eN
	 nv+uuFC0QwzeYfCI0NYyS/D6EYUIM2yLIsTWkFQ2yj4Dr7ViDZwzIUTliR1y0ZOZLr
	 griUJWJVd0RRlnnUB7+i9k9LffXoL6+jGOXbJj+Oq5IJj3JhcDdN+F7t6nIFxLCGBv
	 u91wmgsS/jTtQoYXb0NkNnRwQH6gtTatDyLJ/gx96xAnVySbAixugjzw2GQdsHo3yj
	 dYW3j3AEachYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7D96C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959666287.10036.10644569009924746387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7bfe50d9a7d11d25f7788b359071623d2727353473d26746c8c615fc90031a
Date: Fri, 28 Jun 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719596662
