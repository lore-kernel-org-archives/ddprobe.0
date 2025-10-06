Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE6C20FA9C
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759750794; cv=none; b=om84fQpMv2Ilo3Mv0v46OQXJCoCqeWYGc5m5bfwwqH8lOoTQXEA0mf/PfOxgVQ+uYog3+dqhuE6qt+WbPlvrl6HrhElyBKIBp9AAR3ky7V4sFfyRKmS9mwhvNoRMfw1fD6fgn52HrvM90DKGbR1W3Pf44iKJkraYQKT7QsaXARE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759750794; c=relaxed/simple;
	bh=xZaHgXwYq+nhwuwH4q3mpl1zMmnZ+x5vzFUb/Ycsxis=;
	h=To:Subject:From:Message-Id:Date; b=eRRpgyRvoYWbl8vmg859tMU4p9o6oK41lt1g8FA/NCn9RpWtqbP54trdTgADevAQbYGQg+t7XNuDWLhX3z9DJRrKG+zGSOZpsKANTLbRgksJYh2ae0JG8GD66N4MuEutL3SW9R8T7wphBAUdWQ8Mv1KLhmXq2evYuQG5/pcJCeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIU4kqPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIU4kqPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAFEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759750793;
	bh=xZaHgXwYq+nhwuwH4q3mpl1zMmnZ+x5vzFUb/Ycsxis=;
	h=To:Subject:From:Date:From;
	b=dIU4kqPFpqG82712ex+i0mGs9d8pQlLtk7ZJ56aLCvMlgK/aMDogAqosq0iB/inhO
	 fip1vVMB4iX9UgjilpNyJvSjuyvy78daowKcx39Z7iS9ISnHhcO2thHs6J9XVU/gE1
	 mhCJHQEM50YmMPHwXEDZ6qoafJk8U2Kmj70rhG29lXsHy3lR15wh3GI28Iat+1lMbI
	 NMWYmdlFxOFJOi/ZXR8spq1sz2H7d2Q/SiXQ52GeODYD+p8VWG9bAp6XsjybD+seDL
	 Pqqe4UPXf3ucbbbprClp4Q4hqib1A6Kjh4V5vwaQuZ5A/zgsxr02zVMDGKECwWK9Wy
	 xWOFzMGxFLoNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEACAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975079357.915.14609208930714201297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3a54a8209162895c3e9fefb05d76c9e23116fd390555569463ee5209e7def1
Date: Mon, 06 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759750793
