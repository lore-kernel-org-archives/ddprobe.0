Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296682C0296
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760515794; cv=none; b=gDqrECSwVIMXt53qTWQxn/PPndp33u5UHxuCj1c2P4bWPneMGOQArPoCWgTmiXt0pKxUKbb4G6vgX+RUrZvMUY5bVFITikgfAAXpFMc+F8ioo22yDAdBuefSjDKFCZJmjotraawhUztH6P+DSur0Es4hQd6JvexzgZXoL1ZZN2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760515794; c=relaxed/simple;
	bh=SMSpBwGnlMOciIwK0dkjyzDrV7FMBz2ctcUVWrsjrAM=;
	h=To:Subject:From:Message-Id:Date; b=bAghf03ZN5XA/lmRYaxR5AQbZ03tjIh412g1sFg1XudkcVC436hMirl9HQGx1lQ6BkiL+RsRPfvfgYfFk+JSh2S2bSP68B0v1kXa6jpbxH+ICsCLX+BqYi/wp73hP7Ep822LpSxX9Rw6LoUY4mLDO2j7Bv8CnKpN4+ccJyPNT/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2/u6ZCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2/u6ZCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46E3C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760515793;
	bh=SMSpBwGnlMOciIwK0dkjyzDrV7FMBz2ctcUVWrsjrAM=;
	h=To:Subject:From:Date:From;
	b=s2/u6ZCWQYo3R/xlWx7FM5ZttmnH8WmYYYz/QX+JzopNtYP34xmXN271W2kphf9Rb
	 Lkr0JgWg3k/8bs8/rRY5i3L6JzfuaofKSTvBO1fsXyfuyaqnXRyWaozRG/WD9bpyr9
	 d9tLnKJNg0v9eTWD41hHmPVdr7aW2HBc2La6DYlTZZcnBF89OCWKOdrGngzKcSt03c
	 IRwlzT2UJzOr5rN2t9/VkUuT+/m2Mwy4KKxHdpYnsJ2hQ3q9rO38p+AA40ZHOKyNzu
	 ekqWKz6n9gTezQxrYf8i800C9SDSkIjyOXKY59tT73zVXtTVn/JLvwNcXhFRDdM/ER
	 B/8noWBSLrXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222CCCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051579358.12125.4781518874361436826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146143728fba591e6e3ca10e8386bc3743feeb2b1588e6bfedb525034dd6b24c
Date: Wed, 15 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760515793
