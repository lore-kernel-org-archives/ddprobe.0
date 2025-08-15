Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150C815278E
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755269394; cv=none; b=WQPDTbv++eeR20u2croWyaGXTPeH5eoxfn0SmPz/NZxTj21vczemuvfacHXb89cbkwBx9T2mO9yRmrbz6sdlvUhJeIgi4CiEJkhHKeWeMmMTgKOD2PHKKZug9IpSrZ6wcCyNMI3OXkT14lfXBaVpYBQw2lX4M/6hg/7HCi+ryzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755269394; c=relaxed/simple;
	bh=DBf1l+73GIfB4d+W9ZGU5kwtJGYY6BL1l6E2uPnEAiM=;
	h=To:Subject:From:Message-Id:Date; b=eZwc+HaQAI/w7gPj5JlRSUVMzGxmZHDzhu52eyfqScV+JPnaIvtY9bKg7D8/rslNTxky2W1JfKOnlgbwwQs2aqVwFgGo7GVKnJQVu4OKUfnX3zoSwdqgM9AGZLIc9gytIEqIFNjF/8HnZnZVoFyJqgoeJwWuMx1N+j8KNIykot4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEjDJ3a5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEjDJ3a5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1019C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755269393;
	bh=DBf1l+73GIfB4d+W9ZGU5kwtJGYY6BL1l6E2uPnEAiM=;
	h=To:Subject:From:Date:From;
	b=aEjDJ3a5/qpBKGDyPED15wZg6WDJezuCRZ9maVNrVWGCaAqqdOIeFp7C2G64+IBHW
	 cu2bCm9PMP12rdnWB1nXfULzk0j25yITHCpx1BYx34dTL6Tuc8kuN6gQt20HiOpeKY
	 22TM4ivaTC37ct1JTa1h2EnYUX4Y4g6oEV+6zIQOdtmvE+iZqXmx89LkCaOdDAshRK
	 VRd+19PYqvdBMxFEHyIqSeS9mAI8CB1f8Xxtv+JlrdNbJySqtIdVfGD6KUCazFhWYb
	 M0LuUHnSqhNuWLmhylLX8iYZYQ25JpaR2+PQJ3jEIi+0XOubpzLWRpia9UslByX2/z
	 UuYDHDtNlyOeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC18CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526939357.21769.4694961530117986464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8872c0f0b651141c16050ad83edbe9abd6a3e435d290f8a0cdf75a3a8c58734c
Date: Fri, 15 Aug 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755269393
