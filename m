Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6A334A3AC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769447035; cv=none; b=i6tu9NajNF7+O0ZGaI6oZezl6GVuFlWT3ICuKLDq7JkWUoRRBrPk088cozTTySyaiIgYw06AB3QVSrTG8Fqq8vwf5ZweXu6G4Ue4LXN2tXbJaAKY+kIH/kCHNU87QqqTuYa0VnSX3gMCnZN56NSNKcEqulyFfdOdbACp+NJhqNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769447035; c=relaxed/simple;
	bh=3o2cM97JA4CwTieVqT6po4sGxZlVNJ03EAeAvGLv7/g=;
	h=To:Subject:From:Message-Id:Date; b=tJO/QRwMvWoE1ViBWvw7h4dRfvnO2uA/sZuITcKi0CUtGxX/6fU3f8TVgjOkYFka7PwSshCuHcw62la5/pxqgbDF2WcFqWfR/w93/jHndV4Z/GVRIoRM30lxuhXCQQquCm8Xz6KbhaBELDJzL96mo/AfhpW5crX739UZjinSMCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/Xr/2IX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/Xr/2IX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8F8C19425
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769447033;
	bh=3o2cM97JA4CwTieVqT6po4sGxZlVNJ03EAeAvGLv7/g=;
	h=To:Subject:From:Date:From;
	b=M/Xr/2IXu2K3O872FWtcx+SG59Xf4c2WdNVDf4DOAFvXBJfcDavhqs5DfHZHlfbcR
	 PnS4J9lBkmUYpDjFfWZ45qW+9yHEddAS65HcXcoRbYB7+SqMD1Ea0QE7IWn7FX6wvv
	 NXC5CsCYksYPe2OJ5nlszvWSdCZjE8WSTmyxQO+EnCfUfZV6Vxv9jgXyA9Ty+dNXwx
	 FFapJFPh3vtUaZNDyVYu3Ys4/QcKWHPewYjiXc6qYl1KgPodNBTloq6nENh1IvL98L
	 DjSysifb2DGLeTzfgZ8JjS0xtJUEjL14bYtqQUGgFGASTLJe8FTE1zphFmdBv6UDcG
	 ZmPAaSjESUzyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA13D19503
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944703357.21188.4970895894158504576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be137dc5cf5a73676b73e1c1bba98bf43a0ca2d15e1eecf3e871ba4f984ed995
Date: Mon, 26 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769447033
