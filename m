Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD52EBE
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737418554; cv=none; b=SABD56jJJAqHnh0Xuo/8gmwP3lIZZ4TdmMqqDhOOPLX3zJoqtANc+hc816g1wh3q3IncvHetkUV1RERsiR/+2Oqmrj1k/TYh1h/3afAhSLKnOnT3skPRk48Bb1QN8zgRxOH8dSwGVlmuRQgZckEv8oc2Zmsqlh4mv5Ee3CqtnsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737418554; c=relaxed/simple;
	bh=S9dtncEFL8s0EbtL1VouVj/5B6e5ahpqOlN8lyiEc34=;
	h=To:Subject:From:Message-Id:Date; b=rs/UTQXNqe+LksuGrtlwTF61gfaPoTP/o3ustHE2Wq0UChLSyBrleq7wSR4BgGR7KRSLJuqPFhD9SBIXh2l++qu9zBpQgQj/zCEh80unYz7UV20K0bb+s0aI9TTQvNFebTsJ3GIatiHSnVmdZVeGEwIHsYeAuuy+JDn4v/5bQHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQv4P3Rw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQv4P3Rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6270C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737418553;
	bh=S9dtncEFL8s0EbtL1VouVj/5B6e5ahpqOlN8lyiEc34=;
	h=To:Subject:From:Date:From;
	b=MQv4P3RwuULX5Vq8dscB8F1DcuyuhCoF6xMK51Dplfu2/0QdL+ImUNlWZqAAxtCrP
	 iSJP7oXGgBftAodVUgnJakjfZu4GObnTG5bJYWgW2Z9unExCV7NhJ69m1txaG6A2Rf
	 E4OQIbY4ka24+nDcYXVDT0lyAr6aObWlfWr/cocEsDDju2Mivlck0sAiQ7xooQi6rQ
	 /n9LFNP/Ey3yStWYWirdxtyMOCYyLHuwLC215V3bOTjMW8sdDWqEt4vq6asv3CMSb4
	 JStzMlc9D5+N4sYMLNrlPkSuM4GD6JLJa7nKKjTm8bbaX/WPSb0eSnOYZbFFn5W8ho
	 OekTwhg2y8AZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99683C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741855359.30903.2017814954319518216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ccfb3dd5bbb835cd5f279e6eeac70e479cfde794c5ef27681be84e2bbff5fd
Date: Tue, 21 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737418553
