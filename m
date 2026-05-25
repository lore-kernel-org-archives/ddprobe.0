Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C46E37E31A
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779709954; cv=none; b=Y/W3s/k6U9wpNKiJ4ML3KCNXM2/XEjrTyQRBDg+Fgwq24asZPTieosvoxZSUcJCktBiCaH3+K2aFoIEtZNUliQXrdJub6BHch4II0LH1NEZM7vMSDhZx+rzbhCPSCPJD4G+KMoIziLHHSFM4LpslmGCr1yUQ03wtO9OzcWto3s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779709954; c=relaxed/simple;
	bh=1NCun+AO2slrCKbw+rqucrjqfRrZO5VnCdr/F+SIKB0=;
	h=To:Subject:From:Message-Id:Date; b=FDNEVrfrOSfYqv2dFb8en1ZwnKHWL521nP8vR3ifab4vBKIU9W/o57DK8rM0GdVFodQTnd43/Bfglcrpii39b5A6mf6KO2YW1CLkHn8K8FKa3icHTNvS0cnN8L0uLI4AkJ4X6JQjo9LTYMG3S1fkrtyiCFT+nxaVJMfKOV6kfaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6f5Avoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6f5Avoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A5EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779709953;
	bh=1NCun+AO2slrCKbw+rqucrjqfRrZO5VnCdr/F+SIKB0=;
	h=To:Subject:From:Date:From;
	b=E6f5Avoj5zvbtHKwCNk+A/JFtpXOP3hRB8FsjMf/mMY1ag/BuHTfTuPggb9D70j82
	 rRY3cJueZzC02OCUI9CyrZlW9JRKHuPsQfKSJ2t1Nag/0x3oqcIYjVnrQFDBvnAKZf
	 W33OEuYyDFoEowTsQIUvKKyEQdIGgyYeei4Ji8IG0SrgyzM+axbZuGZWMBDRqTOMUc
	 aakhmXrRkmKFqEXhVP1BpkEcd0DaJV7dhzGUumJSUHF/S0euEzKRBFE8U6FmhRYwA2
	 f0fujKz4d+Wx0UYeF3f6U1VsLEKYMTF2tuTENl5YyI+pd1YjXJS2gIrGn9o1J5OKUp
	 0VBEty1P6NMmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0773CD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 11:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970995371.20403.1303623182339521538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a42f930bbd9d97394f51021b3f2cac64ded5f1243ef403380789b544553c34
Date: Mon, 25 May 2026 11:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779709953
