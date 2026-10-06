Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4072248A5
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791267034; cv=none; b=iPl9obGXA0x12QQtPNrho22wymAeo5sUgpQ3WHaigpE0ZUXRHyw92HwBxeBcpc7Ol3Uqx6zt9c9md9x8e9U3zmy1D9vksuBiIhxCCE3kohKb+F0vm4ajAFHaWA+Iz/VbA8Qk/ZHrlF5iNqjtwhachYugfQ7zCUs5e7swFVWFe64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791267034; c=relaxed/simple;
	bh=2p3cz+NPHszHcFB2+DJEsgN524AYlo2zqz0gnPZ0fTU=;
	h=To:Subject:From:Message-Id:Date; b=ep4MSN66HLLwYBFyhq+Rey47NbEs5NwcDPnZsqqY67QTZkwj+qQ+xNK277Bn//TJs72fnAEA78YXaRb5MYydK8B7yqOzWAkM7ulBu38nhC7/tjvzIrXgVbaqjb1kUOzZff2dUHbFMj5aw34md7eokipuboDEOVZkdEf3GpFNwd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVmb9VHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVmb9VHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEFAC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791267033;
	bh=2p3cz+NPHszHcFB2+DJEsgN524AYlo2zqz0gnPZ0fTU=;
	h=To:Subject:From:Date:From;
	b=jVmb9VHraPBwUYk/oYUzFMNPQKMdUrrvn7YB8pnYHShxlQhrxx/69njD9PEYCmvPA
	 l17s/prbQcndU+0dXUm2WbMc3klEzI5zE7rdLAqa7RFGeyWvJ2Kc6ySprQGe1nCDL5
	 YZBg5QlvN9nOQkYc/Jy3aDi2qLyfEMhc08Qnbmh1tVqL4VV2biuYT++FPYHvAjUFin
	 sBOwPxYWyYGktTbgYLajJDUzMU8vuF0Z451sTQWDDr4/3ErZQWSH6JmRmpo8T4DEO4
	 mcaJKV40JYVTdl1aX5hkMz/VRvnfYxx+LWTO7rXdasyLIl+qRjrDy3VzDeUpRnPpHL
	 kLI7oc1nm4/6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD72CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126703369.28411.10427689832139721173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b56ef982c7136a97d5c7e2224a3ce757ff674b8827b9bf495ac36a65588fbf
Date: Tue, 06 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791267033
