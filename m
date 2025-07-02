Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A6417A316
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751422794; cv=none; b=ccWsfneSSeCQ4f2AddO+L0ZBKmCne3cd5HxxWCKkieoQmj3LYQ3AuH0GViTW2aIn+wIEwlDxGSGjxQYfXdwn2SnVO/3pErwrML6gaRarlkazK0Etl1J6385DIp8A1KPyC1w4SbFPCsAf46M7f4ef/gVSzRH/1I1Q/Xt0wqXwcoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751422794; c=relaxed/simple;
	bh=bHAyNyIEYvTrDMX97JZrcrlt94Oj/A3WkdGR4unLDdM=;
	h=To:Subject:From:Message-Id:Date; b=k4prgQR/SeRLf4NtP+vLu8ck6+aa8V2BKD+WyCrKYwvkbvMVXTP+Kg/RuimDCrJ7weLWriU/rsXW6il+soekW51ETE8pZt6DHy9c7TLSCkkCuXvrrq0gSjkkTM0PWzM9+X5Q8cSOcKtK+qQpOIG4C2ihv9U/jycT8ODso5z3RgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpH4GoH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpH4GoH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0514C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751422793;
	bh=bHAyNyIEYvTrDMX97JZrcrlt94Oj/A3WkdGR4unLDdM=;
	h=To:Subject:From:Date:From;
	b=WpH4GoH8q++M+2UpJHO9OHSFopXKw/knwLlZMZ4l/zbdZ+dJwx5Qonp586aKj0BBQ
	 8/VpguwL9iALoj2U/FKht9iE3bbhnxLkE5mfBDLHsItmTaK43GoK4TOBxkcMWNFt8x
	 oiIP2SB71JwAk7wDmd75FeXchL3RQH8OCpn+rm/ZKa84MEWInZ3+DXs8PxFKsyIBUP
	 K6Rxb3vOLHTDiLrOrBrgbz3sn/M4jkXzEsIJfXAe1kRuxTiVU43o1zWlC81OAEv+9H
	 nfZYVzGCKOjcrEOIB6CBdjroHzyNE92ozjlXjQNir6VZkbNY1NuM0DfirXVd1+dvrt
	 ROQeYJ5EQSS8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90511C8303D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142279358.9002.3130536062062303677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b18dfa54cfa8ae7870e4adb730aa41e45898b5f2236d162eb070e64bb7eb62
Date: Wed, 02 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751422793
