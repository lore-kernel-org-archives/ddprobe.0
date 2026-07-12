Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B37C1A0BF3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783890514; cv=none; b=a0vh8eUjyZ9kD1cMEqhKZmWPazGSQRC5mpI2SwMybM9Cfk3N6oTQYu1IbwbIUMkXfJ8hD7N5ZqiHE3e1w8x3AsOAABaKUXbyHU1uZ8/DNDwIEqwRncocF8GsdHArHyAaFvXVsvXENrlmOFuIU9QcVmP24bpVn2fla2kACK1WCUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783890514; c=relaxed/simple;
	bh=RfK5M3/47eP6JEdzAwXdxvlID6CeXZ8qmbAPxt4H2xw=;
	h=To:Subject:From:Message-Id:Date; b=tzx4DtENgAZzUQhk4own8Mz7SBIceJ6B71BJZnYV6nyZnY/ek0XIVFktzqZj2h86Aa6aUCI8YVryDe06ZO2H5vkImb5lAmFaWQUkBiWlDXPAQcvxQTwIXmRmiCXUFmIyDNUC27kknTdVRTl6TIsEuzomTg3SWVw012cLt9gyEZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXjr7yNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXjr7yNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7B2C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783890513;
	bh=RfK5M3/47eP6JEdzAwXdxvlID6CeXZ8qmbAPxt4H2xw=;
	h=To:Subject:From:Date:From;
	b=NXjr7yNQbAw35LUF9CsseiT65yuEn/waQMg/hUB+/4MyN63Lk4Yq23LnaqwXtmAoI
	 CqpIo9t+n3PjH5675JQZFw5ewf5leSS2HVLEMmAXXncNZJSVzVOEBUaaXnhQ8lLyHo
	 CiuxNQS6fGDwuzgQ89ks7FWYHavLw07NGsaL8MwgpwbP5TK7Taz0Hedd0k9k98vZnC
	 L8ls8sFVPMAbq2vfSBHU5F2M7PkL+2eqToBqLdVfT5kq0Zyy8HdnTKUkz3y814VPk1
	 BrSsNCW3Bm2nwqOcBLcyVb81PMuuFlw/++fiH4YyqMhdVTQswCVBAQn11deTTU9i0L
	 4kEpXhAR+3fsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA4CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389051368.10144.1419728978818251402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ca5579d7666f491749a3e402762f73a369d6b1e2ae61405303d948b57000a1
Date: Sun, 12 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783890513
