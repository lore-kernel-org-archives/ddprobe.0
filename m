Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604A73B5E01
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791610834; cv=none; b=ZKBClGY97GqrxWWRuEtAKF4/AhoAKBDVoz6GK1BEkjngstqa44YQoat3vyAwegloLSsqEToyBsNTDP6PLoHM5OaKVxhrC0AL21iH+Y/yUo0TetYyacCLUgL1LSKqHV+T/ZsPcesV2MyIpdZ0//w/IlbU+lbffbVRI6CupKPQDJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791610834; c=relaxed/simple;
	bh=FcihiX158wcVRoAIXloFGlqZqkzbTKYn16IsTgo0x2I=;
	h=To:Subject:From:Message-Id:Date; b=p3M5IP4W5UdGPv9br8Pp0Zpe065z10Zm7hVPq+v8GQbn3wFZTLMeANPzrNxpmAUhVNNqQZ9H7SZt0OjfFcrvlZABPdT8e2LSrgY0Cvz7hJWEKYVwSZrgl8Nv712e3DDkFbwKD/65b+xBhK4O8TAztxbmzD6URThxhaJ/y/IRbQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCCpLMCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCCpLMCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3EFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791610833;
	bh=FcihiX158wcVRoAIXloFGlqZqkzbTKYn16IsTgo0x2I=;
	h=To:Subject:From:Date:From;
	b=RCCpLMCpdPPPvqYS6XmkkE4Q52ToscejdHpkdb+EU8DH8+/lchgbKSuBSh6A5lzlG
	 oojYVhqkz8lZBMUNFU51bT2gXR8nhVIasPT3+wF25oX/3zLlYBOUvlsXRlNfiuWDYW
	 eJmLRcyehkq9z40hbVJm3WEwZAlh5yZ0FbFx86GTAAQKYwQsFoSnTwiRVQ77xGdwTo
	 oj62Tw7xwRbgO4ZemigAS2ljnx54KPwCN3Hl6eXwUtN/2M6G+n7lCSDt+tg67O5o+F
	 mFpeLtXEbbvL1dh6X6QBBCWSvc7s4zcu5zJ3wu9RWUUKssk64XcaJkAOz85ovhg8R0
	 eKxQ5TwiJaJjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB9CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179161083368.2812.4926269798785840319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd4123894964b8ad53916c7edf29681ecace9e3675ce1d18f68a957fdbe58fc
Date: Sat, 10 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791610833
