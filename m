Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D121F63D9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780620274; cv=none; b=UkmhjfB4rKsA8o6Jm5b+zGFjmEXQ6LpwNMguBYUrciF77b0+5+pm290vRtCbbhGTGE2yEGdS7nXRH3v9mYcQBzCpbxfj82DJlw3dhfzF185bFu3TGfnrTStxynHo94ApFsQViTbBZPhVxd2XJ99xMAhoCQaQq/X8oyrZ3padQo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780620274; c=relaxed/simple;
	bh=dVMsLAwmja7vnwES/JDo85DGRLM2opS7u6WZ7v8ioyI=;
	h=To:Subject:From:Message-Id:Date; b=VtUl+lqcSMSNgnlNoKiSeyAabddUA52pzRh6kyWbBsnYFcH6V9VOolVgCgeJam558tZE7gvTaQ73RDkZdoA/4Ua5g7vLFRoB5A9zTBYZ9T+cG7g8hzZTspbhc3mGcLuvUP7aqGP2e3I+JMIrEL5X+6ddHjJDW8pVaacxUhmb4Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbIu1t/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbIu1t/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B4CC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780620273;
	bh=dVMsLAwmja7vnwES/JDo85DGRLM2opS7u6WZ7v8ioyI=;
	h=To:Subject:From:Date:From;
	b=sbIu1t/0TwKUJQCW5Eg3yYW916TmE0jk4PChN6TNdHU+3VGZwh9wScZnfeKJBPO+L
	 SV5et3yL3WBOlVhl8ihlOm0lZEEBJPb02WU9PiM9+utISQdqDiZW3wzkFq/rZfrfR+
	 T8cyXeVuIhEfIoVK28qgPgmcZJjIoD8KicUm9QXxRt6llNuHoKavxVOZaB1jeFXHVN
	 t5+ojKajfXP1jZHvFKNmhTYKm2/cM82KEKRiy7QTPu0eQI0H/U8zUN+z+ruaDD4W1S
	 sNedlNImX24ZhAnFmi4qXrE7LL4nRXK3uUtWu77IWLO0VLgruOH851Zr/RmBMT4hC2
	 UPNuF4Sb9TLng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C28CD6E75
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062027373.19013.14456029663977915372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571310b55615c9a41c919764979d28b92f4d9dd53e5417b85327e9da6580adf6
Date: Fri, 05 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780620273
