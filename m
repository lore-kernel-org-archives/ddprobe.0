Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571542557C
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746395396; cv=none; b=RLzSrQ4sGs3BXzsa/82LY8J6p3DkwcTGm6GY4vor47LQYWW3kub4W4YMvp0dXWxAf/RTZ3NDxv1MtCUTW6AY3KcsJU74wCfHRGREJ0jwcy9JJlfIG1EUcyLJtCENrIP5t0HE5YnRaPjXe9p/eCxeqsR/n5Ww3mF+CJihl2D3KWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746395396; c=relaxed/simple;
	bh=/78Bt+ZGrNTmVTd8MtzI0f1joPe/qBbSQoWuwuLaYhE=;
	h=To:Subject:From:Message-Id:Date; b=PXsTOQ76XzzIlB3CxQ+2y9j6mZVR9F/Nc7f97pCwMG0k8CyjrYDLNOPNHaO4ZTKN5WRgo+rgXX8YZuxDmor+VxSxmOEbS6CifHw4CH3CjcNDM7wQhwubNCCYww7WGxx+DrbknlWC6eE6Dt3p0rAhxcOaIC531qEmiE5ZsD8xDs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ger9pdgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ger9pdgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEACC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746395393;
	bh=/78Bt+ZGrNTmVTd8MtzI0f1joPe/qBbSQoWuwuLaYhE=;
	h=To:Subject:From:Date:From;
	b=Ger9pdgQ2+60QHvAM22C/fezHFsUy4/5/LljMLf14GLyCeSbuY3LsveDyY2HbYv+d
	 tVZjZh/daegTKQNU4HLHhNRJvqfoiYyYLgbVTtfgNawL+ugv+A01ZVK2v45+YVYmA2
	 lF8veqWqQjDYoH4ELzsBeIdz7fLSGyLF1PhZtyuDVZEUHl/Bz4btr73hyRjCy2pHcO
	 dBkQcONEkCWJHOxOXDGW2Is+W1NRroOCU5kqLXvWiWIQzAT6CCVm+Z5o6/xej65lx5
	 TmM7RnmiV+GFGS1ymORRAxmAPPfruogZhaN1qBrHF2mhTRyZg62FFoTkHMrHJNJyAZ
	 PvBbHvqeGOWsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E23DC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639539357.21065.13676548662275553702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae63cdfe2e9d2cb97d971a4552ecf4ac7e7c34c8a75e59194f5ca6d723a0e238
Date: Sun, 04 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746395393
