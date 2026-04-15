Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189064369A
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776215854; cv=none; b=IEX1RDO1M3966JXCxSNKfE33TJR7QA7o3tKz+Y2nMqb7aVgzyjHj4tipGBEbuI6Q6WIzdiMNc6YKAMcSp/pogjEWb+M3E8rOkbWuGAL+M6kTetzG3GWEttO+K5zIh1hkdwnaoyOxAF+k6PyzTXjCL0PnU958rTDB/e69b/tizWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776215854; c=relaxed/simple;
	bh=TQ21E1HbqiLfk84Tn5Y4mXksgslV3tpqjAWutRxoiTs=;
	h=To:Subject:From:Message-Id:Date; b=Gocl/96NKUmTg2W5iDBY8J706kHtcxtW6UMWh+Ey1idAfFGWQjiSlf+HiumvWm0arc6TmFNqlgHeSvevAxXh0i+KuxD+vfUqjKJEaRk002iDRa3aLDt2dnpLFQncMnhA9Tyj7yNN6RyIauvcV4Y6pO1MXIqfUCdG0vhQjB731s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3o3JiqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3o3JiqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE586C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776215853;
	bh=TQ21E1HbqiLfk84Tn5Y4mXksgslV3tpqjAWutRxoiTs=;
	h=To:Subject:From:Date:From;
	b=D3o3JiqGrqksE4R6rk9Xm1eKrJogdBwUed+rUaBeKBVe7OXPHkc+KlUOmNAe9sTIt
	 +ocVCcjj58XB5WY+Do8SDfaLoK6HFbfiLd06BPxzrX5U0DcqgitOUzDhJWx7cg2A5b
	 8dEUSmG06dhnlsBQFpy8XH8EjJD+D2G3Qdek3IJpuvHSspPCKtrWeVip0I4uUXm9Eb
	 Q5nqE8MVKJYJYQzwS67pDFIBiGG2LvM1OnPc+51+UTMkR9Y8oSIKKfXAqH8Rk47amG
	 8K1fAk393k23Jmqe82T2+LReH2U7oHDIfIrcrBwXU0jteTuhH2ueOxSFzJN51Utrpp
	 piCROb8ph6RMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE7F9D0FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621585368.12389.6283424990524482228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d0dec8d55bdd101fb29fb1a8923e4f126b44c6340735e4bc7ca42432aa35fd
Date: Wed, 15 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776215853
