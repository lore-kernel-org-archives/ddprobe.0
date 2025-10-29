Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF7C2D6E53
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761700194; cv=none; b=BDQr1dOVIKv5hZvdhoJhkKi4fZJydSWE9ZWeoVj4I8nb4InGQ7FDHTwpRIxFCT+MFjF5EUtPhrL8AxffW2YeTuzLvYKRO+IjwfYMV7vFc5pI27pcZ7pgXOZVFmGlOtZPOyIwpj0DAny/+8hBvy9h0DI2t4s8qccjbOJOmYt/Q8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761700194; c=relaxed/simple;
	bh=acFzs1v97puv9tcv0aHhH8UKDPGlzcceA4ffUbSdalI=;
	h=To:Subject:From:Message-Id:Date; b=fAbhNBzWYb3Jqx5DBYZwKUKdO6WICSxVCC4rELUICdDXvVxZA5mjrqBJ7g9zXrL14edk3LHgDw0ag0G4KvcdKFSjRLzDlgvLJmv8QKsVxWbHarYEOVTfucscVgmH7kLa2ol1jbj+IN6B8nPRtCDqueAIkwNTPb9tj++lt1QODHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZB2+vNte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZB2+vNte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A672DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761700193;
	bh=acFzs1v97puv9tcv0aHhH8UKDPGlzcceA4ffUbSdalI=;
	h=To:Subject:From:Date:From;
	b=ZB2+vNtek1RW/uXRMn7sa1dpPvoOC7qNyjoXYFB+pKJcvOkdiOwAMCo9CPYXeza6v
	 BS2xJBimzfrNLo4gnpTMKltgJxMhGy8F87DDDTf4d5C8vM+xo2CXfebM4z+OLi6LBU
	 kfki1XCDVLYu9gGnGP01d+hODs19POi0frouf62mq2N7YwRgVaIN1Qq8AId49/V3Ct
	 BgRoUcILot3Va0/tFZ6849U1AThmUM+RJ4XD+CVbOaU5FI7VV1tTEPMHJjcAETEq1b
	 YA5BuVVwR2FJTbwa8HkQWOwNBWO2jRTJEYP1vmk+HmObyWWDdqKVM3ukGJ5RsgoNS1
	 mDEOc95bxgbkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9704BCCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170019358.23557.17998529910729880972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60b5ee87ae4110296b411db6ef6f8b52d162d19c53f6c0a6f02f131f0ae93c1
Date: Wed, 29 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761700193
