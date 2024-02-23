Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FB8605A7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708687097; cv=none; b=qDyIQb+BArabn3ixJgE5kfIuLp+UMlloGaknmYLkwMF/Qtt4afm79DzkRAaNL0DBM9RsDbvuIqLaQ2FtYX5hC4m0Gvg3Uy5jwvtReJyCvI4A/0356e0GpR+LM7pXDkzQhbGSe8Ltmh8RTqKAiH+jwyPfBm1JH0ExuOD+8K9EnRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708687097; c=relaxed/simple;
	bh=QXnxz7IZTgs8UbD8skbjMHR0Kl5+MIlQy4wSM+5ii10=;
	h=To:Subject:From:Message-Id:Date; b=YAHMvqnFhocqgwfyOBeuLmRozw7lVEQx3WWiOwIglMPZrCS0obZTRfRJXUzzr8SAQU0WBx/2eQIgoBLHmFGZ4hqO0sUu46VlZljdraUURSUWyFwdM01hxwIpxOWe7bB7Z18gRfFsNvFer6R+Rd8iP5G8oLK/LEKC2mfkjvdPRpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQ6kSCwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQ6kSCwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAD0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708687096;
	bh=QXnxz7IZTgs8UbD8skbjMHR0Kl5+MIlQy4wSM+5ii10=;
	h=To:Subject:From:Date:From;
	b=AQ6kSCwBCQwCnGdYqmuo82garqsFqAwrRf0nmGxJH5XG11Gzj9Verulk4WHrUVLQY
	 1455Aa3hxdQfOEab6mchVuDvSURkGE7O3jmO35OtBiUfbHnT/tJUWZKXUca80zb0s7
	 e96o16xeB/OVq3ZmCN7dnqYsSUXFpAkB0fKlb2beHjGGcRwSbXr4qquFrGmm1kQjD1
	 A7jTLRSNaClMOSrWGCm6SR5J3BIJeYfyViJzWyqSDb6UvUdoAfujULJunHb8oh3wZj
	 JHcUL6nFhee2Fb8o2dW4nlkIgh3XncA9CCRzbLDQ4NjyriEi55cf4c9jwDAtSJxOBW
	 s03LAiSoyUDgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6281FC5478C
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170868709639.32257.4518655703380496434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83490bd3a288121cf0bcedb0f259f4390b86aa112aefe7127e3f90c502eda2a
Date: Fri, 23 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708687096
