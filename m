Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7332D0606
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761003594; cv=none; b=A50OdKTC9/jWU2juBmz34EmjmoWU185r2u3SP2TEJs5u0aMvIicLAKWv6dbh7QSlDpQ3WwBlGdosYImxxaJwlbWsGZFl8qES+1ABw+N/hxhvCBiLREVUcEqvJ2eWuXXnp8VMm64wHXN27T6jx8OWiX9WVWKBKEWq4sFdmNr3IP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761003594; c=relaxed/simple;
	bh=U4MqP4fn9J3AGIom04jjjAfaBIMBoqc+bokrKybZOrI=;
	h=To:Subject:From:Message-Id:Date; b=IShAcYlFpvmIWnSb/96to8ARrR6GKZUWfi3f5LbpFzNOHwnVSA8//5cIhf1aRZAT4XLpSpoknGxPwTCbKKlGfAHSd1I7he98zeJfSDnjndWks/5phScBps+fljY3HqnDG6gVh3WAI9KYetm7nPMpEoOgIMaXTdq4B2mODuRm9K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQqSOk7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQqSOk7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E70C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761003593;
	bh=U4MqP4fn9J3AGIom04jjjAfaBIMBoqc+bokrKybZOrI=;
	h=To:Subject:From:Date:From;
	b=NQqSOk7veFK8rbDK6CQxYhvSwhkhHPR/AEcm82K/X8+Pns6GCmiGewvwDORyDEBQW
	 3STqCmB+gsfDCtb7sNJENv9UFoVWHpiH0TxOiFJGuYtL7BTQdlJfy7zG8baTjgChx5
	 lYJuLr8bXuc3JtBil5cMNg995hjHq7ArO8Tof1BpjjQldBqWvBJpFRT6T+sOZ7i3oz
	 6e+CY3aaNfeTkCJDC7vvcSO6MM8JY2HD6zAYZ/prrwVH5qhPDXFFn6XWiwNvY6n7vZ
	 wE5+mCJLBtt4Tkgp3+hMXtYhy01toE/sCNsfb9aXaW+y7HS317ptfohaXtkYNhmeRJ
	 bfFMobabEVZkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ACCCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100359357.25598.9959644389387431857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bee3ced6be3106800e2487a5171fa5fc2089581319552a911d11ee19a88e44f
Date: Mon, 20 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761003593
