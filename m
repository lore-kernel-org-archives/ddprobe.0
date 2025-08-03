Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329391FDD
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754247595; cv=none; b=fx+FEvFvrgYPwP47HxPQN2di/kEq+P1vYETBc+y/3vU09pG0jA/6ji8biJ1tk2R6tf1ploll4coHtE7G7FOWMjQNuYmTscNzVUBpPvaHeXbjnr8HiBDkxitbtFWbBOV1xqJpceHgDH4PhUrqJv+wByPJ/mhmF/PgSLAnxw0XXvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754247595; c=relaxed/simple;
	bh=707kBe0wDx9/KLIjXXE2R/aCrCKXsuUXajky/l5Uu6Y=;
	h=To:Subject:From:Message-Id:Date; b=Jn6aJTrJtYKPoUwUKi1tm06mklKuEnnOhUUvSqfNUYOI5kM48ud9UNZrTO1+dwaJpMrm6TElsLNcGXqTpCHgPNtKcX7qcgVK6Y7Xajnn8Vm+ZbZVfyAEGSZcIIcKiaAJEmsnKDuyidZyjZVwHiVwGaNrjJAYEMuQEC7En3GKFlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onybcsyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onybcsyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A743DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754247593;
	bh=707kBe0wDx9/KLIjXXE2R/aCrCKXsuUXajky/l5Uu6Y=;
	h=To:Subject:From:Date:From;
	b=onybcsyNkA1wUVBiksxu/MLgCDmjnmY7+73KZZ0l8/PuIMTm22sonkayZEPv0/OBD
	 PDZjRv6YbsZpreVH4S1X13YnkOLVMcanGl+O7ZfIsGRK2skNIy1NyGWnHFyXjghWOK
	 VizK0VElE/JrCKpT3/P1ZEqkyXKmmhq5UdqF+gN4EZoGMayq3GePw4fhYaHLCNMcRB
	 2kJgT9geoKv74F4HCeUoWDC9Gv9bmrqpd0AsM5fDhWKcbfBF4I1qJD//asGcziXXmw
	 NwI03Saf8Q1o0jRg/qNhaXnnajaZjfjyavASqtCeiiFgOKIaETAnRyBec2U9ikaECE
	 4ygcxZndGI/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B5C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175424759357.14131.9572071612926390568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15104985282c94bee507db026e71e7d89a1059b85c1578282af8a8a601421880
Date: Sun, 03 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754247593
