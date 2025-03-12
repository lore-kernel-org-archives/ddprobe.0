Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5C024A043
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741787934; cv=none; b=KgWaDAw3iwxW8qWZzcB6gz3GvmWjnSgm518Q49vfNPv8u238bMQqEaJwGBsL2JMQVwOSrl9nWOUEVetYGx+ZLqRbV1AB/q5SpwSstgCy7LrL3orx0Rb+M7WjTazymq1Ss9P/21+BoHSV2CRYw8o6XK+ZfikKfuGnxhcyC93/Pw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741787934; c=relaxed/simple;
	bh=ihjQWMUwcb9FEqHW1nIUXDCuSgFtnb2r3URsiGoQGmA=;
	h=To:Subject:From:Message-Id:Date; b=GTkih6OFMjf5A5ww91WX8A2LbVXN6GNSqYQ0BO71THUeR7d+eswygN4FCeG04/8S+8HhWWo2pop8jF7ShhBYOU8MgPRE7QDISSeTrXhubXUQPAr4VkYlULBvcA3MaFj2gzhAH8gMdk/mNOfxWbRLR2K5aA2D5qZKGkX4VfIgvRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyCK5FcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyCK5FcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AE5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741787933;
	bh=ihjQWMUwcb9FEqHW1nIUXDCuSgFtnb2r3URsiGoQGmA=;
	h=To:Subject:From:Date:From;
	b=oyCK5FcBxwS/j4dDxW5LTAYYKpABrtus+7DQfbQquMgHd0qpd0KYnfQZdPyLGlxXf
	 UJLlUwB1prkJQDAeFz5iagQQWHtk53H5WnXaHQvAM5K1FKfsxUn3uU+ItRO02RDqcy
	 Q69LUGagZYO7Dz7sga6gVHXxCLAf+evaewf/woFI8z/98DvuAEAoMaQjKkX6f7s4H8
	 cS+/sU3hil/WPGnIjPk3h92x+6bq87ZmzRSi0akkM2Yk0t0inYLiQOhuDUsdjYzuh6
	 wcb00KegfB6+tSzqrJhHL5uaTyLLW14srcEL4sN3d6LauEOwTR0N+KeOSOs44Ipukw
	 PdynCdGyLJxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3F1C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178793359.6159.8181178376828096982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b719f6c0ce7c44892bfab5c77ce265bf5668a3c8d1b37cc6ae9cfc01cebb2d0b
Date: Wed, 12 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741787933
