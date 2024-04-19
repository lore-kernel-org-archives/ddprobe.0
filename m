Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9D78562E
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713552623; cv=none; b=ioGMu2yrNsFAGNvHWuSzMEIUYXILs4HtsmKBybW6SQT2SeDoWgDVoJfd/xqFnbkcEvLJFQS+8jdsCqg283MBHias0tD+Crxz6CgEJIOWYhj5qunMItWTLnM70VlSS4tSV0XscNpjRV+oHOZUGd8ZwaWfEUUO0s8cYQo8R9djyXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713552623; c=relaxed/simple;
	bh=Ge0eXVUXfvdgafkVcorkWlqNrcOLuePuWL4u22sEmz0=;
	h=To:Subject:From:Message-Id:Date; b=libzfDLdyKTjTubnvpl1sdbn9GWPB8R5kaoRHXMXgrY2H7zWO9tDQMNoUdS72q61JFV2Ktee2qIHD1KrX9ty1huhMSc2z4loDOMlekQZrilkHjFrqN4lXNMnZ4VhmnfYRJUWw/vyTXsUjxe9DhbpYLxh6kctXQrEEx5o3zFSyd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8U2ptFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8U2ptFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88DBC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713552622;
	bh=Ge0eXVUXfvdgafkVcorkWlqNrcOLuePuWL4u22sEmz0=;
	h=To:Subject:From:Date:From;
	b=p8U2ptFBSC1Ij3YSXTompDDus9QNHqjwTHYFb81k7+JbNtZF/hq6Oo9V5z4HYuP/o
	 ST9i17wdpotYLhwYVQ9aYvrv9vAJoZxlQvKVrwmEFvrspk3QqZOo6FG2Cgy/G2D7I0
	 Fkxvm9067c7NuNbMPmF3VCifjxVhKUiYWPWyVLGqRxrpXGDfkrdz+GPtfEXJIVrYuO
	 TgIJhJG4/pHykHeOnprm15+7PkTZgMr4dcWZ03yXtqv4Ofn0F7JAAKJLnklPnp6Q7B
	 gtQyozuTS1QofafVDlBuvxZngrWo06jjzmEnwcRFgJKhkMJGlr4oMhkEAoE8CNdB6c
	 KQgkmwtHEDs5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE32BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 18:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355262276.3931.13218789177240991632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8fa16d2cbedbef0e51567192f0269136f0fb880c25c1c623c8e7d3159a0dbc1
Date: Fri, 19 Apr 2024 18:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713552622
