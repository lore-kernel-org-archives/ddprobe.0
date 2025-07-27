Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C111411DE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753621194; cv=none; b=PunncyAhv3n9e0nyCOh53PHCevstvi7LO8A1uzwvnNhg9xpyWlw7LZCw9k8BV36zykvA2jQLpc052qfBHWAsFQXmYVqgu2Gtbageg04WKJHkT76mG3rdHi6WBm4iYLTPCaJiJe6cWCoNnEGyWttMC3jqOw4aKPF+J9iIuF6Ly7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753621194; c=relaxed/simple;
	bh=+mhGnX8PGJ918dVB3/JiK8KPFEwHnn00vHpBtwROHAk=;
	h=To:Subject:From:Message-Id:Date; b=rVWSk49rOFqN2Tx461NncZGTuqXRHFOpfOJjSuB/VxLFHoZMOYR/xtyZNBs0ltS3ean9CeKRdDGDxjOD8/Mm4ZAhN9LHkC0qw7pW5pv2TbgkG+hPVs9LWuZGERp74gQ4tWP5n5ZYIuy7c9WIS5VBCEJDSuVpbszNnCSpxw/2FBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIC6URW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIC6URW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DBDC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753621193;
	bh=+mhGnX8PGJ918dVB3/JiK8KPFEwHnn00vHpBtwROHAk=;
	h=To:Subject:From:Date:From;
	b=gIC6URW9jel161YKkimV1vZGHUtmKplgy/IJlLXR5ZkzmiLNOH8aIQCDqBvI2BLOa
	 5PXuRKpcOV3lLjmxSSGexp13pso+iNy6lABI+p41q3rKQruA3dT0RikaPBBj2TtkLP
	 biyR7egZCrejOCLuhApV3ZH5oVkp7zeaHY8VUycPKxa1UoVEHEE2uxcpR0bXGJGPYR
	 W1E10x96d+Gy4+w4PxgoAxX8QpAayNHeMX2M3O7phjPyI+pJy7Y9WeMg1Wnl/9CV6p
	 vysoKp6blTAYxlQQdRJmNNCiaucdkZhMVn07+SIbzIhe0omaC3z8aZELDEKrCMpPAk
	 0VM9pYSuuYt7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C1C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362119358.6330.6137706645039143503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885c16f832deadf344fd1114c5471703db80e7b5c9ed0c5f5aa00ba19b8fea46
Date: Sun, 27 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753621193
