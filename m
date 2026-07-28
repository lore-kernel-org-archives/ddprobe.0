Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE573BB117
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785225034; cv=none; b=uvaWRBvdm2KO4B/2gF559OQAQELtMmxCZJLKBVozC/U58u8AX4EVAT5QGCLxXw8/DGvRgqILRgy5ahn5wwya3H2Cc0M1jOEm6HVBhdcbNksAMw1F1lQtjfMnedrfTwXDfu5i+d6nKXAHtjUlyv6iu76M3F/ao2DuGIC0sWt1gc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785225034; c=relaxed/simple;
	bh=9MnrHUo3+XsuX82SYEZn2oLiQ/WNTjuO87STEpYmw60=;
	h=To:Subject:From:Message-Id:Date; b=tqITjJQF870JRCEmIjPUTFh3qx0CnBkqw+e11doDsKB3DJie9+s4zJmjqDnDQcL2A9ugMviSfjlHUII1DcUYGY4tuyb0eCHHO4iKg5Qs/4/Ywn06Xv279LaxYLszScwO2jiGGxmii+gHumso0EAFaWHY/cEP0tZi0Za6OgSM9HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ex7nD2vC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ex7nD2vC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC83C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785225033;
	bh=9MnrHUo3+XsuX82SYEZn2oLiQ/WNTjuO87STEpYmw60=;
	h=To:Subject:From:Date:From;
	b=ex7nD2vCi6gCDnqtWXfOlEmxkaYYd300kpkYjwPDH1o0KOqpp3lqFyhbeIK9ki/SB
	 8mwMWE10bZrGhYt7qe5VMmGGKqUmEE+z3QuZDZxkooVo0KCxTancR2wb7HpchHsUzA
	 jI/mtgI/K0Jl8ZmW2SwUSCeLpw9RBOcvym038Y4Ku5sU7WEgH/X4pG4f7LiM8uy2Rc
	 omDEFxemG5hFGiv1E96g1C9fDqmVYbF9z16apSbwGcvWrQTSWBdaSv0xqupcE8/0+z
	 +WH5ZdfhYxAmm075naJ3Hn067MdwV/p+23ddTmNQ+12RhCdtcEMo+BbzNlU5WdJ45E
	 +lWDSEzjlR8eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8A6C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522503369.24430.1187838081299497860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8dbf6a21ef16e27aa1c05dc5dd65d8824002a3f356a4aae2365ce1ebe3794b
Date: Tue, 28 Jul 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785225033
