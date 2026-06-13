Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9393382F0
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781348794; cv=none; b=X8KdqfFdm2HPE5kigcTdS3okNL7OMggMS3fR8fDEqIRgOaVeF/FG2+jr886lcfA3/+i+Uc9wdQBw/cxYNOvZuTr7PS3vQvuB7mk9XxfyYY/mSSmRZgq73kmnGXhvD32fcMZHAWMl+tC61lCw3QrObXhcErkEgnWdm4t76p52UJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781348794; c=relaxed/simple;
	bh=fDqaqf75iwdQSIg0aFwp+GuSEJNNGajd9p29XY56un4=;
	h=To:Subject:From:Message-Id:Date; b=bdjv3nYDVSQ3glMaN0UyK0tcMATIiuHo33UX/Vm6BuJd6NKLuXlgof/SPpBjPtod44bRav9Saus3qi5mb5EFAMdNWcuiBmaKrp6EGKo5NZXe980WBkg743v/L0IRjobRtN9JZMBTNQsXmkqR7mFNbU2QEwyqEIhevB7REllT4k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMuGfg2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMuGfg2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2604C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781348793;
	bh=fDqaqf75iwdQSIg0aFwp+GuSEJNNGajd9p29XY56un4=;
	h=To:Subject:From:Date:From;
	b=UMuGfg2bzV7Z56mrE+apV/C6iKnev7pBq5eGvnZu2joxJbzEk3Eu22H/ebE5idiV5
	 RBaXkeLNf+DV+lUr/2qSJ4OeFuWjYociSvxqufmcdoppwMwJkh0GuAGwTHgWLZj8RI
	 6rpNZ3aIwBdMR1cud4vJzHjtbIMIRbyKLZWWotGk9CzlV1g7cDhXVg0EuttcYNUm4b
	 0EIIKvqDHoewkt2zuaPBatw8Lv804VdlSdoWEdfRpqnueEOwEPhV4Y1IzK9Ov0yoyZ
	 toNJ0OV/NirCwLDYQe63lIEmKKMZ7zEjL3ZMqhY2P2qnes2n4w9i3hhBSmCV09dUFa
	 xamCJNExWHRtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84ABCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134879368.29445.3087207025874103583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2ba171ee5d9b341a1d9e8607cd86ad32ad1769b6e874141c9fcd31a5949c7c
Date: Sat, 13 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781348793
