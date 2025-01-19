Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484848F4A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737291954; cv=none; b=ABaMH2AYxrpLaPeg4CXhsegXMbtIxbFL6HRs9AXHduA1aucfpQSOotuIhXQ1L/vPZMyUSglwQPZDtNZJFcdhzpuJN3WaA9CjrlE65pjaQnS9+l+OST3XSSg5D7aM5XjLggt/gUDvIE9O2G+yl/iWfXyNCPXr6aaaE4fPBTgvONc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737291954; c=relaxed/simple;
	bh=qi2IlpAbTzSglwtqdiT36ZSejdnF4+LE2acpLclz0Kk=;
	h=To:Subject:From:Message-Id:Date; b=JsgmbqRJNsZpAjWAo8hdtv2Du6EKx0FumzWFoZnLnGPSkgyKJAOeiB02HpSb6fPT20bXFMmBwiyW6KfXGEXRwzjKV804poOaS2zoQ3vcIkP0gdWkjvjV/wCsTplhBjQvXOS5HcpGnRkoxfR6EhzIAsf4QuhEHveahXB67lIuFkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgBK1GHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgBK1GHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFFCC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737291953;
	bh=qi2IlpAbTzSglwtqdiT36ZSejdnF4+LE2acpLclz0Kk=;
	h=To:Subject:From:Date:From;
	b=LgBK1GHAEMcIjgyIsy+jgXWCmRxGaWUtKXK7fyuFQwa5o8wfPSdCuErZeVR9cR4V3
	 2fznJnRA8B0ZH50KcjTbddc2RHrQYzFXo0x3mzTQYn5fjteSwOTpxJvu5d1PVks2wY
	 lbiq8qLkESXsaaGLtXDVtP+pBf1x5mPE9VaHf5YAxAtvW9qL+SBQ93LdjHVIoabysz
	 o3pVwPrSP+Rw+R4Wkyz7lhY4fe3Qy/6XyTMqLXYaCMydS7zzeQGxf01x8eqLf4Rts5
	 GK0zOyddHq5mAorgZWO8KPopCZEd91fLJHkpB26xHr7Cu5bc3ZE/LGnxcQ8xZ6yu1H
	 gH6Rm9HVuH4uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97101C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729195361.23454.3638269619283741775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8812e9b772e0824153b82d05e45cf7548bcfa145849e8d69815e0bd0c979f993
Date: Sun, 19 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737291953
