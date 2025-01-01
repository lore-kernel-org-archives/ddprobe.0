Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BCD4C70
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735762554; cv=none; b=a7wERm0lkM2qxRRK2KuZb9+MGnft47laQwc1HM3JO8L9c69OupdDW0e/U0m/RLyQO4QuD8nxz6Bp9e3Qj7pbNEgqFpoURLQAX0Myo+ZKVByiiI/Oe0rO/DCte4+FC/kSlVieicVfzMDZ3i5WFJC1SUunfW8olkA29s8gPO1Ow08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735762554; c=relaxed/simple;
	bh=ACuhHPjnYXlbreVm+8Ucz6PwsIDP0q/xtOqsl1+hSdg=;
	h=To:Subject:From:Message-Id:Date; b=Hy8rlE7cjfdR71bSC9NSSt+xN8/a1x1rD0V2JiADgLO2PFlBz9z/j4SIwMAR1oUC4RgFfeGDC73plPoYQqZlCH5WQrXyCfJDyGw6yiMPR7tJzFLfxcmuMTRi1PRRezCk09aBAW0vK24gbXLMr84ticiefBjuKALuydYqWUSnSJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuDNdLi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuDNdLi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB29C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735762553;
	bh=ACuhHPjnYXlbreVm+8Ucz6PwsIDP0q/xtOqsl1+hSdg=;
	h=To:Subject:From:Date:From;
	b=IuDNdLi5jAHjO/or2JxKHGICfPBEjLzR9sF02EGdzzFcsS46Q62PQd4416eCnN20o
	 fMLLMI6JiVH2LhjAB8hm26tvrffzLEbieqvEO5SHCjGK2fqZRU08YvfWc6uGyrPbNb
	 8mrsAAOxawrMxHS4sxhJJdEWXbqJFfWruvs/sFVOSwKRhW3ymA07UHWMX4AXRB6uFn
	 0+8nAaHqCdmhJnip2E7bY+AXuv1dXMCoLJsYyhZF3hAwhvrazLiP9CXNtvfge82HfQ
	 aGoWneG/GejZVzeczA+t+j1jnfEe8GyIIKhDQ1WiiDAopSlpZHq67XB8jLcOEDUwFw
	 ljk9yr0UK0wng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958FAE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576255358.14390.12629655690760228727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a76611559dba487d438093a77831fdbff2678ccee84f4d2c07f9e577920d2f
Date: Wed, 01 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735762553
