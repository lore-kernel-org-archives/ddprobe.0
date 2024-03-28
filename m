Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A0C1272AC
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711643297; cv=none; b=rVLwTigSDEjuEzsBBJyil7LoqBrKOQvZHO/pJzvc6makJK5weASKlrxFa1Pg2ytgaBjdgtMTshbZ5W7NHsKlNeZTv5SpN8/O6+E7dIjNWeIA7iVORgte7h8FkWASs8D88+CoFgbOl7j9ykDCdKUwDweE5YGSBB/CBTz9glwggg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711643297; c=relaxed/simple;
	bh=uvp/GZsheRvES54GuIixMHCiQlPEgdS6fuhuW1Jz33c=;
	h=To:Subject:From:Message-Id:Date; b=GUp9pKHv9jo+WcNk1Ds3l/AF9dH0+wH0GV5Yj7op82tlRRJQuT/ITsfgTzNH8HFsaIX36NsJcw2mNk6OpYSKCa1d+vQ2qUpsoD4DR2CE2EBj0OR5v2FtbRSdW9JJC1ZE0+ggOTohL06WdeS7O+5FEggTPFPm43WJ6Ntg2hj8tZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Afnf3yWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Afnf3yWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 906B6C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711643296;
	bh=uvp/GZsheRvES54GuIixMHCiQlPEgdS6fuhuW1Jz33c=;
	h=To:Subject:From:Date:From;
	b=Afnf3yWkM3oFuvm8zmEpZrVvNJA736a6R74LMxzMLbH+vVJrEeEgoFS3dJthA0vvE
	 23LRQS1usD6Oo6r2Qax0tKdKZ9tYGdg21GTObEi6Xc0idMXy91IVkYs9qg4+8caO4L
	 g9QqclAOmFnTiSMdQwFGa57R+uBzgC9WHUYUojBlvFQ4aulQeG5G16IdWhQVHR+d+a
	 gU3VqpFzUdaouuevsZUzgiQqXH+f9lxE5NJGC3CKiErFE/OFLjJg9CYF5oOP6vy6ol
	 fK6gi6Am3qGgNaUqn3O6NpHMAUwY8urRwe2igSyAifsW5YSnEi7Wi2kNsFKbmIU4Rk
	 I8vLIPj1x0aXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74819CD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164329644.11827.5384040032541689113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4cdc926050d259ffe1c9e51e9c961f40cb735c69a1a1848d2583766142f47a
Date: Thu, 28 Mar 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711643296
