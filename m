Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5531E1F9F72
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742041734; cv=none; b=hSDv7Ti5fCkoax2+Q3HlQwKew8rG4OThmfcn4bEZMJJXoDZfiZNErpKjbKJ5NOyM46qxwfZGnM16aXOfRZdNpk0QGbYgrNYP3uR1Qk/8eLINqTa5diNNnIi8WhTG1BJ/w/esA2wGsbTHcYkel2EN5gDqrL5wkucPrR4qn6uSDzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742041734; c=relaxed/simple;
	bh=7R+Td+K9ezzmbnO6/pm8iuROqxSEs0XBV1ePQ0ZK4wM=;
	h=To:Subject:From:Message-Id:Date; b=Aka/dAHMRHzwo9E+5kka4blbNRB28/dwLaInNVKkhMAsBCVicfQ9W8QVBEPWN8iSZf7D8fwHXr+oOzZWUoTBViUZvQhbsbF2vLo3aIjxHLNlVPPiHLkET9Uv2KuaAsYcPU5Ago8u0+aady0PdUrFvuIlN56V67y/UCTV6p/1hpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdpW9SNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdpW9SNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C586CC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742041733;
	bh=7R+Td+K9ezzmbnO6/pm8iuROqxSEs0XBV1ePQ0ZK4wM=;
	h=To:Subject:From:Date:From;
	b=JdpW9SNeCX4EQ0HD41cubgKiBzMsAFfmoiq/KNvl7xxdai658V2MMJey71GKWoKfb
	 5V+vABdDThVkhe6N/RQKoRhie8NLTtWl89QU9dathbxhMKiW35u2PX+FSCi9KM7u98
	 /R1UdqIYhJ6J/HdQ6wrfMH/9WO0PcbNkSfF2MVbdx2ez64pnxgb6Z3mMxAslVfxDke
	 gkYRDgkkCcmmRa+FNkIsPgWSXzpx4FxrPdQhySJaMsmh5jJqFIziFCTNJmltZBdage
	 6kF0ik2oYgjUOZJ/ZZlwwzLpkHQFkFNhKkI9cmpASS0yyvEt5QevvBwMb/FxGKfYPu
	 fsOPIdc8aZjyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD844C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204173369.23983.3180839710638853428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ad5361742910b014158944eb2af0db4c9218530977a1ad0da8dff5765eeac9
Date: Sat, 15 Mar 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742041733
