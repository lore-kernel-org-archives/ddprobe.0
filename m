Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003822F5479
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755012594; cv=none; b=t+KcX2q0JIdozuRRYU5NUC9xQDrZuBnJhISjrl8jzD1j+yFGi5J6fu7OUhhooAV5b3RrWqEmGRmu2tMBtbC0EQ0pdEge01i74uMvlUePkXSlEVED/Dute0qlDDcavw5E1rKpTmiBgdviGOoHdwvOsydmkIFpBIV6r0HejtOvkss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755012594; c=relaxed/simple;
	bh=8JayCFG0DwjxxHzD7Ku+G1cMD98VvuC28V4WA+NYW38=;
	h=To:Subject:From:Message-Id:Date; b=RJkZqw7WrZoF9iAK8d/MMmDA/bEwsJ28EN1HMvnHfVVQkwRdB4ZzWg71W8hBcBAOcY5YWlgeW644lBW9vB3ALUmlXgOTY+rzojM6AfwknwEBk1WXxFmDOvEaEYc+/JnZOQcEjZ4eqEpJoJ735iZg8V8R6N7cD4oTJfEP2jdmSJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7qEArYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7qEArYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E102C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755012593;
	bh=8JayCFG0DwjxxHzD7Ku+G1cMD98VvuC28V4WA+NYW38=;
	h=To:Subject:From:Date:From;
	b=g7qEArYpYjo7dzSU48Auk0BQtitfuvVg65i/D9Yq1/nGXZAlOA0K4mKHl9MZLh4ow
	 wUtEncN8W5neNEPqKNjjyUBEg63ALDgyCfiHu7th+p0Gr3F7aSaQ+V9l3HQjqvzpNT
	 0q0VaBycGjkC/M0jiDM70HltT1vTjWXYrBZda8DJb+DaEABKDEDNoIvaoyUheGBqAm
	 SNOij7ptUC4ER6xWClE3OyFoL0p8U4JUNy7EgYHimVIWg/alo3r+o4h+2p6yQXQj4A
	 tCAV71CNLe46/lsXJu3UDByULGHYq9/QQ7JxFmhNrtYP4PWW2p72Pq9GNb0kjBY3Oa
	 rH6jOP1vLTxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA89C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501259358.17763.8165072525831424663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205a9b7f5eee5212771c39f57ba897cb52f69a470824ae6bda5d002f2a94a0e1
Date: Tue, 12 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755012593
