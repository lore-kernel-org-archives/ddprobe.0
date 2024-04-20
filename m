Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A19D179A8
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713612023; cv=none; b=CPufjgsAXhW3zzwU6O7axyveAA98CiDNXLvebgiBpMP5HL5gfM+ApK5GE8JaTLJb9A/cPUrxDXhh/lHrQG712aaMVWehHMvq+z8e5G89Up+YTEwE9v73Cz/VinVYwgH3NeZsI5UiszhxGc2ebuVvZGGrFFFLyNRODNoaT4CRF64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713612023; c=relaxed/simple;
	bh=jlnZtJUFinfToQI8zCqNFxwqEIvQmF8wICLfP7JIjwo=;
	h=To:Subject:From:Message-Id:Date; b=gC/iWahryPYQ/LMjV32qNraX8UTNPtjklrYL9yCzv2mzQ/tagyAMf3Y556a3rT61bpdifdKUDHNktfogOltjUyOohgj9eMKBsa0vfMyZfduc2SovJd61fgVn74XdtaUYEqfoO/vHL11vL70D2NFtt7v9BM3lMw4FOLixyREP3Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNCn2I4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNCn2I4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E11C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713612022;
	bh=jlnZtJUFinfToQI8zCqNFxwqEIvQmF8wICLfP7JIjwo=;
	h=To:Subject:From:Date:From;
	b=MNCn2I4EPCznum0Eil3cPShTyzKxLtagOmDwZV5WKUZo6J8d4kb5ZkThaK3dsrKvg
	 EbEZ4CT5GKWElQOVdaNYJnCYKAi8WWh+XqPWtTrsuI8uuDzhX8dttA90/urSHLFL1g
	 dTc7UCabx7hJxQ5dl01YsdtnfCpf21h2vzTrhXDaPf5uvnBbDpGhzTWxBXcFMposow
	 8cyRyUDfEgAr9h+jIykVUJC5kZH7/yMgzuqaNPC86MkcqjJYO1MJz7d2WrktiRuBXV
	 YjbKZaWb8gj+nPxKqDN/iAGabF40REwi8nmBvhW49dsS4zDXsn3PmVf5yigWkVJb/e
	 jNCxj8UoY8QFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5382C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361202277.372.15133637415304757100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6146d285d2361eb0ded65f65259554de50c2e1f6a56b3a04fae04e7e5a757403
Date: Sat, 20 Apr 2024 11:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713612022
