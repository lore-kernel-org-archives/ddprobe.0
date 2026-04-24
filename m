Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE803009CB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777070254; cv=none; b=rPeeCYGTahOZX8OXsjkYLMSJERs5d9eeLPfLn/MHohFEsCMXufrUm/9z0mIayq0dhVPdpUO1fgYRbyGa/zX0QmWtTj3kEnrgPJBPYGni8DjsouezGAFMAmkJsTo67YU27Iu1kHqioLp0gyqKe/M90bt1M0UyROVhSxxztJoulFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777070254; c=relaxed/simple;
	bh=e4Wt0iT2QOky5ZJQuoEWPzwNWSOYvyoE1aeUpqo1UcU=;
	h=To:Subject:From:Message-Id:Date; b=cJcSExcp/IpQnImWoNHd1wFo5UeOtgQo3Q2rG+kgs7CJO6dLzrWp/+jdIRUXEpcFcAFUPEoylQxS4IkZ9kflY3prC4fQ5tiOuua0nSBAu8IrhgX286Cnp6K8wUICWWuu87Vo8IcktS8U2S34uLuV/Z5SV0duMJU6esBLZJu5fCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDRghLYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDRghLYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC78BC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777070253;
	bh=e4Wt0iT2QOky5ZJQuoEWPzwNWSOYvyoE1aeUpqo1UcU=;
	h=To:Subject:From:Date:From;
	b=YDRghLYmE2p8iDggNd7loeJ906oKglJq8Q4LK2fNI4eYOXYbhDOiJimnFf1b8bUCK
	 Zw/yEOQRe6E5QxaA1a2Toi+9cLY444mnhkHDH0k4YjX+rbKVSUTzrSYdJtyhv/3g/C
	 afNjggN0bYQ/f/sbKVpRRiKvaKgjL7oXeSrPw6aqJRil18HkRfZk5IXCOmeM3HPbM5
	 Bnm0nfu+HGK6BrsJklpET83HPwM3M3y/l0GkbUWLbce0ps8E9fGJUHDLKoZTlgzCT4
	 my7Za3cCV2NHG5URwft5Ec6gXfADcA5v0Sv2PdWAOFXQgfRQtlVP3Vy2k7k03r0iTc
	 D+AavIZHfEocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB81FF885A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707025368.28112.17229470617803086833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad64ab668f5d3c95cd052f71c7d32ae42a108572da56849d7c8bda10131ca42f
Date: Fri, 24 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777070253
