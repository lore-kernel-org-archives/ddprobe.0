Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F13B1E4AB
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744189194; cv=none; b=YOIphtWQISYSXJFSGUd8/v0A7nTGYcN1KB/xMscWjC1Yl993h5UTfOP0zzU/7M5nFK8kgwMtTlHHpewfqecbfM3WYrdDc5Bdp8Yw5ZWQkLyURt8irwWM54FjchvsQYufFdMMWCKnG0CruYLnhcxfwE4PYj5ZFDm39dFPvt9msZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744189194; c=relaxed/simple;
	bh=e//UxSoxzwbzCpln919Ug6yZnWZRRpcJKn1ZnbHeNWc=;
	h=To:Subject:From:Message-Id:Date; b=hAjdCOuy80E/wTjgaweIJDE6c+aYEhzDd/Ky0RCsfZSKFj4UTPTjsIZ4f1WVCtQ4HtduJ2QsMQqemujtU7kApRCXyk6wjZubVgtBarP8HOCLvMCn2HrlLIs/5Vvkh4H5inMKd3mGpdejVNWMh1WOgy9wz8VaUFdNv/FCWFZitGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPlws+uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPlws+uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD86BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744189193;
	bh=e//UxSoxzwbzCpln919Ug6yZnWZRRpcJKn1ZnbHeNWc=;
	h=To:Subject:From:Date:From;
	b=oPlws+uyr2DRpa/3K/uTbCzkCw7qOYcPUWmtwEtQ5GXEuB9ur0Jc/b9bE5i76EOUS
	 g/yYOGUmXOhlrsnMhYWcnDvb9/mHY6CCtXrTCQmQwGyh4rffCi36mYLeMGafGdcAwi
	 zrefT/L4HTfH90u297y/Yphe7+hfC7Wv1dg3gFa2UBBNWkHjsLUIAJfNgjkNqii6cW
	 dLYtPmLqiZnVhWIH2iQvThc0h14WXD8VgMPPToXXD82p4ybdJJ2Th7p/cj1xSldEl+
	 NMuKEj3eHwg6UuIHccMvLM/AfDVY851eIU2MwBz68Shu+Qlwu2I9NugC/7G7ZG9X/K
	 FIPZtV/EnZtMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946BCC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418919359.14926.5364700590628787914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c5d5911102fa482eaceb5d2fc7e28deade826bc9a2402e1130fb6d1b5c044a
Date: Wed, 09 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744189193
