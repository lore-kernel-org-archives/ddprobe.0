Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5051DFD1
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728359754; cv=none; b=J48Ux8+smgmfwmfkV0RYCC4wAJQqpmN0R4Mnjj0idEHpaWFb6r0zJISeTMqVYCyI1I/PzWuyRPMYBB+RqIcJf13cyzHpQq7h7YlEPls7R0jNVGfB0mr3nh52u8c4uCDhJSmJk0y+h8TznA1re5El6iRrKGff5cxqibTZOyW+ozI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728359754; c=relaxed/simple;
	bh=UQ7TDepAzGSbdajyTuN0KcqGpkb4G1pkjnpgbVOcpjY=;
	h=To:Subject:From:Message-Id:Date; b=c3Zh9SngDb+uok5epx1bEMdhsHYsw/OBB6ec233+Sjx7CDXcA4evPOvqb+75E1/46PZm2imm4V52Wajtdl2Yc5ZoHU8gAl3IH/f3cE68a0eujP/Kz1cNIx1AuQoyg26MA5yd9svGC6R17diOPBx8twSdU+umlO+uuYwX/5zQPZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qb/1x2xs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qb/1x2xs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B819FC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728359753;
	bh=UQ7TDepAzGSbdajyTuN0KcqGpkb4G1pkjnpgbVOcpjY=;
	h=To:Subject:From:Date:From;
	b=qb/1x2xsbfT6j46+uXFupPcvn4YJuWygsp1pF+C6lyzzI42F+RHm3KbKX5m0qZEIY
	 POz0UQMjT6KnbupeAo6pwg/hwd17CBqYwOUNBt0EHSYGaHwn/Ua+yEMvP7/F9a4/zX
	 KHl6mmwzFBpCrYyOj4lMWqXawbxcM+dOFVCOwfuVZiB0NlkrGbQwsf/Egr83WlhKbS
	 BLTvgsvTGZlLFttOZRZxrUZIimENiXa4+t/f408zyu578ClkTERIacaB6XGwOxiCB6
	 i1n0xSB1epCgWnWvYooqAzCtA7i6jZNyPV41wclVDKWVITl2wrHaQMeUfo/Mgqs8Ih
	 DhzbXsWbV8SjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F83CED25F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835975363.12622.12444944787956066396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e65e49652b5bc3a2c40a8d9c1c89b91d6fa88721df8c8622bc6a4bf9fc0b572
Date: Tue, 08 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728359753
