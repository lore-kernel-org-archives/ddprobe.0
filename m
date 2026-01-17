Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0830D21FF47
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768663434; cv=none; b=onuw9RoSJbE4RCHaoPqkGJ9ij7FuUSsoPqJSFyhvtEbPsMDgN5rW7HOOYPIGHOVckTnfTnmH0nWpdh3cpYNCiTjk1BU0NAcv6eeteuJSbD4DsGPiDZk7umkleUk7dDx1bnR72KSbrjTpvXsQcxTFtk8NOEqMCi0AVWFsLKZ1ruU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768663434; c=relaxed/simple;
	bh=BCGqQii0i4LTXEV1O4RMOEAXhNfayO9h43S4aSevLb8=;
	h=To:Subject:From:Message-Id:Date; b=Nt5JM0/lC6BMXUN9N4Eeu07AinDu+9l/x94vnCQs+u/ON6NE+h45pjjgt4VncLDQEMTlro3+WCOqdgKs047W/NJ2r8VAZf8ftKoqy0KEavx0B4Kv3bdYJ6ioq2LmWaMojWr9vyyC3sdX1yn8czsxdIw53sV8E0m14z5ufIjLlsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fx8jRE/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fx8jRE/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A085AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768663433;
	bh=BCGqQii0i4LTXEV1O4RMOEAXhNfayO9h43S4aSevLb8=;
	h=To:Subject:From:Date:From;
	b=fx8jRE/afNUsckr0CpQoOsEhtbLSCWpu7GqriU+9akXt55G0kN6uyMANzB8oInaVR
	 +qU5mVP8XFT0o9ryZjhbUsweA0eTo65AupuIc6+dBPSqnjONkdueZcwWtwjG6SQ5Gb
	 btTv+m8YYoQxYIE0IJ5NDK8nVKOMoIZCfjdahUj69yclGjchbbN4uw3tobmptiimZy
	 aZWIqcgb5bVvMUvtUvz4JH1R1mOJbuK3wChXBeVnbRseCuvGnJs+8PNk7fkFmLw+gr
	 H9qEMMZ4OotI6K5V8lNmVt/kEzvl02aBDu7qkIJ/kemINeDfs3f89NjDPgO8xqTQ6S
	 rMJ3Ys9rh6mew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C1C98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866343359.19658.17203491836940390810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654e9d07341a8d915b91bc5abe94ceef02899fc1d49b4642190f98273cde51a1
Date: Sat, 17 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768663433
