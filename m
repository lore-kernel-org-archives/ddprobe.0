Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539614CF471
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792194634; cv=none; b=tR62ic5ptIJdMJpHFRDXq2AcJWul+F13hbZTrjH1UnDWZIfAM+2+URt9hR16i5BQ+6+pSKC8SregdLSG2yS+NT3daOBOq/45e54RrvyHm9KYM8AUDnG074hcK4dO+T0h5ULgEDbdR55YJtDYVcu0ADvKLHQ+q5WZDY7RUuvtOwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792194634; c=relaxed/simple;
	bh=Ht+L36HZ4WkxH8NnWGXP6EtPsQZvz6/eZusOok8LB1c=;
	h=To:Subject:From:Message-Id:Date; b=W/3gNdRL2oSQON5VuhIL2y0lLhmwOylIP0JOjn9rkncJhRLPnyezzmBR9qaziHarJfw20/TbWKMgoUjVOvL4DfWB80L0mX5Id2jwNbzzmTLYppyt9nUhi23ND7HALtuBxAXwvRytkJzK/HAsvyHxUqPWlZ4f08mhSxxD+n7owRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXILzf9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXILzf9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6B5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792194633;
	bh=Ht+L36HZ4WkxH8NnWGXP6EtPsQZvz6/eZusOok8LB1c=;
	h=To:Subject:From:Date:From;
	b=qXILzf9bjKmd08d4TcrcMU4YpQsoImoH2/fjIArlXucyrPnePtVg0a5hPFlNXtCc/
	 vLdjcBY9akNj9EX3eE3a0KQCcfhjlm2erkZTiyP4GPHNB7uDX9epagW/X6O9onDhic
	 RiFvAJtWqAkNcYwm1QLmJ/2k8AkWzPyl08QOoLK3ZsTJROir+tvdqtpCvjYoldbPxn
	 d56ktZJlagKMIGE8avoVoLXVL1sAg5bcj0UL2r/ybVwVbNqBpwIPqSEeytfOPY0T/L
	 SU+5KtpCe6CCbvmGNfJ5ZXg9SVT4lW6/zalOWuhjVD9dPUohxykmNhSI86+1JkL3K9
	 olx2CXktNOtYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD48CCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219463369.21463.329342838212625515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5673d2644cc9cb4a54ff1a373d6449fe489b32a6acf656df51786a871167496
Date: Fri, 16 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792194633
