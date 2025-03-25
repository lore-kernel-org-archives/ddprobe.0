Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54878190679
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742927994; cv=none; b=e404aGrp3pYGT6EXWBv8EoeeiI4W11oiOzVkhIJEvxFJ2n6eykZgVgW7kWAQC3d+X4cMtMRb9S0kSpZ5h49Q8L4TthhUyqdXK+jGafrEB+Bzv+84vEal6b/ScjL5JWk45w0xE4UXUAeKdM947ngSTxiUNylJVeAhHJhp5U/C2Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742927994; c=relaxed/simple;
	bh=u+4UoyY8WgN/xfs+zALgNZk2HwPoCknbMfHvReUZLDU=;
	h=To:Subject:From:Message-Id:Date; b=rMsMnwEW0vb1o47KgzjjcMpjLbV1hA9vIhMc+GPo4JW6aWET+di+ZDHKwNsKuvM61UsYZJh6OtwGRzPOUsqljkW+n+y+Qjd6mky8ZRCEp7zj5d3A354klUQi495OHlRC/vhdDE2nFJWc5UHkC56YgtmSMIJB+GMFKDioIXRy5UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z35Frapn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z35Frapn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15B4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742927993;
	bh=u+4UoyY8WgN/xfs+zALgNZk2HwPoCknbMfHvReUZLDU=;
	h=To:Subject:From:Date:From;
	b=Z35Frapn6xNLx3EmmMv/qDCPuargQana3GVBd2j79fXb4ve4edRqiJat/Y+jFgDer
	 4+JhueSBHEWyHU1Ht9a5tyfwB7NNDVPjT4zJipIc+lfiy5PgqGg9b+lwKHmTka0bxo
	 XuV7N+pyUZwrC6HUWveO74DLo7gxD3eBXMhPJZZa5jzN9gQJIDtmV3GiAO7wD3PJcV
	 8BUsYSm1R3PgbxtojcC5ubm2W8YqNGXe+78qBOrraV9qkSRa8EojQzrSWHybBKlTAo
	 q7SlnrZl27vQGpTsBzvwQqKR6W0PqhjftMOqMfnURJGqkOg5mGmKXwM5LMrlZFOoQI
	 LGwz/eGd95bMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FC4C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292799365.13921.5117524202295672777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78be665b7e7a968e114f59fec34c3e894ea91b44198e531eab7ae1bf62e2210c
Date: Tue, 25 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742927993
