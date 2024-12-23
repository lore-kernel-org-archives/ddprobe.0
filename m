Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3248513F43A
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734939954; cv=none; b=Rqo1eq8GzDb5N552WQeBRKjrVmqrvF2hyYKOIfTb3NoDnm/kneNEiO5vJZgpOmGCRH+zDNl6OAMUtVDfLBms37pcjS1Auftb0mD1Pvophb4zAxbgOzWJ+SfVp94t3dazcxaaYMY5lroE0xhqHK+Iu8g9xmfda8K9kKbn14vpHw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734939954; c=relaxed/simple;
	bh=igtkTeKm+Wo6JG8Fk8xMCAnxs+EkZ44ypsfBoUTEbNc=;
	h=To:Subject:From:Message-Id:Date; b=CIjtWzU5TAMgnY+g1LPO2kKXzT7ji7DXfYnbRkCnwzHDMTwbUPODOyZhIK3w+QCL2khEvsSDstpJloOLiX3mhK6SNow/MVEqswZ85Jxl7SWVE5a7OG5RvKv3UJWb9ixtbMYLz7tWTV9EkLYEWVTMl0xn09qTL8K448h/HY53YsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvbP2jw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvbP2jw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE729C4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734939953;
	bh=igtkTeKm+Wo6JG8Fk8xMCAnxs+EkZ44ypsfBoUTEbNc=;
	h=To:Subject:From:Date:From;
	b=LvbP2jw4DVTiCQfVJq0d+r0xoDX5mnbOQPc8h2O0UWsmrNpddfYntZM3Z4XzPAftT
	 Z2Jr4KxPgnosAM5LGW4Z8Y76I8rtDNvLmWs4EjGGFL+NbcOY4De5rF4J+aKUMPGR7/
	 xbbFTroVHwi3aFWNcCOv2MvpQM3JkQJbOsZyYiAU7SND1MEfEJlTv1uZKJo4O4ICM1
	 GOxUpQE+2fafRIjokqOQJ19X5gkV1VB8jqZBIEaH75DT95O5lH7TFR0a65mk3ZXo5d
	 MDWo8k7QBugpgt70mHrJZTIZKdTNf2rnoLnfqy1OYoj+Q6sLMZSCK0VNvNCh/2h3XN
	 JjTlv+MVRAloQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98266E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173493995359.11065.12394273028867236640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb3cfff7e45984e748c61a5adc65c41cc1e19802d12c411219e2f60a1302449
Date: Mon, 23 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734939953
