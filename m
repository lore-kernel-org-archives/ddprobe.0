Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260EE35950
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759099794; cv=none; b=Zep2nZ3BIr+91NSoidTkqhZlNkEupSs4/ZLxRV8uUlicYoG6AFEt6szjcuKh++55uauKKNkOVISssCdr9+IxzV+1vdBrJGD1QROfm7qg82Oz0AKKipL5xWMhEG2iPx0bxYV16dlg//4tVtDVqY3PUy2FGpg/y7D0i34FmetwPdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759099794; c=relaxed/simple;
	bh=c4RGp1Cx69ok1t6cQYgp2IS5n+/bSg9JIP5Zbg30+gs=;
	h=To:Subject:From:Message-Id:Date; b=MJXFIpNVxlkwIAmVmS5lBC9fRNStwxkWWzdxy+eD63G7LnGsZwF/d/BS0GO3qzvUlpVrBAjNdeL/qMXdBW/OGRqMDyIbF8dry6ANboLD+QqY4EE0dPlZoHz3IitI6cohWPUaTrqxpQ3D7FkyPUjBB74jaanLw/ZIbudkMX6kaII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqT1Jwzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqT1Jwzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6740C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759099793;
	bh=c4RGp1Cx69ok1t6cQYgp2IS5n+/bSg9JIP5Zbg30+gs=;
	h=To:Subject:From:Date:From;
	b=OqT1JwzcV2MCfA4L+dVJAC0HwQN3vAC5jT365Jn7krkHst8sXtmczVE541tUogxtC
	 Xl+v8cjYtCS6CTfqAp05TQ4urinQdYVxlr8ELscbbF0AYIc4mC8eSiWBP1jULSzjvP
	 zfdGpWNu1WDDMRf+ta+4Hbiq1n7rSAye+TebU1Ar/0OekcM1gSKy4FS/rr/d9Ko7NB
	 a2R1pBS7xf/ZPyxfHU7iKzFy6WLM9Gz+pOtmKAa3dnr/zxRxqERsTIYr2xUKqefr1C
	 za5s/W5Zu1ww4cF2uVKvJOmVT0YpIy4Hem4QUyeR1P0ZaixcBiT7oCmPEV5UxRbW/p
	 KrttV09TxcuSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9484ECAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909979357.17951.8476405484857276825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046cbb95a5a11ae01bdda3595c967bc51bf6c3be139cdd65e90493947c996c49
Date: Sun, 28 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759099793
