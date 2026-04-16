Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282B3198A17
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776299254; cv=none; b=N0N7OA8/KDKbOyFMlsyH5nD6LiWBO+7z9HJaii+8LndLBp5IMJScdycs+AY4/hWFKMw9DHS7X0n/Qd756ucG8J7n8hVV7/YcUUssrNHP1RlJKD4Gr6QKzvImi40QHg1MQjbwmmWYo5tRVMn1pv7Ze/3pZm+0/80ibx0FT5TLcYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776299254; c=relaxed/simple;
	bh=7lCJfkrS9W7irEBEgDkyCgHXgjie60TbJ11AiifYLV0=;
	h=To:Subject:From:Message-Id:Date; b=tVmUM6KwCkwu0F7SkT1IEKE9mh/phfj46TK/61RAWr4GFGapYM6lYpRahdm9MMFFDo0GqE1sSkdHm5gCo75fswWUtPpWgttWp64mJGY5dV/IG6XV2tjpvCgoE45VPxIYUvNFCdpI9t6xAfrW0yWuzhd5iwRtPu++le7f2rEz0Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXekW3CY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXekW3CY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2028C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776299253;
	bh=7lCJfkrS9W7irEBEgDkyCgHXgjie60TbJ11AiifYLV0=;
	h=To:Subject:From:Date:From;
	b=XXekW3CY8bd8fgh9v9XVqtXxWqAsy/d9NVKtHR335uNPN4U36BzWrgvKph06Q9zrJ
	 6JLaQKaClmf3BtGx0RNSHCm3AJBVKh3l43GBGRyliVZSWVJKsuQVgXfvJfz/VWlFki
	 bGw+F2zDP306oKCSY3dbelcvP0bjAuUjeA1vZajPIvtj0ArOkiLxjWtsHZJCQOdwDn
	 4a+NBmhLdCyJXkBI3VQtEMV6sEDSloNJzr4CytTRjD23QxBo9QZ7yA/drvtmCXRV3z
	 4M6QUrsiYSO+pUZPCkk5eiPnx2QzRwQC5U/fTOZj9ONrKbHHr7nJYgU/it46mqI+hO
	 xveOI8iWbFuyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF70EF433CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629925368.7190.9885271647613438105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755a25be4947181073852a20f245d0333f14d2eecf78c573e8356ba694cbc744
Date: Thu, 16 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776299253
