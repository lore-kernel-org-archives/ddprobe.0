Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542AFB662
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716507203; cv=none; b=M8D4f6wOVrdst0+zLzMTopeSUFMPA797tUQPOTM418TeiNsBo1/wgHmM8HgX+f5ajAjqlZ+d3vY1eCEcG5xbCKNeyEd78i9n5iXYRqfSdLhnsGDeZpOHw45nyhPxbqAcE+zOYVugZardvJmdCPv6+eZeElA+TSk/TDthc9w0X+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716507203; c=relaxed/simple;
	bh=YY2Ndb1qFG0Vq6qUQvE0PjC9PcMmM22mfRlLtTjJ1D0=;
	h=To:Subject:From:Message-Id:Date; b=b48Pi/Aj8hnbEdiiMgy6l/BNibPHiSOHvgiJ0cfpVyxUMeBf4uTfbERCAp0en6rtnQDd31MTqOiCgPVdrTkiseiiOu5J2s5aIZGPkrSykVZ+Bx7piZEVKOgUo9p6kOAuT4XbvmPx86zY7aRozKdaTG0O6PRJ0KlOlMINwWO5CWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spMxhVSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spMxhVSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0084C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716507202;
	bh=YY2Ndb1qFG0Vq6qUQvE0PjC9PcMmM22mfRlLtTjJ1D0=;
	h=To:Subject:From:Date:From;
	b=spMxhVSkXSrhQ/84IUb5Z5G/qvLYVyUWw5JDT3qI8+BH2K6D8kaZdBP00WPRR9LLL
	 /2p3jQIINPEtsUgEP/77pO3PakoDbP2oJBlr5FAI/y3P1XhsSWMJc1xV09DMydr7dK
	 w1oSKP0Y4Ixr59gaSvYbL30VDcsBpQ/3azM7mMsCiJxKoGSYJtECjpvyLN7EaKGGcp
	 N7TSG8yI9Y36QzcTqOZlt1JGGmvtaqODmwkYxhPLooAbs/oDNFZNNCAShz4bhzqeVX
	 hBqNknWsDe2KjIFxfO1I+XEqti6Je5YTLxerbRUreaWVYblVOmh+296c6QK16PmOqf
	 AOjENO4VzdcIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABB2C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650720275.8084.16170121217182726708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc132df01e74dc529f5b8d850ca77c30515247b8f17749dd27f9fa7adc2a566
Date: Thu, 23 May 2024 23:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716507202
