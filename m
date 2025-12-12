Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1877828B3E7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765581774; cv=none; b=ESZcVQd2nlUwlgGYOeLW1pymcnyVvcODI9aG2FWUprH7FOeuVSbXDOFXm4QxH1XMvHXYFEXmslf6qHE2jE5beZiKiGt2gglpITJEd4DbXugIdKnPxLwhnSSzfTVpzQzf7tn0+wm3sBumjL7VeY2mgmHU3J2FkMwkzS+dQfMBL6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765581774; c=relaxed/simple;
	bh=pEKqBmjtnDB5+rGkVuo1xGeN1GfH3WsgXdGxxhse1JE=;
	h=To:Subject:From:Message-Id:Date; b=nbSpHezEww6rU6gsDlgbDKtWDyhQP9I6ZG1WEc4XJqOFHAzn3Le0PXpHIwdbFqWqJI4lrz0bwULw5BHSPqUJPaO4dj++GyW1KLb5uWLKlfMAl/FM0Umev5q+S95CPEG8nGvIUbWarbYHUnkp6dWgb02AZUnvfkP4KqJ7tv6UuIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/9pDDRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/9pDDRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A458BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765581773;
	bh=pEKqBmjtnDB5+rGkVuo1xGeN1GfH3WsgXdGxxhse1JE=;
	h=To:Subject:From:Date:From;
	b=B/9pDDRdrtqyZReM141P0uD5rZESC9yyoOzNWDU1+ttGyX9x5DjoiqHFvhrhmFkSg
	 CF2OBaqr0KKjLGxgal/uqHHqxQ/SzeXj63ZCoZEknkmU1JfexywTK8h4eOFMTqCCKH
	 xAdjkBDjusCDmt9a2PeM338tUWqeD+WXzdadsBmOGuQ/VAe//kKnyEAgw71Bg3YHes
	 wJZn91AXPa5scIrheLgsEKYw2CXM8rYGc0ZlbanD7MLyFK2zja06926BoqHNPr1NX9
	 p1Yk5PGNL4Afs1A5BbNaFLpXZiBj35PN2wp9t8TKTtd+C6candAAG7PvIaOH8Xy08S
	 eGUIiWCDZ/pEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AACD59F53
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558177357.12096.11431212188783170046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ca9f7c0a2e4b236b1c791494253dfdb2da1414cf4c5417abeea2057610f8ce
Date: Fri, 12 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765581773
