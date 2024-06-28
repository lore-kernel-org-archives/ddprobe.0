Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4520E157E91
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719585263; cv=none; b=Vh4wslIhtdA/Uny6U4gBwG2fOe8PMXUVH9hOXz9sd/VwpB8drU58rhLqJTwsh23Lgpa/XaJ0ek3F9kZ3WXSwGDAvX5tM/f2DzeQeX9sSMUimGqQ5CjAdKi4ntSi3FolLnvsPVLJSkY2xjwOad91nx904tW3o6mJStKhNQacmM8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719585263; c=relaxed/simple;
	bh=XuTETNzWfnr3uVsZK3oGRAovt4O9jDqyUr3xRk3mDwo=;
	h=To:Subject:From:Message-Id:Date; b=GNwUdKwCQVLDWb4tuBS/r8AgW7cKXKyr3NI/sxP7hd4M5w3SoIKYdOjQFkbqbxeSwjfSErL7fvrQT7M+Ja+BQZKTbLUE9QYNvRTa//phSeIlnmBNZgZuiFkEFRv+Y51nCDEATQzNWXqgxCZeLVXKL6iR3CjBiNdne+vn6WhlmCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiqTzvYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiqTzvYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D926EC32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719585262;
	bh=XuTETNzWfnr3uVsZK3oGRAovt4O9jDqyUr3xRk3mDwo=;
	h=To:Subject:From:Date:From;
	b=RiqTzvYz8NvQCyGGJEr8WxflEbs7bbfbdY4VFfA3U1L9JT316Fg8ABFZt8TzwP6SB
	 0tI0haH9Dexz2AYLT/V7Ge5tpf6E3hPZ6oS1MdRo0P3Zd73d9QDsKBOM6OGVegZEQp
	 2gXx4gA/4VlWEVp3qeSpzJglPaLJH8w2N+Nht6sm2hHYoZiQ5dIxzuBzoquXgfXFdT
	 oYwrjim49IWiCMywwCY8CfVPg7Zu2ca5klx+6bTj5KZiv8seUEEHCVMyxz65QEQuLg
	 cEYwYFf0KGlWAzVhEzyd7EqBlMKz8bzxmUOkGRT2E99UW41nCXw0H/RUVqu9FAsTgd
	 RG8LKkdEBbypA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4696C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958526279.12541.1818406371204380204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435f317a348f67d9207917fb6e6c5167b6df1a7da5c2779f830a0ab39df0367f
Date: Fri, 28 Jun 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719585262
