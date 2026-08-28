Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE503A3804
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787938834; cv=none; b=VYviIomjrcF6ERawd9gKTyit+lMOsaEHML2FRbRWxzp8tp4MJQ3kMRflsuaFCGUWZyECLonmIxWfTSXmwnlF5YxDOBu9rkK19FwO/r9zUAla7hRfOd0XW105MCaBzesOIGzzQYpVm4EVEs5rH/6noiNaSdR+xDOsE2buem2nHSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787938834; c=relaxed/simple;
	bh=dInEn8dzVanNvsFsRz4WLEEEcUwP4dTItUfRqf4tT5c=;
	h=To:Subject:From:Message-Id:Date; b=l9v7J8QXg7gnpMbbdvYmXGfGvuWo62qq25BQFsV7dArJhDlbpE74UN6OURz2J0LRrIVdq6CuyvafIh88oSmQa5YQFa7iIto59llERxXfBQe6P31tvYbug00zt+V06/xW7unRI/YSGOGNrR0B/cYLNdl84GE/WyyiVM+9pJw2pKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXam3gxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXam3gxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EE6C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787938833;
	bh=dInEn8dzVanNvsFsRz4WLEEEcUwP4dTItUfRqf4tT5c=;
	h=To:Subject:From:Date:From;
	b=VXam3gxtSOvAU1Msw/f/f+14IK0yh/5gng5H9G3BLRIx3eFkzddzODOlmxm54ueZN
	 CnJYfCi1/d9vHY4wUZThww1LUiAr+22HtWhBBckI/nxxaeBzHwnwc+HWJ2YycT8D3u
	 d3ja+V45ywqJWBOu69th+8eighomn/aUNvWtplY0nSHLQLoQk0Pb+/mwxhAIKB4+Hr
	 qSzN6ZqWeC2pky8ZScgFIC8uxtU1r9GjIdJWk0A2u+sKxXgeWQ4z6W0VhqI1/yca0l
	 oYyqVIbFPbYTmSwUaQU5EMzqABXwRh7fA8X81wFk9+LYVLj/ktEcSCzHbXHudOVbx3
	 Kvvf4V0JgqOoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABAAC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793883368.31462.12105852936365228946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbacc510d540a37b6c925603644f01e02458b21ad9ea1cd489718909f2c14a78
Date: Fri, 28 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787938833
