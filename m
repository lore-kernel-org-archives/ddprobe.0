Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FDF2DAFCA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768555433; cv=none; b=Cggq9SJZqx3+MXXdx5CG3g/X68vitnJNfJtP68tcuMiMYkSr4lOSfWUj3esc6kGbymquBOmF8kDYJ2gC2HlMY4N/quUu/KKR5IxcgRn1fd/4NM7XQrln+2jE+xCM5SWsJNkL1MrbTcmeXR8L6fk//GFZCyQMz+GeXPoDkgPZCkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768555433; c=relaxed/simple;
	bh=xi2hDtASs7wuHZpKUNC84LiCc9jLS7Py170Icc1ljbU=;
	h=To:Subject:From:Message-Id:Date; b=hPGfBVzv4lCzwykv5SuJs2gzOWQeITiXwR/owLmWRHMtK1k24q5lSO0hzofuFTwlzaoSvsXLAbFgbIrzaOZ3FX3yrprl7/yTDFruOHBcVDqEdOcT21/ZKxfroeolQCTuex0o3fd5myymELQRirgQ22C4MZDAj7a/aEBxPCiicLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3eIS3xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3eIS3xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFC1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768555433;
	bh=xi2hDtASs7wuHZpKUNC84LiCc9jLS7Py170Icc1ljbU=;
	h=To:Subject:From:Date:From;
	b=Z3eIS3xwQXz8hYBTJc3M4YAG6vQTZ0zy9U7ZaT+B/hcVgbLgOpmLAyLSlHW43sGGd
	 vIJwNsUgRyNJca2L1boUUHhDgie2iOXpAuYTjt12Gr4a6tbPt0S4uYftPToF3uqXKE
	 Blc9jlwMXrR5JhWBJOg+RHowj2LVBEgg+dlS4CG2eYX6lwzN6fWlxAR1XJY18wttOi
	 Xucu8mD0iEUw/WF4zknfUlu8SyA4T+6WP/QKgAMUTWpNLlcxEMJbC8ssMqkwu8IJkT
	 IhsEf/jTUDwlXLtlAFXomtqHri7pxg9dRRHLu2Rj3NhAHcq3WchxqjueKeYsg7uJak
	 OmvDZb5UyvpCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F321D4A618
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855543357.14187.16644070587351906378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357e50548ac667c3695639503c0c60aa99652ada707cb61224504a0f2112779d
Date: Fri, 16 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768555433
