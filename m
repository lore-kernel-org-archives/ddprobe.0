Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5C630FC1C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769714034; cv=none; b=RtoVy+APunpLwsQdsLuQARgW5M+g4kuZICVINjY75/3WbIZM4X4NUxs4quutIC2UIKjQAkcrWijNQojhUAdLf5FPvZ2O1NKdYRlpLFJ8VJrv2UcjWkPIYFzv1LDVyolX940suz9Z1N8MvcNiFTjb8gPAZi2+3jUf5q3lR5vXDQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769714034; c=relaxed/simple;
	bh=xppV31Bt6lqzet3piIg8X8kz/WwZ8gR9zBzbbb48/Ok=;
	h=To:Subject:From:Message-Id:Date; b=ZOrxjapRfm+fhzEuwyl9d3+tnNSbXti9tmwRvS4qa/SgYIi9owVpSlGdgMc9ePkvb8bouYrt6etzAHYTeb+/7qELxlrqD7IbtTDfJDHeixgeeQDVyRlMs0Ma1Ia5j+56URCoyUBXOhwUFDN/CoZf88maHne3zLUQeQ550r4XOiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZTcs8Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZTcs8Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A954BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769714033;
	bh=xppV31Bt6lqzet3piIg8X8kz/WwZ8gR9zBzbbb48/Ok=;
	h=To:Subject:From:Date:From;
	b=qZTcs8EiU07reJQ4SgkKzQ6KzbbqvpPSKPq0ca74hFSrvVzdLiGBq3+OJUaQweYY2
	 dke6jq5ZMzxXx4WXBvxDWny6SMI2W52yPCE9mY/61jkgo+d8g5fN+7sUDHWpy17xfU
	 +I9FaDo6zCDwM2JfjELj0bjcuWNbfYOVFeh5WpIPyK1YTVySeB1Ok80t2aBjDbzIH0
	 AUBZgw5estoFY+GOOgzZ11i68bAEc7GGy1XDI05LwBgi4wa0O92wUWmERr8iC2TeTI
	 9j7qHV7eyyCV+tFqCzORoNXm/d+GyC5BUmeegdcejdw/p+zlcPetb3V0v7zVdZ2Hp5
	 5UTn9mbMKsEfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97108D73E83
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971403360.22817.2199781869270275052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac08307dbf46c4e3de1708073dd550e7b559a9e2d9083148f7ee3b937bd816f5
Date: Thu, 29 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769714033
