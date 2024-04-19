Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2882AEF5
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713564023; cv=none; b=oxjfpbNZJ1jlB7ysGA055p9GUJ/mSX7OuZ97CtDIdXlg7qJv7shF+39zPrk1uENPvOQdrsnzTyDVaa7LQFUrVDyS16ciIM5MDIT7rHNZVG7/oOUwa5zBZNYBXifzbPDQaalpMoMIleUr2VgK072rXOXo8hoaOKIgMxKangobWuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713564023; c=relaxed/simple;
	bh=zHdoNXx99Wf2KEjfLHa+GKZXv0cknIxg+//QUk2G07Y=;
	h=To:Subject:From:Message-Id:Date; b=Yh6Is/JLfdigtGw636hcSWBt6jMNzJ1ohDgbDrRrTNZi8VOHMCdCK7VOJkCk5ahEGjZGYqE8FxAjeqHOXD5LudBX4BlrfA8G+4eAX3zQjl5hoKCXj8RNUzb1mybHRrSU0h+/PIzB+syj56oCWUDQxGmzdU/wrxkV9QrFgou8yCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZg7B2AY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZg7B2AY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06CE8C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713564023;
	bh=zHdoNXx99Wf2KEjfLHa+GKZXv0cknIxg+//QUk2G07Y=;
	h=To:Subject:From:Date:From;
	b=gZg7B2AYUTF8QegRPEH/QH3sAUJ1saZr2COplpYS2a6QZqtn95FgqmKWGqwsv5cFB
	 t29RKpfB8BGykQMQql+UsPnevo0HhN+D3KA5iZPijhjcpPktpr4yzFfhucqcDIlJ90
	 CZtcQma3B9xFlm44H6k9FrhIe2fKMftwq7YTTyl0VRozvagk0VRlLVqflCHUO+AW7s
	 EIeiXtasD0XOxGefqUjzS4OlzTXgXJ4khv6TCfS8m7t+VI9N7rhWiRJZ+meBzKEplI
	 xYQfTfGe7SPWBcLT3XrdQEPBO45r94XMcoHJo0Lw9eDGY7yDy3yJJBmlPixZiPxDCJ
	 ZBGwzadGQdqLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA6C7C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356402285.6898.1489485982213029608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83013affbae0b9dc98f2422ee151af1292c53d8d562d62f9fc1ea932f40f7017
Date: Fri, 19 Apr 2024 22:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713564022
