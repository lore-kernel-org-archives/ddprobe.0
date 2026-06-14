Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1906C2135B8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781456194; cv=none; b=SIakwxUdG4ffJ1LgqHkDx4jMICN1qR6fwZOOa0E/iWYUz8Fl2IGxVvNUUWChFml5H2uwWahEgSwMUHbVPYe3D1Yz+1Ea+7+Cw6/GeNh4cqOlAySjZmPP2G4aNraOt+V9130aPwiZsX4VxgyAQSt4l/V4D774tuPuGQ7JbPV9rNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781456194; c=relaxed/simple;
	bh=GIzq3L3DlCE2XmhsDqJVXv2wLcX/JCHI0Pv+Njds8Vk=;
	h=To:Subject:From:Message-Id:Date; b=dZ8JD1MtPilwawrscoPjRd9LC331/hJiGB11O/9WoXjaBTs9C90b3UfuLqZIXVZhpzEswupYkStKHJsTBdmdRqUDgmL40E/s1L9dMa4zJe8uJPh1pFY2JA3KtrI5wLLwGajGUfdSDZzuYYLB9IquXA7HXWqnoagH+dBQqSgr/DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6dQXBHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6dQXBHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74A5C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781456193;
	bh=GIzq3L3DlCE2XmhsDqJVXv2wLcX/JCHI0Pv+Njds8Vk=;
	h=To:Subject:From:Date:From;
	b=l6dQXBHbENscoWRzfZB9fi/7CHRL54H7gUaxSoIff89UIMLFRRk4yo2QuzJT0pdOI
	 T4u8FjaroDokOYugcIjRYMqvxHrsU422x7in34coyYKbcpMD1QGGyoxSyDLMNRFXx6
	 TrPCjpsyZbUF11ZfzCYlTo8TrB1WEoFjVClhzSf2pEFl7MbSAKQwBEhTi/UdsZwFPQ
	 a7kp0o8s7xy+Ef/usXNUAU5/j8kwSQxTjMmfI0u6JGsJHqZ2yzBf7XJitTJkvG8FE8
	 eT7kzURt0T/h1+AGo35fak4BN6bMLrJQt3mHsZs6GHh90aZQpBNCiJ54m5niO7hHBC
	 drmbcBz0lst7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0220CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 16:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145619371.22757.4175890539711815838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c8c6011f0441b667b596e52291b8d7a4a3b69a6b50a8f0e2cd8db28eedd68b
Date: Sun, 14 Jun 2026 16:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781456193
