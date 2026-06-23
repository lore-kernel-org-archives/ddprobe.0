Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265DE12B94
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782179194; cv=none; b=jErCcP1dHJaYkrFB8o9FgVmObKv98qLcYO2cM5XLQDSdJaG+jlH9p79a4jQf41OkWPY2lJQ2aTR2GyeIOdiEe9tJmVbMNKZlNloezgiWHgQqB5zm8nANHgFlXH5xvZSyG7nmsAyOFZvZQCUy2iHFT460KCM/PPjynvoYeZB2PmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782179194; c=relaxed/simple;
	bh=6H/sjSeduGi060Cn6qmthXxIcpfi6s1VemRKrDPX09I=;
	h=To:Subject:From:Message-Id:Date; b=HYuOGJVjeqxBFsGmvKudCKD3xUkEtQpypLWGJo9l6Ve66TLfOH5cULhX7uoc7p3Nl7SjxZNC0XYYgn8O/C3EPDoeazg9/1NcMwL0cQEw7Jqe4UA+o/pipMwWtf+LW8sjGV19UbTgEbOzIERsMjz4Z97hdPuK/kPeAInE20o5O1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lg7kQUZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lg7kQUZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4021C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782179193;
	bh=6H/sjSeduGi060Cn6qmthXxIcpfi6s1VemRKrDPX09I=;
	h=To:Subject:From:Date:From;
	b=Lg7kQUZmoqUo4Unogdq7MTecSIN96s7l1htqvQCQySTVD+kKBC5qDejIl2cDYlLoa
	 D/ynkjhBdndD2KrNrMGKJqTENIA2syjnEg8hy8yEFyEPKxAXJP3PG62Jxgipb1HMLQ
	 M6/ExxrqwCcu6BLi4X5vhOK0ie3kaXvmlX2hikVSYLK+wSKievvfW6FAfFmeG37YUo
	 tmUDfl5egSofJWVen45Fa2MAEJnVRBRzHBVHp227qA5YaAZUvFKk2WvXYGS2CbiLdi
	 4wth/HbU4vfjYL7x9RN399z1jZqPMalX8vfTLDt1gpQTAnUah8g+HA4Aq09wkYN5iT
	 3/OmWjhJIcdcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98EACDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217919368.20352.11973286306533845180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac5f706a3926ae63b9ed0a70e5671e18fd291e70763afd8bd5dcb3e577351b6
Date: Tue, 23 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782179193
