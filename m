Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3C9222562
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741678133; cv=none; b=Xtu2sJB/XIPKxoUgEPbF42GxmqATmNyh4tbAZaKNy6DZwU5nzTHzbRCJazchCPmrsDNHG0nbdLuBX2aOJQlEWUS/eGluk9AAuhUho0+l4k48yOD8QvmA2krVS5FEXfd92JGn095SLYGx73HgUNrN6d35T4m0Jc4wljW730RpUrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741678133; c=relaxed/simple;
	bh=WqdyCWTzOA4Q4C/eM4qNhVAX1akaQGF5z+qjhO4Jhoc=;
	h=To:Subject:From:Message-Id:Date; b=ivAys9iOU4xFK4RYdHYhKdLA51iHTWRcMELJcFqHA/JGqdUtBVMJOjhlzdolyZgMPDVxnZ7urYZEChyV6A52Xw3IOXwa0gUvn1eriA072zXtthp599GBoJTmsxCasntZtpcGfEUm+9E3Qw21rkmHXtP9ToENtyuz8JUIBGeXToI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq9ikyz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq9ikyz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D9DC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741678133;
	bh=WqdyCWTzOA4Q4C/eM4qNhVAX1akaQGF5z+qjhO4Jhoc=;
	h=To:Subject:From:Date:From;
	b=cq9ikyz534N3tAuV7YAVDPBCxzW8qcN99tMfAjK+dI04imosK7zBcqOd+3eUoU8BC
	 uBRawD6EzUIBFez7ylyKMYDrHFpXgGykGn7fC3axZ8xppO9LFtyRsgbFUuJji9AqF6
	 zBpblS+doW4TT+pFUZyz5Ug6iHkBTUYhZtxIDsynfvLd9CB6ryNvElVhUi7qT53wfv
	 8DDoz7+Ltw4ttRsd/dTUURjJnU2+LLGERvpLWbVAxS7wfyc59722YeFkuJhHB0Lse6
	 5mUqlAZyyBhbbbmJePRy2LQpRNc0jl7CKZ96sZ+z3uETiMkkYo5ZHdxI2gf9TQb32w
	 XU46+sdrwn8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A3C2BA1B
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 07:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174167813358.1720.12809720865869297975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa8a4d6bd3e2abda8ac4bf66a815683c9ef3a4630f283f558aebc8f92d20776
Date: Tue, 11 Mar 2025 07:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741678133
