Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2048E3750D5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791810634; cv=none; b=RsIcjpjKwirsOKIGeRBB5hYkkfDPBTB5KP7dK3XibTuZGWavoQ4rS1rILCQNpiEb2YMf134vZzCCXzWDMThkq5JY9lGYP1bf/bG+WSK9JM6h1erHv2GoJZGvLqomRs1UhwrjhMahWT2k1Zw71cXukx+3dQxGecGxSuoEKAsBirY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791810634; c=relaxed/simple;
	bh=wHrfLuCciX4698cM4FyLntkP5nr6oNYELh8FxYCnlpc=;
	h=To:Subject:From:Message-Id:Date; b=svi7++dM4cGMjbgUShewuLqEFXZLJADJhWm5tgf0UlZSeK7w+34DYbpO+zDpxOdZUaXdYXbN7+TyUNrB1qAjt4g6zO/Z6VGH6TP6uRENHENstLTSefLqjuVypE/kEg2pNf9+nQd95ZpT3KtnzAs0TuduMO2pb10aI7ptc/WmmEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo/u591t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo/u591t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5087C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791810633;
	bh=wHrfLuCciX4698cM4FyLntkP5nr6oNYELh8FxYCnlpc=;
	h=To:Subject:From:Date:From;
	b=bo/u591tvIQcFgXCWMrs1tPMXFEsVKG/8eTn/P67lP/GsUrcAcDMJR+AbaMWWiMaC
	 CrJ8P1Mf73sRhw2R4vUdA2dOS+ZDV4EqXeql62gd25CrHz9yKAeOgY0VyzwC5xS/jE
	 zp3ndWxSRBCUFLTVoewdF8s4mqQXl98UnRmlkgM9Hb5ztgWoEWlTLgRZXvVmfURVvA
	 xP4mWjg3GunLSNU9tlay1jT7omceYd4/55H1gPdPUzV/W/hk0fxiR8ve3JTAHLkbx+
	 201femKFer/BNBy+AXWa0B0s+YwYIg0soX+qjY5T6BYeNp3UMxRCcqUcU6o0KJctr6
	 Njrvrh03RE5Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE934CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181063370.25490.202718075073519012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9bba2c86d9ce4f359fa71fc3b478481912ccacb8c14661a21e00dbdd0e9044
Date: Mon, 12 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791810633
