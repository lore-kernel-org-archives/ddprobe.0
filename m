Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12750171C9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736300754; cv=none; b=kvg/i/bYWTDoRaXHANCT3LSt9VIKlbzfDyg/nUcDsGcIWPPCj5HkcNo0hbKxbfqOadQ9f8LX3M1bxGbqhqtrOcArSGk6wYrBY6aGXuNY7VNW7P7xtA6v3o8mbx3trNe6lKoA3JnxkeHmbZzgr1k8GfDsnAXFWTBvTpktpez+i8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736300754; c=relaxed/simple;
	bh=hBPZne62T8TxzhQkX1Lnt1aX/SC5fm0igDRobyD149Y=;
	h=To:Subject:From:Message-Id:Date; b=aV2/uRQ3e9cgXl1qkVkptwVLs3L8bmkKDsfFyNQuWVFEtekTTpYgugf7vcwCANyhs23MfCDK4icn8OHjNbSIgYtV2wMEJmQb9SidK7zcInSMQjig6FkiQ128JTKbi2r08y76uNmW9tSUPh/vGUJrQ9KGCq1B6APh/2i2V4GDSyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7Q54fvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7Q54fvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC9C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736300753;
	bh=hBPZne62T8TxzhQkX1Lnt1aX/SC5fm0igDRobyD149Y=;
	h=To:Subject:From:Date:From;
	b=l7Q54fvQT+QNWhmwa3GP+B4M6TlfmlIGCdO9yvX8WbwwYdTWZAs5J97m2qlaucCts
	 HGJaaQzLjLaruTzZO66xwVBgJLIQEfzFSwa8NL6kKODnvH2Do5R0PVOSpVjTLqsF6b
	 noQaPV7WYeD+vxGwQkJkDR9CU7kpHAlv6bhOZsko04knxqxQmHYSrFjuqltCvfIviE
	 v+R5lE6B9GxQLB6um/TOS5RdM46ShJmmTfSta5CyN4rvgy4bYPySvCtGpeKPRlz99L
	 Kswsf/coRyFIdNsWr/2CRfTRUb61aj9HqZlmsFwHlV8uWMdQDO2kwZF9R2WQDVxyD8
	 AKGZAf9n6g1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93739E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630075359.23919.553330478155681688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f36b506bb0c060e04fb2050239ee268429d7e9a69882ce8138f3a7e0d2a190
Date: Wed, 08 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736300753
