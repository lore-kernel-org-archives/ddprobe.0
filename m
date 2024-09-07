Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1237E12E5B
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725705954; cv=none; b=LQtGRyVxQ6QJIiVLTBaxnRhUeUy0/15+i9KyZEHCdVNfw1z0KJTAuYADZtV140jzRavAnIi4jHCzXzIferq+hveD34aUdCEttREs4tjjELjxZDBoK68nrwq84O+rpR7K+9Kcw9cetg08Kmjl2oZyLyH9Q+qIQLkTx+ft1cOdwC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725705954; c=relaxed/simple;
	bh=bDEdyupR1YjZF0YnVIO5Xhjd3Qhtr4WgE3sg+sKyXPQ=;
	h=To:Subject:From:Message-Id:Date; b=tQpHxQvskSxAEZjhnS/hylhI8KmD5Pw8APA0BMQaTK3zPRyorNKCaKU6ShnxF5sMs+3siWrZsQjzowMLCG+Qchi4xTzuCuumAn5xzzgjqbCD/y1H+niNEW7j/dDGpLbHYINKiXdMd+bpxEzs0DxjlOTPD1n+OH9xhjhuLHGEnnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUGZM0cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUGZM0cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC8BC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725705953;
	bh=bDEdyupR1YjZF0YnVIO5Xhjd3Qhtr4WgE3sg+sKyXPQ=;
	h=To:Subject:From:Date:From;
	b=fUGZM0ccG9zCxEuqK1UmGUzcKV6j9BIdW0ztaggukfwq3q1dGYiVYFC8fk/0Nyyd1
	 i3Qre6kH8bGk2yHvv4yfIUChOAahRurjjcpzJnSBXNBuJvBQzEiOmPeRwUQbZ4xJ+3
	 MpFvEwLGklNMg7hpRC7X/2jRlMAaBIASITbOj7Fsfd0d6kIuAFcfuzIMfzhMoL7/K1
	 cm3X8DbGL6w1nFIbI4YG/Yymz4D/VmuBBqaBo3rRwZgcceK1SZSz4Iro+1PNT2PMsQ
	 8ogkng3ZvZ7BbXF/bqrpTv3RNG3CmAOe2tMjQp9rXiPZj0DB4b/K9ieZ4vMyXxjSX+
	 kWQlV0PrltL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144EE71080
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172570595358.13106.10258398737991214616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171d003e1846c68118b9780a69fc646b2dd87a353afd2eb3c73822ceeca1c571
Date: Sat, 07 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725705953
