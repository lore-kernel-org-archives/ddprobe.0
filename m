Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E00643AA8
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726577154; cv=none; b=jaAf6zfXPP1YJuMdP3ucxyydS/2N/Jl18qVjWjI11PF13D1xxm62Xh7NR9JkNG78ztmKp5Ygp8w8wHWmmGhjavvtqnN+o38C8e7Tr4m8cN75wHIZEGCcMEsU1m2CDlaT0m3DQJEzkjMJlOv0S/8KR04etqMyFeEzg+so8X9FFdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726577154; c=relaxed/simple;
	bh=6OUm6QQi1dGSzfqKLoCxvsZwiwOXWxFZ+6ra61eJm4w=;
	h=To:Subject:From:Message-Id:Date; b=CSNrhpcZt6KgLjZiMHK9vx3t51J8vy499/nlJuJOhthDEi4nFqJaTZnmrrKQZDinu+VS2HBWyocmsFh8izlIrR6A5pmMzEumG/MBsG5rrK9oQ4Yqs3kgBeSHFR/14H/e42cG+gph/JgkkDi8mX/Z0bsAExt+MJ9i+kNkRBMKUbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAvtT3rY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAvtT3rY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70DFC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726577153;
	bh=6OUm6QQi1dGSzfqKLoCxvsZwiwOXWxFZ+6ra61eJm4w=;
	h=To:Subject:From:Date:From;
	b=cAvtT3rYZ3lyn4UImYgLvt9FLeiKP0A4LIUpktEPcbWoZUNhE5wCrLs+Z/N5NoRtX
	 9bZU6odeKu0/JZQffNS9WxtvNokUxJjMS4Oa3mbx4LL5Iho2YxYGeUdXs5uPXDt3BJ
	 g1TGZBk+cXSBnQC7MsJ/l6XHvQwnqDWstvQukKRc4oUiaZBwPkxVJ4PSjTZBnl24It
	 i6z3MGDmWzmbYEv7XtegVqs7ftu4xeNCHz66yH/hB7Pye6icCtpPFNXKWdYSsfAMrv
	 h4Mz1j8Forc3tYWvIMMslccF6D+dha8cW2oEd0Umi6/eBC8JJpb9JDtYa62IwHMmfh
	 EKtVpVuW2SW5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95564C3601D
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657715360.32053.8191216896628613787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a816051d75b853e9ecbcf2d751746f6950f2020b17c37f4971c8c91c1e3f50c
Date: Tue, 17 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726577153
