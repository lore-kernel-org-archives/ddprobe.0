Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE2983CC7
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755419394; cv=none; b=kBEZRKMfwePhvfS0ru5GND47gii2i8zSO7tIWzJgp9W/KQ2vvqAritqd7EqSBYLy5zt/wBTmt9w44O5qtv3yzr2/EN1PPSvi1AjwR0Fyxpn7QOEgY4cLt3X1hWetx1yi8H3/QkacJGGu4p9Usmj5egtcxC2MbeZIceDINmS9p7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755419394; c=relaxed/simple;
	bh=Ls7mjnOnMcJHIX3wEB8tmCT8eMAqRWLy4hy8/k/umu4=;
	h=To:Subject:From:Message-Id:Date; b=EQTk7jal4/eq42XMIJvfaiVcODk3jASJ3ruOMHianRnxbaiZn1Sgs3Yu38RNc0gU7uyOvnYO3aNHNfV6Il9/IyovGgPjQh/snsM6AwCYbYBPo4QKEtJMmDvoOIjz+rF4Zr6V4tUw4TqubFcqJykkb5RmE7b2IVFk8RTyYG445VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OupUp8SN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OupUp8SN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECB1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755419393;
	bh=Ls7mjnOnMcJHIX3wEB8tmCT8eMAqRWLy4hy8/k/umu4=;
	h=To:Subject:From:Date:From;
	b=OupUp8SNiUabsUXNdzggR/TGGP1o13ZIB95vLE+C/RyRkiobEggEbOMgcd67BqpyD
	 BI9h1K1aC718rPbVqmfahomnAl+Mgmi1JyaJ+wn3LGcbSVUmcBXcKGegjB4QwJBHrG
	 Kx9lzBOZJyAsNX6m4VqGBeaB9HQfq2sCrAmInjcJUpywDk4oy86UtRLVM5MvgDTY4h
	 NdO/OEErNAFNIfres/GVyxoyFdwbyJiP/lzIvnYEgRceooF27XzvFb9tCxiYuaj13U
	 sjR3O33r1jNe82M7PDLS6YhTSZgW2RbGaN1+VNerUxcFJi/1tUOEu6hQvemQBpDvZc
	 BG/3ARnXfL9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF0DCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541939358.9693.15531275061463211368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e8d2774f6928927bef4930fe954102b8371d0ad51dde2cf6ee5a0ce9e9fc82
Date: Sun, 17 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755419393
