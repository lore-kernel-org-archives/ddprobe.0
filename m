Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC5416F265
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750562994; cv=none; b=dD94fRn5iKOUFSkS6NXPqqkGZNt6Io1JPCocmXDu9IVK532p07AuK3JkX0pq+JL+tGn06qvp54l2uF7CRqNMvp+DiUSOTlLcpGSGLrpchaPVPeeWBadvIcBHQ0hJ6c8Vo0D7uFo8NTB0CgxJqBPn/Sy/m02ME84LlBDJ7xNhNnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750562994; c=relaxed/simple;
	bh=qO5q9SwqVNK/hLEsjWL3uh1gzFdpQlvQ9hufGYwgZ+g=;
	h=To:Subject:From:Message-Id:Date; b=ngjub02aNqPDHlciObtbg3op4GubokNez+ZSXgE1MW/y5zEDvP2DhKLUEYT5y1EWWlYqFB1fDIZGdpDc1yBPbA99O62WOKwLtgQGvLw3z1+gOzxmBC4/TUMLQEK2S5A02IXo8xnUgRzPG58E+IbBT9uTytq8oPH8PHjbsqB+0UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIjXMdoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIjXMdoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB581C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750562993;
	bh=qO5q9SwqVNK/hLEsjWL3uh1gzFdpQlvQ9hufGYwgZ+g=;
	h=To:Subject:From:Date:From;
	b=NIjXMdoXmxS8sa27IgjNbkrNq8MN5W6iIU3wT/bjfvy6HuxielKib4Vm6P5cvviZq
	 XINaexo48cjb3TqNH1aMI2GUL2zQRaPcDfTmkZ0TGKG/3cfDZc1xKjie9Dd0ZtnYoe
	 9TwPEcRbf6gBABo3APO4TW+/iv25nr/KMexTRBDF2vtc+6y0y06ZVfNSIAFIRFMr4y
	 DsSYQdicvrdS3cQOd8GSy4O5OeajBMXr0qM8OGYJ/cwwe4jfOYLGvlg4X0aWV3Lp8o
	 err3BW9PH2qWYPiMH6F/FDTvk0liejItvCPyh8qefsTGNLz7UdK5ONnXZy8N8teGA0
	 65yqpYQFdkg4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F633C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056299357.12714.3470765320495141298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f6c4d18fc5cc8476f295ad6bc9abbef36c61bf228b9be29441a184070ddb1a
Date: Sun, 22 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750562993
