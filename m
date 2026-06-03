Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1BB3644C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780457674; cv=none; b=eUa6DkhnseZg640/J1l3P4kBdfcGZMQV3gORzRy0RKBhaRBZelZU3ya8OZ0TKhR6lVJI5zDfn8CHkjTiI8dcwMqTYxRLSeLzJQty9cgvrzlD8+ImLFL0daitWsVRuMn5l19MjltE0Ndj9T6hA2cyfIz1OY8ADvSRfd8K0hu31lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780457674; c=relaxed/simple;
	bh=ZPt048hLJHVTX0Va3NZLeUq4HhOrPsSzeiyiuszNRRM=;
	h=To:Subject:From:Message-Id:Date; b=YVFuLt1CZZx6meKn9HlIZjW0m7UwiahQ1Ajv4fzq7Iv2+MMBtjAleA8e8PfslWJSh64rCkSWRMbfy5/N2vyK9TgJbEe3xpl/Cl/19uIqpjWnNd8cq5DPcqzN+a0M27CqfjemQDPMUtYW4Tai1SwPvC3IFKVr5GhDtmUeEJluJXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8CHnpsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8CHnpsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF24FC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780457673;
	bh=ZPt048hLJHVTX0Va3NZLeUq4HhOrPsSzeiyiuszNRRM=;
	h=To:Subject:From:Date:From;
	b=L8CHnpsHU25xIjK25yfSC6fBoGBKXtXIKumbiyusPvCJejovYc4Tc8ycFgob1QveM
	 A4uVTnCv9KLQE7XXyfRXDGCxq+4LDDnbf4dPcSL6IAHmJrA92H1IKfccAubtgykeJ7
	 9ZTSN2bB+fmk5hZrxghXwjKPn5zCLs1fKVlQJaRfWaYBHGqMuyvL5B4M1AXUyeZdYd
	 n9KBxh1XbNq2PdYS5WwUXi6ejNx1gDnSdBwfS4Di29QN9bGupIE29/ImyEy7JJCQ6J
	 c2L9cuLH4peL+xw0cOtQNf/8tJOA9JJ8alONELtEVRasJxcGVs/3za5DC3jnxSbejQ
	 cu2TIPNwms9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81B9CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045767368.7337.13062081024241994173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99756df600eb8d58392c569951eae2f61a9614bb92d83d574999e5d29420dafc
Date: Wed, 03 Jun 2026 03:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780457673
