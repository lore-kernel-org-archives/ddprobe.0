Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AB720127C
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732734354; cv=none; b=Ifw2CLhJ+08A/AuAVgsVwpD/6aDCeU9zjX5tAe2JIyKyV1BpBYAzM2GNMvIlPHIpWvI5f7YmxEsDzvJsEoNfNSlVGPUYtWOU/abSGe3SRBOJldhYWsD69GtYtM7yoYYqzee7if4vo9ACDIsO8RujddV6phqbn1NSmkIEIWqqiWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732734354; c=relaxed/simple;
	bh=aWsocyudgA20w0XPliKEoDzYhoNauUP9YhRHmNPMaLs=;
	h=To:Subject:From:Message-Id:Date; b=GrWsWIiXPFS0PSpDumKtGL3yt5OGxprrMT/2IvyNJkNTTpAvRBuQRljJP+lg22/a2BNXNSt7gNdSi6uiQkav7EIEmcumRODMjZuqW1Le2/4OFQoiBjXlyhLudm/tVu6u3ON6OE4ki5QiFP61hFtiBJu0ObefdtHNxGsnlpPXNsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6BZWHCt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6BZWHCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FE8C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732734353;
	bh=aWsocyudgA20w0XPliKEoDzYhoNauUP9YhRHmNPMaLs=;
	h=To:Subject:From:Date:From;
	b=L6BZWHCtIuSOsaZOMmXOCFU5N5iS2rdPkiTccDds9uHUVKDGScqMt2bJzI6pEC6Sa
	 Y8MQiOXoeu/DuOE4lj4a5U6/QmVYRtNkbR76jtzykmpncxowogEIq8aUMIWn4GNwVM
	 3zDseKj61NjN3MNaytew4yTvXloJ7M1oilQV7bsloVGrnwapRDUZApbfIa8Lphx1cg
	 mJamWgqYgk/D9s17KTkpFM7Q1ey6tf5z2+QUQ9dpIR2zCAxadIXmh32H7FPfksxrM/
	 +2mh4/03c1q0UATR8xkbLC9mpIgHisp+/+dVGS1pxgajsh5PdzfRR8LJZbjXhlVJda
	 za38xeckJeowQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E53CD6D227
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173273435361.1331.9607605797280219214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad004e5e0cb99789c2f12bbd80ef142693e861cdc2558d408b0f6e91b0b5de2
Date: Wed, 27 Nov 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732734353
