Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5BFAD52
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714300943; cv=none; b=cxuXRWDb3xupplrZLhxeSc3ZN9PcbyzcsLfxvQTCjmiyRiaCkLAfHe2XZAmDooe/QyxXoeTBJX85dyinBXArwEWNkX28V1xOku/IVnsTJc/NH0xEfxmVQUDJxUo85tJpF9KNV0FGUP6LMv17tbpgmif4JW6EjeF7DKXXBTpCH/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714300943; c=relaxed/simple;
	bh=aUBPvQCA1/0FCRf1St6/BsNZCa00qZO/HgMcHfIeEX0=;
	h=To:Subject:From:Message-Id:Date; b=a/GnTycxOMsO8TAj5/yfKgxYtetfAXZ+rKVN8RUQ7h1LFDeagnGFAdyhRVb374aam+x+5eaHqmeMc/oLVEHUmO7qucbyxGBCndyOef0bJg/rQmNA34pz9jQnQdCgOuyOi/V+RRcPIk+n+8mWHorHizGvtXKmEr3EFZcz2mIsIs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR2RBB+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR2RBB+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4799C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714300942;
	bh=aUBPvQCA1/0FCRf1St6/BsNZCa00qZO/HgMcHfIeEX0=;
	h=To:Subject:From:Date:From;
	b=TR2RBB+U3gvAw4LCRItVidBf+RmMv2VyJlac885daRUSnigeYPkO5ZBn1H3oZVpQ+
	 c1Ve5PVz5F9C99jZoVsZGlwap2/AD18ApZKxJYGXi9s/gZBkrCZPvejfz713m1HPgg
	 rk7suaJWpYNlAa0jaSrFsAa50tJYoZirIJmKvUtylFIEi77f0vv5v00OC18seuWWg+
	 oU0IQnyuc2/tKJMc35mk/faZEu1OMtKGMbei+u0CsT8EARygxI5TGZxdWkpG1H58sd
	 AEc9xrEmd0f/NTbC7HBnWhqbzDoFoTkURrpWS8O1wjK+E7D3MB1CZr040rc+Ca3JIp
	 xCWNhJMPr4oZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F34C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171430094276.16765.2155064489131323524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a0b8817e95c24ced822627f84a7721964059a390e87556256286b95764235a
Date: Sun, 28 Apr 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714300942
