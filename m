Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C903125D8F0
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754700593; cv=none; b=u5nums+x5QcPC9TinAeglcycBlSMlJoiGalbhynPZ41TdQFdu7FGEGrmuj6jSlSGJ2MyJ4g8mZpJzACn6VwzO+ywK2FqFeN+vAa1xgk6rIfzAHMjH9BGAfTzD3WKZj0hSc20ZwWYIB9N5ggmEnkGtIYDkZcgKnfmGutJjIqYLgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754700593; c=relaxed/simple;
	bh=ipboICZieUKD0lYcWrasgWcSqXnT79Qnp+znQLcLlnY=;
	h=To:Subject:From:Message-Id:Date; b=IRcocfh5lTKGp/xp+hx5nSljHmrOKx2StxboRumsK1oWtaYQ/ph0l6zQCR4yg5Ebkv/G7JAAgyswrsHV0gvr41I6jkG88XS4p8z3OktbyQh9/iPZ5W9bPm215M61zRtuSGzp52sLAJRZM6yO/5BLdlCiDbJUcJ31o/8IN1cvLPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNp6/zUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNp6/zUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AA3C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754700593;
	bh=ipboICZieUKD0lYcWrasgWcSqXnT79Qnp+znQLcLlnY=;
	h=To:Subject:From:Date:From;
	b=XNp6/zUmaLJOjj81uRtP1F+XWAEE0TfCuYIRh2s1VC0G6965e39MzrfsFoc1pC/DF
	 upHCrLCSVVf/5tr6INhuAokIXra8KyJDnrQVub11czNOS2AGG/n9PxKEb5fBy8RTHh
	 HC3KV2675nLMOgCZFks3RktYVwisNWZjKMYbSox0zVFIIWhx8IVjpNsxNmb6t0ko/T
	 nEwBzvkXSZVc/ldg21E91V7Nfyz9hP8Fg0MCACJhlwaHvlWGMhn3ZH0opu4K38NZhw
	 kGc4EvnR19B8xruaTFqkZXo/Gz1CpRsMwzz8DWArq3p9isBWDf9eS0MIZ9Smjghspe
	 sbipy/V4pmx9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C82C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470059357.8880.10560956309952342032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e447aa568ebbef7844dc75fff253cf12cb0a85cadfc2b0ec7406996e9eca68
Date: Sat, 09 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754700593
