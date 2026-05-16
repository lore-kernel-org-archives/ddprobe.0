Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9242DF15C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778916034; cv=none; b=pdiXIQskJGJnObd71CJ/1wcWELx+ljSPnHfhtU8mlY9O+VWRPB5QGjj5xIMv88J2paq/TLUmn8YPJ/vgkCjUQFtHllY4y6QMP6a2qKuJZW2fsnLFfFGXDxpgGFwnsy4JmkZ/JYsLXxmr6vFUzP0Eu6FOXlepkOp5goJ0Ijn2Er8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778916034; c=relaxed/simple;
	bh=Vg1jVauKHdpu7D1feowDVXtgXPJZTEDqASAw7mrp9Pk=;
	h=To:Subject:From:Message-Id:Date; b=BIF8nQ2PUXls1ys9yVgf4+BBwG1QYr14R4AuacLdMta3xjEDobNLBSBIo29C1j5MBGI7LIGy1ysb/o+rogH6H+wjjaZGltuhjgei5B7DybQRZDpKcIfFNI9+JpeqQqA9kqm8z/IXNJL05Jh/cQYjK55ycGEWCuS/OuWyHflhjzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2c2PMVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2c2PMVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B49C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778916033;
	bh=Vg1jVauKHdpu7D1feowDVXtgXPJZTEDqASAw7mrp9Pk=;
	h=To:Subject:From:Date:From;
	b=M2c2PMVA0tobGCxbdHlLoTS2r/bqW1PsJ8pLlyTyHnA3IhHq/DLiuB8+OWhrqDvx3
	 5j1ouAvv7uvLZj4pO4uV+F1bTLN9SHRvt7tWwto3s7l1RidUL98acQpTxrsV4UTnFo
	 QCQbKrepr0b3oAb6VoYxrmOgs4MIXL7p36bfAOF4PIjVoqagviS3ETQbeuMV0v+Xmz
	 JOsA3E2TtBIv/yCbnlNtRU1Hlem3L5cuqZHUuHkCoKIZs+VLHIo/Q39nLVuRPcjW5u
	 mckfldApykNDp/ByEaf57liBgU2PzKMjOMZzhyHnbE7pbts6JhYfGQ2SE40rN5HG+C
	 /zxUwviah5GkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5640CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891603373.26030.14540551884831040408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3029b0479c3095833de052d4c9e43e7d396c4abd9a14780ad112ab320ed22b6
Date: Sat, 16 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778916033
