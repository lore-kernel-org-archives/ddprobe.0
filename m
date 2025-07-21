Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B172E3716
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753136994; cv=none; b=Dsysxtn/7QLwXNZ5r3oXiEg0t23pqsnvL6jEyM48bdq5A9CSliCTykzDw15V1Z/K+P8kDcTt25xq5DEQlkfg0PufuVVVnUy8kU/N89igkpQsQVfTCKc3vvwvTIX7XYkWxDacsnltcuUxlZesBfTh3yvCmMbJEuhN4jJN3OErexY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753136994; c=relaxed/simple;
	bh=y8LQHPLcMcEhP/ZT7PZFWvIcSb028EnD8+218zWMH6Y=;
	h=To:Subject:From:Message-Id:Date; b=Yvy/O8aSiBJI8xo0F6Eeie2JXYrbTOfkGImpjxY+77VRHAzgCeZAuy1qflcPiYOOe5IJKLX0G8yz3tOJLjKb4U2Bza9gkCBcRqcNxvX+2b6Z7ajQCezJXZj+wJN+FZeqnl2Dpy8hspy1nlkqaHnDzmmivZGBfQKYpeNPtFN6v9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isiCEr11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isiCEr11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A977AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753136993;
	bh=y8LQHPLcMcEhP/ZT7PZFWvIcSb028EnD8+218zWMH6Y=;
	h=To:Subject:From:Date:From;
	b=isiCEr11ug/GJfaJXGVRfp3ftOd8gqGYUANe8OkXFoyeVzGHc2mh4x7FAS6HW9+Zm
	 WfsRv/0vzgkQiTNSezIOdPB7O6nCfWnIGEdO7ukodZIkhjRNTKlDv+xuapu41m2Xsb
	 FbprQMt900QzGnyJsv9Z9raS1dT/l1fWiSbi3ZT9PRxdlGFXayprHYBXbJ0fv9GHKd
	 jINB25bxhzCzY5c+EfYfRsfz8m3KhRSFKApMFwcTPz2Cdzp0LDQ4ZdqTLVh8M6Fa0Q
	 XleGvDmVSPA9mzDd3gU2QKaGfM9Ajh0fLQHzfb1k93xR9ciRrU8+Rj7kJ0Zu9nxQUx
	 u40hb1QIG0sZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99978C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313699359.27193.8613073327742713168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224f9ea67db11a4ca63c0ae2d18a0c2fc6c57140308ed9225a16a73a3d08c922
Date: Mon, 21 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753136993
