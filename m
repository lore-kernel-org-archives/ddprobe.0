Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298671E3DF8
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756577994; cv=none; b=gDY252XO2oFifMzNuCQVfXnuP/3JXRmuEpO5efmqF9HQ2QHZcrXv+oNUKR5ji8KaebW6Mh00SoRdFKA4g98y4tccMVCGr4CIxuf0J38vVjtuKUidDA/OGgRvLJsxYWQDnVAk8IhJE2w3MZIHniNmZjzlJR56Uo8TyCi8SM8ZOj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756577994; c=relaxed/simple;
	bh=QgIMkFgjPLdDqSsHpyrEwxNtYalq7tn8lje4ENMewRU=;
	h=To:Subject:From:Message-Id:Date; b=ZHfNkLg1zqiGM73oYOcgLkYSARFnvRrzYax2hkOEhs7T8gKUOEZRG6oYW1bAIXjxf+iSqdniovWfn4IN+1GzI28aRRgGwKDKzEXZMr0H/dJJ8V5yreuAVRhu4lDmUqf/Ffpf3GWYhCkPO4vq/AwnaZA0l2LQNw9byUvuVb2f+F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lluS8nVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lluS8nVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3734C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756577993;
	bh=QgIMkFgjPLdDqSsHpyrEwxNtYalq7tn8lje4ENMewRU=;
	h=To:Subject:From:Date:From;
	b=lluS8nVUpvTAzPvN1Rmucy0Y+bJZwEJipUmNKeX4Ik3VxOKILUYhTPaxk5cuE52sA
	 AmL5181B9Vjn8royI1HkVLao7pYYKak2Kz+lqYQvOjP+UOBzgC39fHRb0y0P58yO3H
	 I21AkSNQUsRir3qwfu1KdmV1hVWPoiGXK1QEy+iMdt8jfigGhDPO5VNqZa+x0yTwQ0
	 PAIOkBPZnZsPAT1JMltPx2flfssZfVQq4Fwk5gnr7Ti5zuh7YQxsBjQVZKNNfKF002
	 4My5tDUStpu/t1vlEaAyCrXCHDu8GDJy++2BI793qe/qYhku5cxDs2LdtQX+kwPLdf
	 HULUjcbBPjtEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA7CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657799358.2694.14390451877900945233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01f1458aa046d041ad5230653be6a8bc65ddb2d8fa547b1628d50dea7ac55ac
Date: Sat, 30 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756577993
