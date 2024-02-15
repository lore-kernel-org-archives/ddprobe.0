Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E2663509
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707991097; cv=none; b=G5GKfbFCNiAbT5k4lbT5GQJ2stQM5W51+g5VX25X5ieyU+OsnI1j26qYrq5kY1y2zVa0sBdhek0rrwVohpQuC3cNr2Rhcyiencmv4mPT1o8aA9MC8hegwJNzUjOkzmPIscZytrxgj1k5FKtFgLbxMRxHhoBU3wb/9tH4KUsSwNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707991097; c=relaxed/simple;
	bh=fPBSJIe3VAWybZ8PZge4zbE54JmvqF8Q27mgk2sLhHU=;
	h=To:Subject:From:Message-Id:Date; b=Abyq58/rPvkB43SnqgzDTLQeJar6FHuLNU+QVrpAxH0FKdXdlXF8C4sXyYXljAdc4zcX3BoNjQWfh3ovfkVv2DHhnU3IOVmBZlvWrEFXYEiEetSoSgwozh+HWf92YDMppkEsJOKNm7/EDuT1Fy/EtmKoH+3VTNcGgVnbflzV1IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lncnBOZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lncnBOZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8434EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707991096;
	bh=fPBSJIe3VAWybZ8PZge4zbE54JmvqF8Q27mgk2sLhHU=;
	h=To:Subject:From:Date:From;
	b=lncnBOZ01Vcp86WU8Y2nzIVxGT5DPcbbCqIfSXP6ktfQeG1s7FHsK/5AA5Dz56k8N
	 /vpOc/ehIsBvvmDUr2v76EqUfsXku4mqfDTARszZEEiepoc/vp6eFeAYWTdp5Bn13q
	 JwjsTvgF+8ZpU4xlMqtgBGXXW/RPFLzDIZHIb+xCWGjVJDqj/KNepTo529KDY1uBqi
	 8E0s5AzSTclId6hSQJdTMScC/Ui+GRS0YaHrj/FxPWQvqanNTIKyaYTmtCzrCFwwsy
	 9UAzbNrsqGIRvCc9PXFr2uNu7qeTGy7sLE2qnE8QSCS9pmYHTTZavXx4DzhLxeatDj
	 KkSv7P5pQrIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC6DC4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170799109642.5454.4274009037344327548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79d5a9413de875cad6ae51c59ee8f51344c7a774676eee108e044f050d5d9f1
Date: Thu, 15 Feb 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707991096
