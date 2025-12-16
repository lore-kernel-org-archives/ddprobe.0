Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1237C2F39A3
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765876434; cv=none; b=qv3UxhLU5dVHg4Cp0JQwUM+j42FnEvLNGmBLkSElghSItRlvIcxYK1hSi4qwvwZ8OnUW4TBByxvuj8B6cMBlrlK0OYXYzErzy5gC4IUEgUaV4Xc72/2Ke71cM5Jz+BhrP0r4VdJ82WVhD69qy5OUecfPv1tNNsbrEPQMjPz5irI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765876434; c=relaxed/simple;
	bh=pG0z33he2fEebOpI2arRLFL23B7t795hDO6gisZff1A=;
	h=To:Subject:From:Message-Id:Date; b=Byzl7h91cJmTw4Pd3qIzeYF6PYRr27UP+NMbkfKgBIjqju1ZlZONtsLJrkYYNgB7NdK63JUWSFXKIOiITsriXVCwzUlgZdpvQ3tutas/TyyKMsUCk0+K65ywd3jQU7DE44MRXCP0ul4T1yN0uaL1aQPOcrY594lSVYKV6nE7XRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXmSIyYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXmSIyYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D23C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765876433;
	bh=pG0z33he2fEebOpI2arRLFL23B7t795hDO6gisZff1A=;
	h=To:Subject:From:Date:From;
	b=BXmSIyYcgthVW/mNNSdSdNbqti03VFEVcwEeIOm4puqng5oWeebnbd3RC663mYHTC
	 OvBRT4208yS2Mjxn+Y5k9mK0tW7mp/CsfmMW9nesge/Q8T0Oyhf+lwmBXIklHeBQl3
	 DMEf80qEhYrfMmwXnM3NWtJJ6VB0GKrEEJat/Klr73lypz2N7prM6fFqoV1xcvNUxZ
	 O7USxHLKqAdS0dNd+XfnHcbVjvkQGtCN0N9kQdbuBn7S06MvStwhnR7Os0yrz4FYJx
	 32YmF3tLUpZuo2f1Qh9YsE3c8TVp/gGG/Nz/G6ionWfQ22E30FDQaDQMd9YaR8TLcz
	 YHOysCFqxF64Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91250D5CC89
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587643358.18333.17445468363293532307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef45bb8fb6b187963b1101d3a9308009b6118e801a09799399bac10d6c6874c4
Date: Tue, 16 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765876433
