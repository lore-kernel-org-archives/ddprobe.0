Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0E51411FA
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717489523; cv=none; b=MWbq9T3+3QdUnSCeiobJQUgNWbYGGVhFv5ouQeM2ISDiJ+Cu6P0CzzZQU3qE6cU8aomq5241G1mRdUosHAIhAasFjKeZa0XCIG59sIyvZPMBBVTmywvRZ1Qwv3j5TTcJuCPp2jf8DDpzxV3mooNEkWcUSuYfvDJzwOjqJViVHfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717489523; c=relaxed/simple;
	bh=DS56XJqN924Om3npCG5ICvw2lb/gSZeDzv/6UCaEPgQ=;
	h=To:Subject:From:Message-Id:Date; b=Fuq1bXGNyz/oC7Vizu6gXy2dtZ6ZTvhwk2AlbL9bYBbWuYtNwKGmzOG5irtborSQM1z372GdjhrEV76gKQUBkiks5Gl4ABmT51XEjqwkAzwDKTzvkWbAJo4NAzIqq9MGKDJnbR3Q/ueHa0XXf65BESbLsqwjq90FT/HaiY0LyOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOqICJWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOqICJWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD652C32782
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717489522;
	bh=DS56XJqN924Om3npCG5ICvw2lb/gSZeDzv/6UCaEPgQ=;
	h=To:Subject:From:Date:From;
	b=JOqICJWAfH++rZaEkGG6cEdVJcIqP60J7POgDvkZLowZD9Zuw9vDS9hB3onf7NR9V
	 aAGVWmlJDmAiwiwbX2XITKJ1vqHHyngiPwmw8XH+XG4J71ce4xjky9yC/VfoDPiCue
	 zsEVcB5YGp7A27+5DIrW+tuyqFaPmhCVgRtN4a+fDlbU5nULdpTN0S8fLvnsBcB1C2
	 zSGX5bJHAW8Hx02HzeudyC3cOkMunnc3ao945r2G9YlVUKhs73jodDy4vgh/hKofmf
	 a+LsEldqo7HXWrf6BLKszxiiDsddestAd3/+UjPf7oE273cf+ggK+Q5BF6vtFifMGc
	 2QWgbXwxKyP/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45FFC27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748952279.4279.8989848012453262717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380ff29e244be379c3ace3f128f9bd6b5da6a6d8f2f6ffd462d01fc0997329c8
Date: Tue, 04 Jun 2024 08:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717489522
