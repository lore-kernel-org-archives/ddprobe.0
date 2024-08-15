Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B40145A10
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723752954; cv=none; b=T5Mmpzaux/tOXMeKq2+KPPm/j2p5dSOXQBFEPsH6/no6bMtzjXoSpATL0eGgWtgax5sjJ0eMj47wSjTCQ4lyroVl0BCRyrM2PfROsHWxbv+o7wM8NnuX1/oXVvBihY0bwgT/Z1icA5jOZfXtandFm4Gk6SeVhSr2bFhwKSBdBGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723752954; c=relaxed/simple;
	bh=yQbcTgKuwMOU48YxcoxXZcYv89LdMpi9wqLBflA4KMY=;
	h=To:Subject:From:Message-Id:Date; b=Cpjqc40/SNxAX/d3PpFhpu+e7VgVXY35ZAzfBgm6x5dqx8MfyZfM7vVR6P9e9DtiOciB4AcDPR9wng3reLFU9bazrIqfQdmVjvpO/WdVKPZPjgLng1LV+ZRU3GxPigeuViIJrQJIJeYUfbDzKV3acEfNfj3awr+SQf+NNKWn5C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4PWZ98i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4PWZ98i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96F7C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723752953;
	bh=yQbcTgKuwMOU48YxcoxXZcYv89LdMpi9wqLBflA4KMY=;
	h=To:Subject:From:Date:From;
	b=i4PWZ98iWcJ1mDrEXODPY22eO/qpZFnnqffJ5PjuNRRenqCA3gp4hOptZqW8W9HxA
	 1sMyQ3cPr8Boz4TBEUnVkwOBxIqriGydJf6uWTluiaDeHqTBllMRC7yPtnS2lKZqxf
	 K8ImU0ePdRE3wLCI9F57LsjA1HmmSuPTWdTI6c14jbfK0MmpWkHJKRqbMO0VVVvUJ6
	 10AHW/a3pukujifPPY9fbAPCo1Izv3n3KLXT8dLsQ0Chd7FTOEfEdau7VduOw8lLpp
	 JYKJPF/8EtkM/U18jOjXzvWp78LiJn8Ew9du8SFuQYf6k4TR/7bnOI11LXUrPyhPz/
	 FWot/p8DGqWxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4035C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172375295372.16394.1593761388519546220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11e5074968d3c5dd937561b2f383181b86d0941fad324c1cd196dbe42a64ca4
Date: Thu, 15 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723752953
