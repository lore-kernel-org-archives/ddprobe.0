Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D282BEC52
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773618294; cv=none; b=Y6m2Idp8NffUu9mdmpe4e2lUWU3d0GFHAA8oyrr7hWGy+/wdY4JnbRweLNIVcxk2X96154dfk6LngA+piCArXp6SOgd46v8p3Y+xAqMw2lF4BICsl2l5yaFA0I49uVSdjq3zdpBgeRBUk8wI0bzhcuLL2yqlyzWXbedhJLrrdPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773618294; c=relaxed/simple;
	bh=Z6Y66VDuU5XX9BQAlSHvXrMerpfIRh5JvD4AtZ0KLPQ=;
	h=To:Subject:From:Message-Id:Date; b=MZsz4ZGXnfAsjN4YTfERI8w4v8YedSB3vDkKE6q14iyqpp8nECaT/PHjxabNvn6ex5UzwmZOL0xN4iXBvfTx+DRL/W7mGcXqjQksf8l/gEqoVZGsyo9EubkjW8JMxGJGffSqiTwRRLm9UsgF6aRjojXIXZAQT5E42Qfn2i7kGIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pa126kjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pa126kjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ABFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773618293;
	bh=Z6Y66VDuU5XX9BQAlSHvXrMerpfIRh5JvD4AtZ0KLPQ=;
	h=To:Subject:From:Date:From;
	b=Pa126kjUFzUdlGojne+arlKj/KSvoplJRvBbCA5VEHa+hUaaNMxcyb4mnwPCN/EVI
	 qQrJwCMVO9I+wot8XC/8H8ftGODhpExANb+w+lQAgHu6VNM6O2N+0j9wAScAgxcByv
	 mw79BI00aq9JEDxc+6ADNrmsFf2IzhwpnOgBoy1oyNuAHVi5+3wwhjx6/CmCrHPKWJ
	 XKcZ6rGm9cCUkMzvJ0DORQKj/u6ydNif4tsH+r/9s9aMuRy1lL+AmlVKRRoBXjjjr6
	 KnpZHP0jhxzn2fHkZeuxd9lrJxwrijQdmICerpGsZ0dMqwTQUSNiX/FZ8mbj6sW6Xj
	 Dv1p+Nao8pOYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F700F30283
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361829357.28486.9878041204082965767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67447e9951a9ef6c2243f6bc03f98c32c951d0fdb37556d3505415a6225c99d6
Date: Sun, 15 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773618293
