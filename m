Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD62D218AD4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760209793; cv=none; b=SPdtOzD+2/UjeGNUKO+RYVE0ufyk6bK8u23weTPMISQVwW/ymfiEhkr9OsJstfIQGzB9so4MXPD8lhkgWAUjJOtc+ZMPcaA0Z9aIZTDKdoSqQb8z/92v1bXZLxrT1OtvxcYeqC6V0i1lvFVkWnqzh4hqHI/CcJFQvFSPMN+LYcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760209793; c=relaxed/simple;
	bh=DeXITfGZFhjwuqbfOxZcI33JkmTKPwzEmRRQTYDRFdg=;
	h=To:Subject:From:Message-Id:Date; b=qO57vU/KUDDjtbAl0KqXtI2C88Gza0NkPPAjMOHpxahD1ergynWLOXaeg9gW5GDMJLdLC7JFJ2gZeJLyyx22nxvjyzGsEXPrXB2dAuyXne9yoySDsDqlZ5eFFcFdmhjXBBFxxmyE4t5+lF31K10gFLKe0lcPsR8m4r7JN1+5XZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUJrZaL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUJrZaL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0507C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760209793;
	bh=DeXITfGZFhjwuqbfOxZcI33JkmTKPwzEmRRQTYDRFdg=;
	h=To:Subject:From:Date:From;
	b=TUJrZaL8HWoU3JHpXVUBEbVdUiZ448f3a9iq+oQf1EZ+XKk/DjlSO4x3CUIXZiVca
	 lH3SKz69AREpMD+FxEKPqaKmCktT/5h7JG1tf5I+3zoBF0I8EdkDpSUBo0QCMtNX7y
	 JICnShkIApc7FDh37CB4RX/1obQnYABXSc2cLCfSbJVPaoiOB5b4UVsp35XBb4NIEM
	 j0X6GWeGOMYjPs0ErteDqXYgeCuWsUGdpnn8Ketxv6hW1Aq5hhYBFMqhBhZjdysStq
	 pmDMLTegfh3OahGFm6/Kix9vJ/zqWkHyhGHyPlNIYZbBAfCf4k/AS9+zOc6xIjV+Tg
	 ApOEH1yH5I8sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B77CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020979357.32642.17069395809006053680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d9f7ef40c5ff2c8cb5abd3979311215b513890b4bfe29795923b27168c4d4f
Date: Sat, 11 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760209793
