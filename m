Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507E42853E0
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786146634; cv=none; b=s0hgZgDzfchKuhMaOttVKabMDOS+eKIFkyQ/d5FjQB8M234VHfDZr0KegOnXw/6U9dLvytYwWr4zChtkkIwlv1Cx52jcoXnTasiPfgKnxpnrdrPqhVo1nOd/o5FHraJfJKZznP8xFjEv1peR9m7rrE43vCpDB8bCoYVT8nl+7eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786146634; c=relaxed/simple;
	bh=o/7D91BfxhY9KHZrYcfGI3Q/+TK7lwabPnXh8z73l4c=;
	h=To:Subject:From:Message-Id:Date; b=CExghCe87taeFIJZQzRkhThrMValK7mR9jpdORydu+QlYBhv8xfo9+pGDuvecjzrtyNo+5SuUVzi7mXfDlz9ajHQbF/co5Ga2DXfMr+ed7t3kn7ziEBn8xrns/TmKkAEsv9tW24IY9UaOcre9McOL+BKAGOJKdtHWRshZzQ70vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8LYBdb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8LYBdb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE499C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786146633;
	bh=o/7D91BfxhY9KHZrYcfGI3Q/+TK7lwabPnXh8z73l4c=;
	h=To:Subject:From:Date:From;
	b=s8LYBdb4bephRu18kkJjYbHpXDQ6yBfyk5A736n1td9j0Eaz9PMyVanpHtUMZk+fL
	 9H3H+b9Qjjt4pZOg+yfImux5sFxcF84Ip5WSx7aJ23u58xw8aAAgkuy7/SKTPYn/Dx
	 avlr2KxMe3erl5urWE1HSsVYJ47qyKGIwgDELjsiKWouQ9IYXYCQCwIjU6NzDIddut
	 6/oOoQW5oVBpdNc45qBz3stBQpnuwby1nWyOQ/SO2y2bijeDdpz3b4Owa5hyaWASnW
	 Ur8w6njsuGMFCItRNOuhUPhXhwxYiAz+kCiCLJDPCCn9vFbxF7YAEugjzkpRvijqa5
	 zvYIt1rWLYn3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCCC5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614663368.6458.11151190005581543228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8e45faca5f585f1b17f27b3b447fc663c421d06adec09b38872e62725fc8a7
Date: Fri, 07 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786146633
