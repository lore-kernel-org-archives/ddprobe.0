Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12350286A4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773209094; cv=none; b=ELmwpEh+Y/q8cHK2n+/j+oAfqexDTzwwT6FQJTa2/Jr/B87v1ThnBeblKaDz0RiM0JlMvfcYdB+DV1sUZ644mjGQKDFjYZZE/wzI6tkRC6wmPrj7313Uxef1VaqHcrhxfrM05aPsEu/yINqefE7uJ5DxR0dDM9EHWlWGlrzihNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773209094; c=relaxed/simple;
	bh=vcE8lb21iyMGnrjdhskl864g346OiHbrwGeoLtjg41c=;
	h=To:Subject:From:Message-Id:Date; b=aahTtwBzYAZOHWTZdU60pSsfIPC4UJz14moBl0VVgyA3HEW3fYs+oKkbU7O2GiliJJJUOUwZ+gKA9Qx5TVsDuqXipe2PXpZxSKqbY3X3I1KyH9E8v3ZO+p7KXBBVokBlXx52EI3mjzO+UtP5SBblyJTQTGcosTvvbg0i3Ry2Qe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DO7kvz01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DO7kvz01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80AFC19425
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773209093;
	bh=vcE8lb21iyMGnrjdhskl864g346OiHbrwGeoLtjg41c=;
	h=To:Subject:From:Date:From;
	b=DO7kvz01VDJNa+Mf3ABUj/fO4f+DkfcSB7Im3hsniLuTNQVF9tyYB2/vdP/9ehy6O
	 /T3dYXU2d70Zymq8qNc0cB1uTG5wOE6qT3QNERPvPo7lPeKN44Dtd/yiLz5NTh+8A6
	 vOjFKk7dx+D72Or/bw0Vr4O8SZzcl0oSbBAIdNSCdBEs2s7fM4uoY730XandZ0onOh
	 t7SzMD5Qja1tByMbRJPuucQ5RiogZabHGAdbVar4nE4+2No9499VpT8UvObie0EIRz
	 OsYs9JhzNktuq+3v5anq2oN15pIKihZmakKjkptG68hIndA66fqiBpRot0k7qib41b
	 vk0vQ3gVxGzAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FDFFCC9AA
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320909359.4241.8117842216977588727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eac7002fe2c7055114da5fcd30e988632c3c500889e51ee965ce89829103deb
Date: Wed, 11 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773209093
