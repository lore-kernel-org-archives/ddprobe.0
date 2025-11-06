Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F443016EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762462794; cv=none; b=keBbmRQ1+2YuRBt7nfhXuPajcqq/h+D2nKdXRCxGF61TutcbDbvYiZQNylqJ5TJf33uet0hu+IWJyafj9pPedSeBqFl4auZuFYo7cLMuXZ/ZPWi0AaAlYFaKplybBB0gJb2J5CMmeuQIBmJvzuP3ORI5QDe7GDFYOCUmqIB/ML0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762462794; c=relaxed/simple;
	bh=iCItSjbgsmAXSAfXljs4g116/iNX9xii9oENvuHdCUY=;
	h=To:Subject:From:Message-Id:Date; b=WoBZ96MGCUwI5poFmzICg8s4OW750xyH73PMs6+kSmeQun0WowPPvJlYIg3Zo3mB38p+wPlh/eYi+TJE5P24yBvfuwfxE8L+hrh+Sc2K2oDCvd1Im6z+UD4vTXBCvYELqanbb9tAwlDuWd+uOYcZSGf2J105q/kKdB4GaWvgY4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBDhxpwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBDhxpwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A857EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762462793;
	bh=iCItSjbgsmAXSAfXljs4g116/iNX9xii9oENvuHdCUY=;
	h=To:Subject:From:Date:From;
	b=YBDhxpwGN5FNH5bO2rpe+UDoCv5m2SAz1hO77W6T9T2fyhHTm1ak4MSJmlwhDakXC
	 l0MW70hAf/romCLnZUj6IImcAQk1Osa5/dmIVcn0Vr/rhtph6+bDpkZ1sDgK7wt7x7
	 vUW4/NBdAoQVhsD4G7tkt1m6c9aQz4SGIitLhx6sWmv/j/z2kItkYY+75K/ORdjVGw
	 Lgv0UWmq2h+UUHF8fbR1rXROSsiJNt9z8rQ//KqjtMXfB2NaIjF8yTDdwVRB5p1Zft
	 0BUgH4n+jYYMCZi2pYZaewu41KezEViwwvsOzHGFHOZztufkafkDep4gV5CRyge/0Y
	 wUHR+fr3dVqVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A41CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246279360.10221.16306093252967775997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84db05af313e37ba75f1f2f12bc60a95def503813ff007be93990d77b6a766d9
Date: Thu, 06 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762462793
