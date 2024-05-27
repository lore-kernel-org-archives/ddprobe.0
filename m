Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6184961FE9
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716833063; cv=none; b=mcd6rOeUMxIeQdrCouWpPsVygyRVhidwGeT3c//g2SrKfTsjrei3NTD1bR3X/Jd3LtsId2yBDgluRC+O0gLD8oZBOKCsQrFP2/dvs10MffxVIc53tVBBOO/DdvgU1wmudckhj1myzOIfJUMx2EoDX+c1yBNoeSXZ/3ypIX1uFxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716833063; c=relaxed/simple;
	bh=K3KZVn4LQB+UYvU+txVLLYw2AmA9ZJF7QDrUzkn31lc=;
	h=To:Subject:From:Message-Id:Date; b=fnSBC5Zdyl3URrK3hWe454sS4fgD0B4RdZJcLgsYQJBtu9tE7g7TP3SXLf2KPhIrtR+QZn0DWtO5yUAv72fgFzoZWQgLw9/+pWnaKqPN8yEppAFac8dmlbETcCkakmUFne8Y8O1moGjl4cFV1DLv1VzKa4TiAIcvwKaqMA/8hcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuyC1kIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuyC1kIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A7FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716833062;
	bh=K3KZVn4LQB+UYvU+txVLLYw2AmA9ZJF7QDrUzkn31lc=;
	h=To:Subject:From:Date:From;
	b=BuyC1kItYSR84s0WzzdOYzIAqASttPdzDISojyrJQWOap7oNSvFN7mNswL3eAHbWj
	 5oGFarWpYFnLxvdNxre416FKBglUxSNSb3wLpE0ySNYwzhFLeULcA5bihF4zdd/S2s
	 +m8VZCQLmdC8oIgNnEyNQMXhwQyCTlZMqJGve6rJd/xFE+OXV//WPBo1S8kzO4ZGfi
	 KWVKsVDTNE1eWHJPj+mG5yQMWHoZZHON9nRenqAxCpffm5RBW89dRCE9x3VY+g7SFF
	 CvyZweTl7DAzsJOnQN16BGTRDZpnHISBpPaNAP0fl4JJPelAXKM1Bhp36c5dXeQ52H
	 BTUKKQUtaI91A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB6BC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 18:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683306277.2891.10026402551472565709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93ca16840b16c71e1df1a31485dda0f094de72e80b3623654b9d455713e22eb
Date: Mon, 27 May 2024 18:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716833062
