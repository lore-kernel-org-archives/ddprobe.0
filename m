Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB294690
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750486794; cv=none; b=lHUlILsr7Dlov8VPlhX1oXmUlLf1mLYQuRibUiXy3TPx74DaJFEKH74PokWZak6hU9kyZFng5NoBHeZEST2ECZOVokCjydSlVS4MqB3yZxqVelVJFHB3tfKPSkjrEpR5LM2L0T050xYsyDnMQbgGaPJA1lWVEzboqqb2tVxWCcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750486794; c=relaxed/simple;
	bh=1ML9L/D0hAPYN+vyXPoafOEbIDBOH4+pg3sPb7VxmoE=;
	h=To:Subject:From:Message-Id:Date; b=JwMqANqH+BwpbGIsNFUd3o7pMwgp7Iya7qDc+YpBBQfsWcs2ls+dr/t+Syl0MpbWfXZ0RSvN+yj4UPRklRQP2tIt9ZPDtNar4QlerLlyyWiR5FkpoykZk4KcKzLGh6xqaPFRLjB/6t0e1VRZwg4kuSlChYNi6FTJcQo80rzj/tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iScA8K2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iScA8K2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61CBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750486793;
	bh=1ML9L/D0hAPYN+vyXPoafOEbIDBOH4+pg3sPb7VxmoE=;
	h=To:Subject:From:Date:From;
	b=iScA8K2JLLIT8FehGT3QAHw4M4kVZueJuh/Ba3jATPzT/nsSqNZmO88be1cQjXjo5
	 hjPsRltBiAugIJaPFHuFkvG2xJUKfdPTErV6XKfkET6NHbEXhvb9la1TmJB6FC39es
	 8V2lvUsvZvCYFdKmitxu5nj1OdwAbl57lZcYNsI30Aqyy8xrlfjeED6WvKY24AsmEp
	 jMDDyg2MchneEnOhAOlS62yd1qjfNJrWs3Jcng9ZftCf9S8oYPEK1xAMUWBOGYg7lI
	 eHs68iiby9NlCvG4huZVO0k7BUYUw21hqKPUo0uut4X/SvIRU47k8eM6FTtIm++clb
	 ww8oBYJ6EwHTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA9C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048679357.16722.13361025507298753763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527b4470d6b17807dc95b16ed8c217761a41db44640fc69240f2fa4510e0bd5a
Date: Sat, 21 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750486793
