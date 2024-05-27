Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7D61581E2
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716811463; cv=none; b=k9Su6fwk4J4nGTl2dZgrReP4tsYWvB3I7rEDRmegMQtiHypV9NUPRBJUpc/Ax8h3HBcYqLhTCse9Crwz2opIw7Ue4IxfGYl5lAiJxklYmiLbfbP0+LnmZ2tyy9UVlxvLwk9bX7GEwxSqNbOV9jj+NFjPTyE15+B2lQOzmw/huys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716811463; c=relaxed/simple;
	bh=g0Y6+9MgtOawLiFNtfdLo2urwVSVNPTOTDA9J7ERNuk=;
	h=To:Subject:From:Message-Id:Date; b=gd13mH7jGHr0unPGcrilRyyUUEZs3rZ+UEP4j9lcTpAf5pRHSwYXnrMAbkhex/U9fE529VF8+4T3L9H3vm4mbidu4olMldPG6x1Z8tM9oKFt6KjsV88KzIlEqrzy27+obeBLNCwhBNO26DlKPhLFLcwC4Hd0ob/VtCGabqFwxZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYt2PMts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYt2PMts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B1EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716811462;
	bh=g0Y6+9MgtOawLiFNtfdLo2urwVSVNPTOTDA9J7ERNuk=;
	h=To:Subject:From:Date:From;
	b=jYt2PMtszvjqddf+AXlGZbKqSSB5OeAUZf84tPJMVqg/Vpy2jEy4pqlQwCCEzkKx1
	 5t/a6cG8Tsg7HrkD3MiBoZug0Y8dAiu77nRuJEXhIyLF0pQ3AnHf91aSwxp7sjEDMt
	 4YXeC0FBQXelUaiMJZ08p9liTN+nnxjqDM2hoQpMIwxcOSuEoUf+4Nq0PEB5GaLG69
	 v7wIkRSxFHcr8WKt1q5lvjqSTOdwWyt5ue69SH8H6oKn/LSgTNhJ/3/S1WJ85gH8TN
	 Yeth740JK8M1m1uNSSJRc1TllecmrmSPMeXh2lO3yxYETff9inRZ5rgiWfebt1kJtV
	 hqvh/9Fo339LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B8CC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681146278.2351.13136240736938889862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a2762401f72c09686dfab6019d84a6abfa096b00ef725bd948d62c9303dc1c
Date: Mon, 27 May 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716811462
