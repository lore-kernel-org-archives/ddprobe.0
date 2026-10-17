Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F17031F989
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792269034; cv=none; b=VWi4NQo9dFVq2TW0u9ZJbaFeTks318hKA+M5G+Uav4sol930OCupdroMXRR06QODUEADOd25hmWAVdxDao4BicBQP8jRU1R9JFxzoHYuzjMTxDjN6aQVXIPuggPze/wSbXr3PTRi4/7+UmD2IZpRk99fmkExUpwkehVjb5Bk3kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792269034; c=relaxed/simple;
	bh=9S+zbNo7ldgrQYM4GP7XbCB7BgL124Q6RgyEymjWcVQ=;
	h=To:Subject:From:Message-Id:Date; b=tw24Ye03xIt4jlGerx/gZ+nPFFZpHC26leZ0yp30InWO3GkFODxi//XPFIH68uGsrrW1ca+HE5KVpn33dA2Dr+8UQahDfUxTIz7mBowUkrr9BH9+vfGHZnv1yty+xtWH/hhE8QEGekCxgGgnja1EIf8cAVzGmbpXhHbECbt5Vc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtGNlcKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtGNlcKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 187A9C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792269034;
	bh=9S+zbNo7ldgrQYM4GP7XbCB7BgL124Q6RgyEymjWcVQ=;
	h=To:Subject:From:Date:From;
	b=JtGNlcKoDv2gK6AUGqaKXYSPIoPpLMuX9wz5M+9WwritMB/Kdk8NUCI5PF679/IDq
	 RDESINJE2v5Ra4OdbulvZ+Yvr7dUBgvabXOMWB2R7k1XqPzTAnrwXS+N2MIJ1vujpU
	 Z+w1o1ACCPIvAT4CuKB4ulBgqfU9sf8oc8BwaLpSudKIGN7zjWpyjiVYKI6F2SzbME
	 Mt0jGxdne9DocMRoEyesho+DfogiuNFGY1yjkk3O6t7HlwAZj9OtRb0Dv4cTjcCDO2
	 A4nAC7z9CORDNVYp6cetpyV0DYh6wKwmjjbG9OAgDvYxeUJthSxy1Q5U/nDqU5RAou
	 moTq5im/cjd1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0E73CCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226903387.23016.15157588223779589111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9092fc1b4a05c3ca26ce4a15384f1de3b27201226454a95657599199d05ef798
Date: Sat, 17 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792269033
