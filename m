Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0181E52D
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746453594; cv=none; b=eHxj+7AOuY4STGf00GUfnKpI4Wtkiojc9IYVpKfoY6+6XaJVwhjL2W2vly2C0KHwNBcjdnD+LO/AhkoQ02z2F/dfCPfzOpHyiaJfaibGO8zwljxf8jOKoblr7BKKB4cDUs0o22fQHi1MiefdDYTUzq7qlO7aT2keL0bDHysjLG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746453594; c=relaxed/simple;
	bh=m2iNNolGTMVJlyJJuzr/FiNQzdeY53uM9G6o93KXFgA=;
	h=To:Subject:From:Message-Id:Date; b=XnDDkbQZ3zO6rnmQi00TpU+eZrRWyXY4yfyImMJH8E0cpYeEwu34pm7Lzge02PGOAJp7g8DliVcooS8jyMmSg496ZCK8weAcb2zD5TSaE0TkTK5odKFM5R1S7HdURw5n8JauVwKW+tgdmKn8y8nJ7IOO5hAb2BFQEg8PcYX0Li8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWEkNKqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWEkNKqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE8DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746453593;
	bh=m2iNNolGTMVJlyJJuzr/FiNQzdeY53uM9G6o93KXFgA=;
	h=To:Subject:From:Date:From;
	b=KWEkNKqGw1nX5XuTXrziUomMc5035Sh9NpR2mgeVkF6zAsaof6FTmbYT4wI6kFccF
	 JCEaaor1Kk6z1El82Zd5SAiwMjZReE7VAUy/IvRo+yZOFsFzy+C7jp8sFvTkqb1WxJ
	 9A0FYOWWEA+ymvkD+6hc835sjlJpXEHCNef0UPgWxls3y8DQUmCgRQ69mtyVzy0WkV
	 vA8JaMSGYjis3FQ/AALE70Q8b2Gy+Jwlk95YRwghaLlwWaUsv3a9iquSopJh0YUPdI
	 XskWVr5EvB6X1FF9rQfthvH42kv54PLfObLdw0g8Rpg0xhpk9p/DDIB2z95KG6ONAW
	 98vM0sm6I224Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEB1C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174645359357.25348.2703830201786109910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd40c1d11c3cb23b11cb827d91410303e7795b8d8127b53b86ebaa7b6b552ab6
Date: Mon, 05 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746453593
