Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304D316DEB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782708514; cv=none; b=dk4c433VSnWRsGdWWNW+PKcmEKbsSP+CbsZimEq8XkB8kNKcg9kSvBIVxbHVwjqCb8bae0Fz/B8rx7wkrOwXe/L9YqDD/lVlH7A6noliF3iVkbZ84ndkbRoPYzkW2pz0LskHWoSM1U4c98OJcn8zcV+bIrfCefn5vVZnHZB3OCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782708514; c=relaxed/simple;
	bh=3LfGq5czvJeT9HTQ3aKANYzrnUMTYdJsIFdUTxyJzQU=;
	h=To:Subject:From:Message-Id:Date; b=jdiqVRWBoafjeDYpYTjwn9UCg2PIk7HxG7B1SJTjfrXxabmXiLMC1zWGyg0adkLwizI8jZBAsrQEVDv23osuSoX9ZvVo2u8CjmByN7kA6S+JuSJlLB5w4jtxKYxIHU5gPxs4v6BwBnEWJLsuGKV9OSeJ8yHUQKrIMM2iHmvbhzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkChWFUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkChWFUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CBBC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782708513;
	bh=3LfGq5czvJeT9HTQ3aKANYzrnUMTYdJsIFdUTxyJzQU=;
	h=To:Subject:From:Date:From;
	b=VkChWFUjbhutOnku2oEzTlapb6a/P0kQ0t7DxY9Ar0Mf1Ek6GxP16clBpkKSpn3kr
	 nTN1b+uwI/LKJI3Sa3uDYabr1ETKKars53ylIz/KtE46tWZ427bXT4VfO5waU9ur4A
	 TzM3xli0CGXH83QHLndE47wcpVjqbBA4pBE7hRcfTdpFIoCFZPMI4+t7YCkEQ+YPZc
	 QGPaDoVNYbVhRyqAuo0416EfgzE5+XVwETDadZQppqOyvPr/g3YAzaui1bjLz531om
	 dx/LL8DsDqhP7w8LHv2eQe0nDOSBM8Gf2o0efq3yLuX3lew++31AF84/QeDTAY0Hmd
	 Y9BktKGi6G9dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B59C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270851368.1628.8367424677194908596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa87fb77d7070de235858c80dc21148e7847e6bc070070eaaaec1d8159574e6b
Date: Mon, 29 Jun 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782708513
