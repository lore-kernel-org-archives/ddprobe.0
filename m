Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BDA3D88E3
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783366114; cv=none; b=LaL7DS9F876pmXYmgVfSwBOjKgX2QMIjFatXpXYI38UD/jjGXuX2PhLyw7hsRitxpy30NzwgG4m5eSgyYzcipqKX8vv9Uc0yfZ4CylNL/kBBdL93iHO6UfrEOSBpz0JYAkVbFEFD2Ywe5n1YGV2f6Wjr0CUZnyR4mOfKluB8Emw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783366114; c=relaxed/simple;
	bh=lBtQBzxTw10DzHQBJjkPM3NI1Yij7bGzK77SyMpno8g=;
	h=To:Subject:From:Message-Id:Date; b=Ip+ibRw99Cbxu0sADOOXrcofyTrIt2otl7TeW5wCHY7yObMNHNuDSrd9R8O17fa68fuWlCICfLyEkQM714cPsj10UoPl00nJuXdlgmo4hS4OcfIdyKqsA0RA/1BXOQJFHIGPAPojepae4wL4nxYxeMDu9x67DhbkZ7hR/1VfCIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdA89RK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdA89RK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8DBC2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783366113;
	bh=lBtQBzxTw10DzHQBJjkPM3NI1Yij7bGzK77SyMpno8g=;
	h=To:Subject:From:Date:From;
	b=ZdA89RK/ehNMgBUo5sQZkFjEDZlJdgjAvR6WjYh8+L2PykxXY3jxpn4h54PX7YxEr
	 GtFMZsAq9LouA4rSbp1OhK9ZvDgRNa632plnbSWfD+gpFF9TQUyo6myddyjjvGydlj
	 FLRY/u2ue82ZlScsFJ31sIPLUrfJVd0c1KG4AL+WNBZ8j6esLTfy0brAalrs5KC9gs
	 K5x3PCZa6GQvDLR3QMGLftfcCwZu0PLTluvXFvilvSh8C/S9M97qWa7cvpjtYRogDx
	 R/81AVVMm7D/UMHsdOsewc0T0xvWGz3XKoe1686qmW3oq9wdQa7O9uDNbjupABph0f
	 CVG1FltNMrd5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC136C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178336611369.17289.2265198605263294504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fd0b7939ff695f2871cf482b54ad4cda7be005ffd261b8ead4ea47356baedb
Date: Mon, 06 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783366113
