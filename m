Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A27D3148DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762345194; cv=none; b=j9dxMjyQm8nPIT//cW0aiIX3k54CRVS44FIEVSxJoWUGZorg0hqim6dfaTcpeeRB8Mv3ZnnYJkNn2bUmuYNuVVV7PEsH6ZmbJ2vNN3LbDadQf/vsgVhTktEQ59HuF+VlVg/WCMhp5VxKrhQgFC8TPCbdfl50yU1FEtD9xSHBJKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762345194; c=relaxed/simple;
	bh=sDmlEFXVkMiv+M6Q7FWL10Vx8K6tW40m8KpZthWcIX8=;
	h=To:Subject:From:Message-Id:Date; b=HTf9rclfizcT6wW4XEqFxKGFPRZHogixuCa8+DHCNZYFhyC3O9+WN+KzFcG9tBfaKmUKvcPAzdk0a4g4h2E7BrVUq1dBHfq4/KaLXjk6cE/+5e4KU2/8Lp6aQA7DuliKmg1cK5JxzfNTyVoB57k0s6OnpTL6ElnZ3whK/htzUMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYpUijwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYpUijwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D55EC116C6
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762345193;
	bh=sDmlEFXVkMiv+M6Q7FWL10Vx8K6tW40m8KpZthWcIX8=;
	h=To:Subject:From:Date:From;
	b=uYpUijwH1qIFZFmaE3tnM2cTTmJGUpQnuxPR98QthP3deIn6QJ5oRpagrtJJ5+fSd
	 W0udAXj7yWl1XN/DmDU//GUuh3Id908T4m+QhGZBsVbyvbdFlOYgQcbFiGaR6b179l
	 iAFiZV47PkWEdXCQtXO6/z3tMCu2mSOQ1Fv5HqRyajjQyuTMzfqkg1UXbVlcUrcLw2
	 GhQsTiqXsFz3bRPglJlJIvyjxia33ghwVIFn7tKklpgUdYaNPppBF718sHStK9bmwi
	 tsq7M4P9sqrzrZTzOHOPeIuQlDC8MLczWjYMtiwh7HnBO8frYMXWlv/VG0r8F62ekm
	 KxN37NvJXFatg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF8CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234519360.15419.9004062249419134628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6827da4f7bb6d1570feec7616ac0e41e6be743891322d9a2580850436318764
Date: Wed, 05 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762345193
