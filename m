Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38752136658
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762069194; cv=none; b=hb9JaHxVGeEHPaEhnWEDvZ8O31przRbfoCmzF2dUuUERRfq3HMIbawtKrJuGZrSix/JiR0Z5SdxN0zl+588L3g8Pb1Ui1FjBP4mReaAW0+yFOC9KzW5hseOEIZ8L4/GajxVyZCIybdrPMTjlDdaCElxGoH2/ZEcIaGiqPgnKWQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762069194; c=relaxed/simple;
	bh=5BEz9ync9CzenS5ZPs4x3btMqix0N/CD1vcfw22dpYo=;
	h=To:Subject:From:Message-Id:Date; b=mNmksC0eQ4xE0KhTAFjmc4LUrzScdUvQA7Lx9WQ0gQDAehjaMuThXJIMjaMO5PBG96OAyJ48ZSZig3HLeDG7GHWXPOZHr2+XjoInmHLvClBxbmf+N6/AhKKt2G0S+SCZlWl9x5Yd7HK8a3RpJV2rHm6aKiWvQQ8+F7tw1VZB1Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYoE41Ho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYoE41Ho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7865C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762069193;
	bh=5BEz9ync9CzenS5ZPs4x3btMqix0N/CD1vcfw22dpYo=;
	h=To:Subject:From:Date:From;
	b=BYoE41HoD1lrxt9qc9/rSqdRB0CgluHP8zDaR9DBRMXUAIm7ojm+NwM9egjXhPWhJ
	 jCqzhgbx/kdu/eabxboW+E3sSoVIvdbqK/qdCGgyDPFmQkt+N00jUeUm3VEf6zEnon
	 NcVqHAXvbEbQ9RuikV5lWJXLgXUIxeXp3P0URUaPkfvReYlcosaeYvLIX7GPX4Ce2U
	 F0dyDx0oARNOY6EDX+mFZgP5K/u0tP9aKlXuYvDhUzqPblUnj4dAZOYE38f+OhcIUP
	 quvnZOyIvBKAagiuiLiVKGEOp4/LFRM65Pj2U0zYlvsb3Gga2v/0/+l6F2bdDdbebP
	 DWTXx3aDWo+pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3CCCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206919361.25916.17392068048266973064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9bc2ea6ed18bb390bb0232b6ced4949028e446f3fc5ccad231d3d7adeabb8b5
Date: Sun, 02 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762069193
