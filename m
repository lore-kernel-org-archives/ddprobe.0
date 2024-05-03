Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4116E2C181
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714713743; cv=none; b=VdgcUndVK0pvrT5zH9GN3XEgS4VesGO/prv9XxfGEHYuD0d/qKOqJmk2YG8ej+A79K9HhqBgqE5m6VToxk4SduD6oTVGKp1jSq1pQpc2uC/fh75S+ieavOflr0GCHHHD2TAIYWJveWI0Gau0I5A10JvLGbeWUhxzoWdsbqMTf90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714713743; c=relaxed/simple;
	bh=3ZvmxcgMUayXF33Tay+30qbfeOiX63DGe2JtXyYZIWY=;
	h=To:Subject:From:Message-Id:Date; b=NVBo/YJhWYuXU5zq8EU1ywdewMHZjZeSRLVO+C1RDoeohl4hjHrZ3NBCQ+xofJB9AQ/YVmu9ciGPgtsAV30fkfYBzITQlMqbIydIf0kl61MaP2EmiD1dLfAA99W0Kxu8sgK5Knc/Y1FyAS0kFZLtA3evmCQPSMVCDiB8lXIQ3uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWSUTPFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWSUTPFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DA4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714713742;
	bh=3ZvmxcgMUayXF33Tay+30qbfeOiX63DGe2JtXyYZIWY=;
	h=To:Subject:From:Date:From;
	b=eWSUTPFSyT0vLOBag/PERPvwpXuRClC7dNzZHtmT79Qm6GGGRYfzHlQBHXZvO6cGC
	 DqtfkVfDbdy/uefAwf5KAhOrTI0zWm9HvRoEvumz6J9NydeB/9PvCMG28DX/cwRZPF
	 /wWQnEE//FwAuxR48oTBadyygyr2uVsBdCD1FoDr4TU+givUxPjVCyCoI1lw13iSR1
	 xNhTzwrigzLysJKBV6PmQN54lYNlTOu3dBNT1QYjvI1akQm6LIuAglx5rLpW/3sbqE
	 gLnXYRqm9Qq49q3QpG482bLXclNGrowuWVt0HRyIbA/CPc2TvoDa20Ry29huDC5Xve
	 MEs9ZxGXQ5mIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A2DC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471374276.20425.5435753748003565763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc19c6a80dcca084279ed60a64a812be4b4dd92a1786f9cdbb4c23609143233
Date: Fri, 03 May 2024 05:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714713742
