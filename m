Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226331A0730
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752395994; cv=none; b=hk9FFX3TqArYmNflJI+HuWv9Wu8Fsva3/1Nsqpon5Pg/FgNm7NK15MutmtBRtVfzpXdk0UVmHtF0YCwAVYzoIkWT2/5YuK1Y73TaHJP4VOaQk6mihI5xkXgl3oNJxHpo9AoQQQ/eFY8cBKbROIMK6hzUihTw1/Ch8sQkNbOmkxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752395994; c=relaxed/simple;
	bh=Y3bCUsgTLHebnJWo0yfpegD+ON3uM0LdoHS/M5dDsRQ=;
	h=To:Subject:From:Message-Id:Date; b=Siy86DIN4Bydrf7Im2DAiOFUgVNUkGfudX/BcH4kzkQl9BVQ6X3mqigDq8Nh8pt4qLVG8sP2JcwsRavTchDt8d0An9lsfJEUN/8vL6is2jkc822Loho9+7UPgyLsHi92g51bo6N2Ey4FCIn6c1Y3oSq6XKRHKmAtqkY0dgaTVc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPjMUvna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPjMUvna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FEAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752395993;
	bh=Y3bCUsgTLHebnJWo0yfpegD+ON3uM0LdoHS/M5dDsRQ=;
	h=To:Subject:From:Date:From;
	b=gPjMUvna7LLxvsZkyofcPIBEt7RceOM8oAjMOI8u4oKfk6jSrzgkfChgJCEhrMOgN
	 DgVSfvoYAON5KUuhhwImS1BxQH97E5Vr+ZXknrFfh5GfsUIs9JhOnzSVjSkB1BxN4S
	 D5xGh3yP3WFqIH3I7hKIK1Jv85iZa2jebKHMiNlDCHVzW3Jtb/BGth1pwLFhHtWj7v
	 s15lRy39C5naUR8dzpFIlTKjYptvoppDN9i0rK/sI8cOKZspOcz2dRLBKyaN1Gd+W8
	 NWztYoCi1KV99m7Uz0isHfzhEdVKyuvmdpd/1+Y3i4dr5F8R3MjEtI8CjrZ3tpI8mU
	 l1zDo28OXcmbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED86C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239599357.9496.1125359761617101101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5467a5c200ed6365f4f891148e2b1a85b51cf3f7f066a4ef9e4b62bfb96a17db
Date: Sun, 13 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752395993
