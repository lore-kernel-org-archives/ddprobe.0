Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354B818309F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717072463; cv=none; b=VH7Y/LqqZzu5vsJ8z36PqZBW0JkirIMJDnvOJqRH3zoVASNnzIFTZZW55L+FxDKHcGZZNOsAp1FQk+NmUhFo4aJs4WmfIkNt3jncrDBoP4oPY+Vg6MXHzE6S0hBbfE5F8ZSlX/5Qlshtb25tZsIvQAoU9YoGbQmYRYhkVbz53po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717072463; c=relaxed/simple;
	bh=D+1+zCbBt1rGuYIWLiZOUMyyvMT2NX6o9fmd3975hj4=;
	h=To:Subject:From:Message-Id:Date; b=Qs4exioaQG2aq0DmvQD5TZ+y2aScLw3DtnQiLASVmKsuiNhqGNyNIh7ZouKcaAXezCk024Fk3LwxErU/IEBlzvjnRxR0LckGnIGc6j7nO4Pw/4LJgj25udUxdkiHrpVsAJ5v0jPbVWhfauo/ImnMri0J1cEexCCFYnNOK0VtiwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXHwO28r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXHwO28r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD79C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717072462;
	bh=D+1+zCbBt1rGuYIWLiZOUMyyvMT2NX6o9fmd3975hj4=;
	h=To:Subject:From:Date:From;
	b=rXHwO28rrH/E0QlnsEVHMQEN1zfKIHZaHfedrv4TLVgc62s+QenoHVrVzmhTSCazU
	 ASBu/xQfEFnQYSXcUdR34/01US4Ewm/shD9yaZdbRUJEwS1Q698omHPorehNpP5bAl
	 CHBVLRQGcPzKdoKuFS/4mvjuH6QXIDOf/0+78+75za8S+NUoxg+1uuxJ6H2nbBD0v9
	 lTSf/eQ9farfG/pAL9clAUAhwTrsmVGbKWEnSqVmMQkf1vk/vfb7SclYrlReMpCJeZ
	 bguhWtpgasWMDK/1cTef2Ki9DyAPudcCwdReH82DrCuuutaHaPBLAfJExGbFBlXwHk
	 1qpmz6Fp5hOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF27C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707246276.25877.17592049081520765918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38dfaa4e4ee88752f5002e5eee18a21339570fc46a879651c2432cd67dca1e3a
Date: Thu, 30 May 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717072462
