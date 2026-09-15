Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617A1235358
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789480834; cv=none; b=Q2NW5IezNfte85YaTE5GhgTDZ81urpvucFKj9IL2LmBTTZ/dUOMyOnKT1+1OFS1kVsNofjJ18tO14G+yuQgutfG317W6DJx++j5HKMFWVovMat+wB5zal5IWEb42GFrsAP4k0R8WQwJY2RZHz7btCdsD+5m0ellXaZyTrl+K5lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789480834; c=relaxed/simple;
	bh=+BN/LBUJeiJ6ycs8WCTT319vgo6DsUl5tnHLAn3kSdw=;
	h=To:Subject:From:Message-Id:Date; b=ksFLmdALGaSFgKCu4BCOc64Ycrtj+DWxH0C1vgBDdRn2G8Mo35/7DC/2DUDzr4X+Qdb1tSg/R9Ru2I9BpmiO744XMleiRiOQ9gx/NSXPLAj+YcpHmUXt7H8BMnly0mO3tp6jRyDqM/gioxoOYFblbjkiE7BBbLYozz4RsJmFd8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2VVegtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2VVegtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF841C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789480833;
	bh=+BN/LBUJeiJ6ycs8WCTT319vgo6DsUl5tnHLAn3kSdw=;
	h=To:Subject:From:Date:From;
	b=D2VVegtA1JjNHTw/9u9qQwpihMWE3gMzOdCplmCtHA8b599m9WGPzJohJnxfTD7Kq
	 RUNDUx0MqtJyN2gRsVrb9SZXYvCSA0lBBDg9/dYAo1XO/NpVarNmSs1x/P4mlC1Pqt
	 Yqia/UFvXowTWpV8oKNMDRA/QjxIEdNOkXjj053oXQgXXP8YhAXeNIUj2FPjx20Z41
	 IYLAz5Jpbwp3rNjkGB+lNkwc5YUb/zkRMx1aqv0neH3tDskIpC7nwH7NjOdwNeUd1u
	 VYJkogxWyNPLuaveNYK5fPAwwR8NqAKtlTZTgsS+GpnH1E0Z9tXLEKpMCJQ5OyLf69
	 hyfcVT8SHyVGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A6C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948083368.21706.18047272345723939404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a965b0a8f595e1c51a5a1deb1fada3dff896f7043e20848cddd3fc02bf593754
Date: Tue, 15 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789480833
