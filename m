Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07458258A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758070194; cv=none; b=Vi8hSsdjB8qUqGa9jabpYWeGVIW9YYQWL+wA4rgpSEhiGtWoO+MdeIuWo3IhCho6XAozhy6s1mneZX/ukmDWvuqoCVJdLhfnLonrwav2YCEyzI6CntYqFIIurFcsWRKplAwZ0wGJD682A7tnPbN/bZFtvoqtQ9YPTCkg3VxUUTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758070194; c=relaxed/simple;
	bh=iwvw/sD5I7aIYOyYQlc9J3fL10dE7JMV1a9AFALHwVI=;
	h=To:Subject:From:Message-Id:Date; b=BQtVspOXo9ASaoXmzoIpFAB6VPsQUs7sk3c3X5X/9hk9ZBQXtx6ytGgXENX4ItTMOVoIvi7nL2OY5fQTbWVqcvh+jkafGSX2zlRpWMbwxt3H+Tv3/hvFH1bkhxAmzPE4sFTB5z9nLDkgE83QGNnhorARHwnk+TeOevMAEeHmdIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jO91/z0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jO91/z0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F05C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758070193;
	bh=iwvw/sD5I7aIYOyYQlc9J3fL10dE7JMV1a9AFALHwVI=;
	h=To:Subject:From:Date:From;
	b=jO91/z0/QFcHaxg5PPbqVBism/VusM93UKNxHczrwBHHJ84PmPgd1fhqXUpksYTES
	 1iLKnzzLfkcns6GfMb0EC1SKIbI9g4HNcq+P47rmiZbTQxVSflOhrvCfojmhf1/wEk
	 o0azoMI+CrySy16G6Pgj26svEbpFYH6cLvO9ic1fDQsOGSVty1gRqbgkO+DewrpwlH
	 8haK0+jAmBmnr82W25669SFoezQYFKgNuq5Vh7v9LwKOm43/F+X8FbB2STMqNJ2RQI
	 soUMjmgmr8ReCVAI8TpVm+iH0MIb11O7wB45xHlDuXOl7ep2fU5KcvGUadKAOy1qhX
	 CK8vZeK1r89IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F319CAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807019357.26807.10458880894446009008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de55c1e43239661356a83f2d38185d521e4327efbe7ed7edf8eb48216098189
Date: Wed, 17 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758070193
