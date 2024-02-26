Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D99817
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708915097; cv=none; b=jds03mNAj6sDIRkdP3/q09/dw1/5njLHWADaMQRk2TJ2iusnsFqJgasfX81iU0P8+EQh66nkgCxc+/5P/Z6mJ3e1bv4zMQdbRe+cXxO21nUqvxWeAfiMVWKZ/5O+M3kYXUIQbQkJU8xOrt+EBfc3jc9FseIqj0P4l5oXas82/SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708915097; c=relaxed/simple;
	bh=UQ9zJAwZaLc0EJDI7P0Sjr7VqS2ZDgxIrFZLQ+0vBwc=;
	h=To:Subject:From:Message-Id:Date; b=Eqmgie3uIh3hydBiv7TifuuEO91P7bPSIzNowJ7Dv2FKYZpPvxDZVSDbEHX/Bc5vyqYiokrXFAbsiRozKoNHlhteGE9IOIL8cS0gJAYPtAaqIq4rMQo6N58+MV6ZnZJxzG6j/g7zWkydKmxt1bNGdS7EOR7YZH9H8NYEWgOZ/uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNnnUhI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNnnUhI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813C2C433F1
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708915096;
	bh=UQ9zJAwZaLc0EJDI7P0Sjr7VqS2ZDgxIrFZLQ+0vBwc=;
	h=To:Subject:From:Date:From;
	b=VNnnUhI9ktJSJdftEsG8b3iw94Uz4wSmrAHOAYSJyfdQtUz/Jj166JEdfMQUB6vRf
	 q9HlavxIo/njOdf0xEAG+BpT2KEr6tkOWrX1V7u1zLfk+ErV1AEg06CPPyjC1gE8DL
	 maPqlkXYGIXRfVJPCTQ0gWZ28s40mXGwyd4i891KaEzd6gOSAAH0xqSWNbaMLlDy+o
	 IyMirKPwNkHMMYdRY9qBTU6WYGO/R9B4mwC7qW5hm06017LaNY8kyeKzDUtNL5rYhA
	 m6ybcGuWDIUKeg3GeCNbvkHMtKwcOg7FG7XK6c3PnUXpZSc4L1XB4Dfb0C90EMDvAw
	 ZsjSVps5nd6bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6136AC54798
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170891509637.25581.8744211745362678834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 537742253ba200e085e0e9fe98f9d4beaf078f4926d7e82b56c263a66720b3cd
Date: Mon, 26 Feb 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708915096
