Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A79812D1F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765607574; cv=none; b=agH1IyiZZKrem3XG774diFRMK3+tdM8Hg+G/lSOpNtWfXozx8dsPXL8eAhWR95soL0b6d9P9FDyfcB5U86J908QRT163N2a6RH8cAhGKiFC7/IIzqpMJAptKrPpe7E9ore33q7ZBudLs+urYFWPHOFuW28GRViUq91QgvcFsPV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765607574; c=relaxed/simple;
	bh=i5TBILOevtmONgKPdd0YQfLelJGFbFKy04oX61MuR6U=;
	h=To:Subject:From:Message-Id:Date; b=GMNhYFOzvkg0bKDjA4ZH6PczH98jGny2kxVILmDkpnZeWbTJrIGdLnKbiqNdyC1cfSkYaX+JZkYAbG2IHPzGYyLlf+DYscbSSaU3hqr2+lnSmHcDyGNPHcgjtZxWOe8pnVVspibOiyedST1U4FekcoyUqWNDWtRL4JQAawoLyZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaKV4GRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaKV4GRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3926C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765607573;
	bh=i5TBILOevtmONgKPdd0YQfLelJGFbFKy04oX61MuR6U=;
	h=To:Subject:From:Date:From;
	b=qaKV4GRP6UZ8UJhwUk0uo8VmxHUhudCZGsw3SdiLsaizFcC+yaU5ecF0bNJZxAPbo
	 hgE6pjHxHYHXxbJCKGrjuCaM/W+OdQA/3392pgQfBMdPek4myQ8KRKxMMypzgl+8ij
	 Zn+Pv8cpdokYsyAA9Ptv3gwHrB4qpH9f6E95pr3TIrjlVHElPM5wqG4dWSU9TuhfHO
	 3vNawuEoveSZMgkTLd8rYLRQG1Q1Sif97J8E0ty2aunkg2VXubs3C9ucg7e8fshTCz
	 2y2uzDl7RFSpLtok5U2zrGivbkO+LAew4RhaJ33dGOol58p8JZ0pbQj/w9sxJW6pP9
	 nRWVOZ7MQ2fUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C9D59F75
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560757358.13909.7819533019249782900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f52e28db844c72cfda2141b493765d1c4ef010572f6a36bc15845462ddede52
Date: Sat, 13 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765607573
