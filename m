Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6FE1A683E
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783812514; cv=none; b=FoNPyb2DgKz7+WDvfxNYZWIQAclqFyPQspnhxpTamkneUwlG4z5/NZ75R94aHAJEfc9oMeDrP/ux8XIjKVs4RpRWpCrdBh5X1bJeBSVHldPV2+6NYK3Gp7RsTYxZ7wcIZJGlgZW1B2iFtGr+ys/xhs/p6Qj2EeFEcDqi9QjaN/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783812514; c=relaxed/simple;
	bh=32W/HivngG9La6iUmDbCR0p7aDN2u8Jb1SDhGTKyFqU=;
	h=To:Subject:From:Message-Id:Date; b=q/+BRhK8VCUeUzaL4jizUqVaTsC+seMTL6mt/sRdKVnilQSPSWUuqAIBMpiqEqLh8AYUsknfz+e22R+e0tkrXPGrvE9905u98rzfplaOE7nHPwVpuwes/xkIHRlzjTafK1914tmqhXzOdgwGweOXYlI+L2hmVUFwiCBNLHloLHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D45pbAnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D45pbAnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D360FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783812513;
	bh=32W/HivngG9La6iUmDbCR0p7aDN2u8Jb1SDhGTKyFqU=;
	h=To:Subject:From:Date:From;
	b=D45pbAnGPB+sMfk0RtEjMYf9UI5VM10m0upTTSeFGCvunDrm6gVuaB2cHCunDnczN
	 hkQb6+OxlJhibzI987Ajuyoirg7oUD5NLy40RVvBYryjQtt2nGs9NfYmXeZy9d6++i
	 mPXDVeM38BC8PuEATCvzjU5tS81RrqtYsbZPpppWODDEDaIj3q/seUd+lTE0nDWBf7
	 dpSQXv8Cr8uprcZY7jG3YBNcZAF1tT/QKrDmbuyJ8YaLGIupixbatpu/k4+fGCg094
	 5imRy0Xk0kOD8k4Qe26g0Pqo3UA/0smG2Y2u2ZfYS3lWFP9uKfc4IY3HQyfCeBKcty
	 liecZOSfrf+xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA39BC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381251367.29080.743305658795222068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0649b127486b7580023db994633a7ee331e308051c79899e81bd70857ec490b9
Date: Sat, 11 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783812513
