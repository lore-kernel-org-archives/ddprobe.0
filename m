Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275DD101E6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754795395; cv=none; b=ctVItdXZZUZgLy+LjRoWX2iYdlrFyUj0obZda6tb0tR/tfvQD/xWBqVrVDwwjHYQ2AV1TGjDU20Lj7VkG8cB99JnUDd5DOr77lBMKnBnwig/onyAWaZYNOceeDizPBLKWOp0vL9Xbzfu5wBhMaFNVlOJ2QwJLh/spq+x5tDNp1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754795395; c=relaxed/simple;
	bh=9DVkuta/cHRXvEfDBfP3FIpP9bEeFfYrt4Z4spBTTRE=;
	h=To:Subject:From:Message-Id:Date; b=qIPHtdXyh1a5CedrDi20n+++sKgNxuzQCOlC3WEZSP0LXgp5K6URWQYyZUGUU/CAoW2iMM0ycqG7c5T1RdbF2a9tOKEcGw/9i7Aw38ZYG6wMeKcRqjCVztBAWvpmGUu0KwsKJbRFXShI+NJ7CdF5IkP7FLVnidc4JM31GEqOg/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siumyQAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siumyQAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754795393;
	bh=9DVkuta/cHRXvEfDBfP3FIpP9bEeFfYrt4Z4spBTTRE=;
	h=To:Subject:From:Date:From;
	b=siumyQAUVY0uqmHQ4gFJQws+kpRPXkC67q40E2TVonkgIk2hBclDXjBrG8xcXfddX
	 l7Ya/TJWhlD2xNz+ZFea1cvn4sNEo6/gTS9WSB7D8rJxkqilohEiuQNavB8PFuLYwH
	 qfbb05jXOkG/NPS6oCJ4Z+fbdMd4ZUsoUuxW15dwM8N8GKcAFA9n5wLGrMgCrTjtrN
	 2ovPteFrr/T7aMN3RoCPtfMX9OWwtGj3MGEr5yUFCg7rMwBcnpRIozmz8Bh1Mr/bu1
	 LleQVosyNQLNm7OHh/Y21lMebNhdr7P9zJrJF9RalY7oZS408d0cGQu+AysqGqIzWO
	 qUTGMhxUotuQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FDCC87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479539357.1633.11420840413371793962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75070b0df088e818dfe44b0e1fab203e365aead80476a46e99dc8ec6dbf3de88
Date: Sun, 10 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754795393
