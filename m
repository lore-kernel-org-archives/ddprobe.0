Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E5A1E2606
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753790394; cv=none; b=Dead4DqOHXVrROpR718am1iWASHR4lJ8lVkcTzW1kE/z5QrEFOxN1YAokLMr9JJzOeTXkWSkK3X82nioEhZOc8dhuydRqdQKZ060GstU6AwH7VAfVe8KdnTDdhQV+b0AV3ONX3LeNb5fWDZK8GViDWs0Yi1EYD6aiOC0B1WvF7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753790394; c=relaxed/simple;
	bh=ziIrVwgqmINoxWUfDEuccsGGjEgusJllmjgDhS6vSks=;
	h=To:Subject:From:Message-Id:Date; b=trSbH4oE8H3vfCGPadAH15dZLrNkXJ+qjDNYjKgSnmGW63VzVh4WrAxynGXjdsD6B9hciNKQjvQ0uW4PcFnq2LsDK6gNE4mstZYymVyLYfLKuNrnIW9Ey4FyS/Jw6vNuhko1FWis2H+nxeJKdjIkFTbLMCgk4HL5861my5oSRw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeUfHs8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeUfHs8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D19BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753790393;
	bh=ziIrVwgqmINoxWUfDEuccsGGjEgusJllmjgDhS6vSks=;
	h=To:Subject:From:Date:From;
	b=JeUfHs8SEvzMpAsCfDdhBRwt9aq0RjwUZJOgYJ4tfHettr3ZOcwbjqgwLCVMbwzEp
	 SkBfRcWRwa1fA7ve+JgAANUaISSb2bH+g19gcOZD3bfr4eqofwCV/wBcwKXuGF4/Fk
	 3lenIq7pvW25U4aI6NcGZjv0FnrxL9jgLbeFxGo85Tv7EYo7dDj/rqTx2kCuAbc7cZ
	 rUyN3XIZ5J5NNVmMxwqq3Z29DBt5MFFnwgH6hDtO1dgjX33KLipCm47yFJusDaIXAJ
	 zJKXMNTpkwm3Lsj35TR6j8xH64hXvq18LEZP+Fme3frFTun4vzYYjOqMFgtIhiR1CM
	 XMx3I6U7Zdqcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E6C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379039357.19933.213673963781700639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32cb2ba9f00a59ef6553885b2b4f53d546c68f2b14b0c574119ea259c27f757
Date: Tue, 29 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753790393
