Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6FE39FC9
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 08:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713170963; cv=none; b=i0bIUO0E5np7LS2huKyGzEw+5Qi2QqbcF0x9uWkWeouVPwboB7qu2V5PrsIkJnghDYYs00kbadFVA6W8dkunCDrRo+ghOxiPaZs5Tcx3Nh2eW6+aTrVcUMol/XbXhy66U8l1HijalSOVtYhJSvXgw+nB9lyMuL322cP2Nzd2YOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713170963; c=relaxed/simple;
	bh=XppsiVaml7WF+W8WDm2COrcigduhZvvnRmHHn5WzSXk=;
	h=To:Subject:From:Message-Id:Date; b=dLRmirYdaePJ9B+iQwEROOVUajSNbQ5CTy44VgSqIWClyThClftzqm3hP7AJ2g7/hSmAlBhgzBmnIgouCI+8LuCVmtsb2jVWnOf7LFNyWGVxcK6V4qFYxOP+UgeJu3MZE4dH+olOC8q3ANJxXTzFtHdReIqXfs9u8EDwpnTnQCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABYu/j4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABYu/j4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EB6C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 08:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713170962;
	bh=XppsiVaml7WF+W8WDm2COrcigduhZvvnRmHHn5WzSXk=;
	h=To:Subject:From:Date:From;
	b=ABYu/j4im0fvSZNsrARQaG91RhFBwC8HzMIpV4hVfrlLuC84RM2hJbZmKTaijC/ZW
	 g6hhZhGz5QVsWKsTgGah1vhhQVFuKc8Qzy7hVUnLsTSHlLWfimwqJsK9XdDMK+EziC
	 t9qcs0uYtFOxKrgsP1kM3DbnJF+GYGJobVmZomu+k5CcwvVpU4AJ5W32GXUkJWsKAA
	 I9aOSVtoiiX/JpNd62XX2MXOZkf0lIKLTKQzrJPQ2hral8p+sWmhTD505XUoOCzfoY
	 Eiq58O366A1VjndpmgtoO/l1/5k7zGqaic/Q24Qw53LZPakpzFJR4VPTDbjiOWjgy9
	 zfNLoyDWb6Q1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF85FC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 08:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171317096277.12079.11783432968034307654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6ce600359057f6f5dc8d2ac5e1dad1fed00b1517cc4b3a637a89df054cd2e6
Date: Mon, 15 Apr 2024 08:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713170962
