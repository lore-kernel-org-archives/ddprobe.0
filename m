Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EAF4CF491
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792180834; cv=none; b=IpR+bdUjHMNLv0BI5UR6WEK8a2S8HMn2AEtc+QvuP2h9j13xxGIgmb5D+cKfPtZ3DNu+jTyQIUJoILgXn3KnGLt9aOO+sSQZhZ+bK+XUNlEjeRMfg5wVl/MVrJGO/TEyTjl6S681ewsiMtgJhrUl7wsqv5MmY8AlT1aKg9tQJpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792180834; c=relaxed/simple;
	bh=EMKbeyOw7M7At1imHqfVfVVhylsMhY0wJ+LTBuHNc+g=;
	h=To:Subject:From:Message-Id:Date; b=O5M/k/uBJCLjp6sf2OTM4SJdaB7420gsgUHcfXGcFhGnabu0h++QDQLmQk0tQhUj6C1G/oRS4IxSBgrpJjbruR/Kk1ssGLOS4VugBi9UXCr6EEa3q6sETvb+aeaDg0eqb32VOUsarTAgVYiXDALv4JKrlEsdj0rR1dvc/Xh3xs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knlZLdF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knlZLdF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E66C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792180833;
	bh=EMKbeyOw7M7At1imHqfVfVVhylsMhY0wJ+LTBuHNc+g=;
	h=To:Subject:From:Date:From;
	b=knlZLdF4f6Ho6LjxCUgfxXMbdy+1jNnwU/OfpYiHE/8NJ/lB/4yDR1p6bvuXTHdN9
	 PRmWB5S+8oZiqin5HqArJIivHBQUBplz+TbQZ/LmQ0SqAzuXUTk5ESQJ3W3AX0I2xT
	 M3+YuhDNsoGJmjAqJczA6aSFicROBeF5+2obUSFIlMGLM1/U3Vqg9FU5SnqDkSLWFW
	 RocmpzsXD0Q6u6aQu/U4AGqEWeW6fskDzNrcZq43nXP6hPX3TaB1x7FeZKecBeIWVj
	 TrFoaVSZ/+m6ynP6Q/QgW8/eZJAP0bGcYjRkSciWG13n+lLJrMt6kQmH5uQbQK3RbO
	 qBmWTmdwqvjCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EE7CCF2C4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218083371.8786.8450263146499595726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54394d14938ee03d1a27612aa181cddeefdb05501c2d7832939442e194b4d0ce
Date: Fri, 16 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792180833
