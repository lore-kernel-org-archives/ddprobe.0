Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445E913D521
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715027543; cv=none; b=aUYBaDTPTEORbrJ4hgYDVjMQngHa0YPcSxmq8Ao5b5F/nzl6YgRxz/RcvY1PF/cBMZk/IGK3DXIhtYKCaBLJhvLEx46SmciD8Qc+xNyxBaiw+a9SKqHk3qSb5eTj1hoQecwF8E9Myx00wH823+VtqqIlFQpP4XhgSSpNID2kLBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715027543; c=relaxed/simple;
	bh=qfNLzxMGDlEypWE6tTZi90s/+Beukynzg6Xq66KEQ1E=;
	h=To:Subject:From:Message-Id:Date; b=hNNDQuDfLLsC2akwB5tUgLs00Hqt9WJYGOb4+QVa6w+EVwCxXDvLfwda1R3kxcBDnUkibkxYBLq5ToQ/H2+epcpWXuZH6g3CGQ8aqbc4Hn5hjDTZIim2r7dF8T0jaRdW4Ax3oCSvq4RCm9DqAHqttVDLvheSFm8GC+dOR+MvUco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTiw2HtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTiw2HtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1154C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715027542;
	bh=qfNLzxMGDlEypWE6tTZi90s/+Beukynzg6Xq66KEQ1E=;
	h=To:Subject:From:Date:From;
	b=KTiw2HtCUYnDXjqJwpIvmsichZ7pzibGB3KS4iN3Pa9QfTQ0aC7eURrUMtvrlEhED
	 MqQqPxabVYzXp+g6MDq6CP5gmByuqUK6MhjygKpGVwv8Dgm2ULU7AyulHaQ6gGuSrC
	 OA8F5bFdSyrSNfjSTxB/JhwDcU2uoSyFi8o5GGtApyC+LT8w2kSmx+heDOtR4tGM1Y
	 K3Bys9a5mA3hSduhoDfVCBltfT2M8iC5MKEj8l0lw+kmGem4bCFLhCelGv4jnzHtBs
	 tumpTY0r6gxqynwu5nA+dlrmM5XXYuoORuUNJUz3YFwsD3ume72TivqW++iJWNkKOC
	 kSnWtr44U5a9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BE2C25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502754277.10403.15400494155428355650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9716750d9ddbc273fd6af91c34745024084a7ec367df6aec4bfa6aee6641c6b7
Date: Mon, 06 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715027542
