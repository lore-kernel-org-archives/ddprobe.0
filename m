Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10FD2010EE
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773032694; cv=none; b=inqlgCYxQ4H4WlJiOFJ0JIRuCtv3x0g+QrLGciuYu4Og61uTdZQpCPO3EPGnVthzrHyx8AcRFi8RE63PzN691ljlmGzMyylEVogkm3hig3H8PmI7OBPatBo1fF9SEGkSF7tOuIuMqTXSwuv7MYEs5kqrNL5Pyj2LtAnDVxSjrTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773032694; c=relaxed/simple;
	bh=Bp/qTHvcO+nE5w6UEnxgH663NsvLbGDmvLjnmbGFKR8=;
	h=To:Subject:From:Message-Id:Date; b=Yr0p/U04BImXEgpVibXzG7yJC8aG2/6tNqpyljeSMEIqRjwaiBJco6NCvvsx+uWdDZyHFd3If2lPEHHt1gUrW8fmmok3QRtRL9WHk9EGBYUbuvyNqUTHXkVrp5RrYTASWB3vzySieM3Rtenmi++rCaGOGIkVtECj0OxV2EKiavU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZ7PI9IL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZ7PI9IL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F203C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773032693;
	bh=Bp/qTHvcO+nE5w6UEnxgH663NsvLbGDmvLjnmbGFKR8=;
	h=To:Subject:From:Date:From;
	b=KZ7PI9ILKXy2t8OpHGsmaZxUT7w9b08Mc/mN8ohqei51qcjPm0moM6kqNMvObTW5O
	 cFoQ+qfcBcdIxZP/N+GhplsHe4PrjlIHhRErJ4I9AgNBFDXPGDTncocMj+/Y5TzDxT
	 5WeRNKCQUc9L0ZbCExh7A7/Ito8PR7GJXZt6v505acLy/uEyQfgVAI+lb/HG5a5gaI
	 UmLbP1/P+n8Pa7PBz3v5bvNyOVTCZCSibO/5Dfb48KJizKizqdcQuAbtTEmwYt1Ssm
	 ltlhsoqSKQZw5kjEP6iXmLjyH0PRByxxqItqCMjMfU5JDazpKKD4jY9XHcLrzzs1yZ
	 RZcsrZ5j7WfMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49BEA8553
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303269357.1787.5256126603074724424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8dbf0a8edc0868626a420f70018099cb5993be819d3c039d98033ac1cefd086
Date: Mon, 09 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773032693
