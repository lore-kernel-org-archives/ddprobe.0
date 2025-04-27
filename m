Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9AA3594B
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745727594; cv=none; b=PPY9G/UynJr1E59QPtnmYliX7VsPIX/a6eqt0lRff12MxvoafRze1vqgu3QkKqBkR83YHcqX2nub5slA4erqBRP/nEHNsuyJeR6U9voTdLfQhJAXt9FGV51ZPHHo5WFZh9xLZibRka2pC0qFBmzDPsj7M4xMaZlasAO+oDjhXx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745727594; c=relaxed/simple;
	bh=rxQxqLMn8n7xbiD4CqBGeGpxewMnOK1qq8DC36l0MJ8=;
	h=To:Subject:From:Message-Id:Date; b=qs7xufsa/u6IejZjo1R7PxSR2JvlFjp0l21voIwIq7kg5z6Tunw5P1ly9DGoi/1yxd4fxViT+NWZNFlB8W1rmEv5izPYp4SY4L8mECPJ4qebpcGRTwi0bB1jZz3643yNB4J4aY4zYr0Xh8vPKjJIudecfTRhJ5aqzdGZI08XARE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL7Vqblb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL7Vqblb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC630C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745727593;
	bh=rxQxqLMn8n7xbiD4CqBGeGpxewMnOK1qq8DC36l0MJ8=;
	h=To:Subject:From:Date:From;
	b=NL7VqblbMCXOdZ63Npim8scDkYPtVixx0TdKERIC4RJPgiFUp6SI+ee1DjSMWe2Iy
	 zFj86N0z1cf186E+2ci88SJqjvtN03YXhFQPSBEPzVGD30DVYvQjywiYQYdSYo0c4E
	 sl6e4CyNEpmZUHf4nwHYoHGiGjtEl+vKGnONWBenYhaMBDhXQ37HujuLHEFNzcggVr
	 eUAJvW2ZomKT23acE6EvPDoHROr7e1GUTxDAedxZj7qCk9OscHGOYnfgmtup3fjFcQ
	 HTMQVpSwnXAM1ScR66K9Pg5xcVsKdQH5CCkybsyg9/vnrqIp4ebTjxFtuLWd+mWXt2
	 gFX+LS/uve8bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980E8C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572759358.22456.4531768006964136411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548d99de99f4d86d8a70fba5fd0190f6793b6e0f52bcf6f32d37d6d8bde12a96
Date: Sun, 27 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745727593
