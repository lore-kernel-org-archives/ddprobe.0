Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4773F140E5F
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749431994; cv=none; b=FZEhPDRn5Z7ho7FBg0gZCNcCOLAQgU2J9XmPLK/P8KLUR5XM22VSghl36xmc63ENWTqUPNOi0H0+Cr53Lrkob/WPHF5WI4xCHhQrtiEY+aVPjlKxn0eklps+KPSn0paIFF0zwlcoB8ZoQ5UKxLzrYsbwVxBuo36hEscIzWQPkNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749431994; c=relaxed/simple;
	bh=iNLYvMTqU6GOcxgLWUybXWYusmi9/gEj1C03wyXL4YY=;
	h=To:Subject:From:Message-Id:Date; b=liwj+uZv5xVEDyxpy+FB/sLFEfoLjIME9z4lm6EX90NQ5yACodAySsQte0bfTuFoxOM6jlPbIq8FZgZUJYFMHteH1wxxrpPcMdb1WBuWO4BTbcRxRRnwRFnsYolJkAsbm+/WPhtb85imz67e3U95rzuD8/OFqlxS0dgPE2XVAuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUo/P2gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUo/P2gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1618C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749431993;
	bh=iNLYvMTqU6GOcxgLWUybXWYusmi9/gEj1C03wyXL4YY=;
	h=To:Subject:From:Date:From;
	b=HUo/P2guAYK3hsCvbHv4+8c3QW2CT17fkCt+XTlFY1AoXumMs5uHrhFcdYXzVglhi
	 TGqoYK/liCImuXt///0Q+0Qq5y0VSxVWbK1Cdl8jiPWgt0b92hfm6eRufSSEva75gr
	 fFVvt6shQSqI0SPAGAzmazcpLjuUJTlIbp4dn47Uz97Phqcv4CZ/BYcetPnrvcGoh4
	 2ybtf0WbOss3d0waC35Kzi9cZyoSDwd83m/GXbeA8JK6VJHX+6fWxUMQde/m4bMDzm
	 NoMBBTqaC7nj0LI2xTlkB51lOqDVwvG3Ke2bjOgTZtuA93jpagKHkSkzm6yKKK0Dpp
	 EAZBwf4Y1qvKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3CFC61CE7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943199357.6720.2163468909000237156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d103cf90e5b69a7f256e4fa6e7412a4fd50d718862d3d74719aa7295ae405d
Date: Mon, 09 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749431993
