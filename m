Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242CF4086A
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772407494; cv=none; b=QcNr19sy9D4Hp+8V6WNpaxbjFcXzv2cKsAdiG5TiEdgShWn0I/dg25627X6fiZ1xUIoNA+7SW+TDWdM1NxTKIiFDGRjn5EAkQlGCWNJIxUmw9EjKBXbywg01ZHeKPmXybxnATRNFkEBA623IBS5eOut1qx/I1vuh3KIcnE8PeVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772407494; c=relaxed/simple;
	bh=+d5aKJAAB50F1GhETk7GEBruVPEkGUG7Il5Ew0UFg5s=;
	h=To:Subject:From:Message-Id:Date; b=rl3m+arMyBpf1dm6WAAvC67C9OBG6vZxYhl1aIvovMLWuJLbOhQxGo11ukCfDamPDxGE3OWnvyB6pMKrc30rdGvMsS7PN9FB1HkLK1Vyvg0/bukCMI0JSxs0a2HrNmM48jujvpIu+2twIkTSMpXbkw2OWGmSjRwyZVFOchtHcoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szZ8T56y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szZ8T56y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD849C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772407493;
	bh=+d5aKJAAB50F1GhETk7GEBruVPEkGUG7Il5Ew0UFg5s=;
	h=To:Subject:From:Date:From;
	b=szZ8T56yiHWkwBtWaJFhduXSCrajMplopYRnxQEodi8QfZjLULODoN5CSmDmcg+Y9
	 3meAnN7mPz8oGlpCwJYvaHN1ujy5PaLiH3TtG+I0iNxDcMe3JCceboojPcxJ7RxMJ1
	 /T1LGjRRIoPtNt6XQXhczf4ZkDJ5FcmrH5LWtEexxgJPthtvReUgNHUUuDMK7mJBRT
	 y6EE90ywJvLf+AxaxJHk8uvhW0DYhr2rZDXZkb3yTeFmTU+ydG+sORtmTAXbSMkJDG
	 O/zw/tpNFhz9tIVAzLjFmp3XaCS1Cogshwqg/gkrw5nCOpz5nb65flzj2EptgMqbry
	 EdSCcUCHMOEAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C34FD0076
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240749358.20282.11188288584683205923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb86d326b10e4140fb9135ff9ba988ad0cca3ef48e363071f806bada72b289e
Date: Sun, 01 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772407493
