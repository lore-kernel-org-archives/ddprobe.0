Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC1353361
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711142297; cv=none; b=OAuCnq75/YYPmO20D4lK04K3YiUbSSGWx6ZDo/V1ArlVVqRnqH+ksemIAPiHL6sk9Kf/NBPij76FqtYJMpE/673DuJtWwLUl3lT26Zz/DrFPMi0qLDiUlbtV75u5AoxomTppZPV2TXSy4CVg3elLXCSGRY3+DfgUZ8zHbkDx9ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711142297; c=relaxed/simple;
	bh=FBdJXy5ZJymH7fjs0fGHNpe6Cz9+cTaEmRGLTMb8D9E=;
	h=To:Subject:From:Message-Id:Date; b=PV0ay29NWQVgCLBKG22YuUAyJdNu+LUsFutA6GzOrKLpHv5/iklpYKzpfHUUmjpRUfKzYkMjYhL1d4QQl8vN+pEbvKtxRVU/WbuDgDVwSd8/PlW97MsUBhFt/wG3qnNTHmgcIsRqfytqPHW8Nbwm51b6H5+J20RyKNedBkdf/eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/5hQccK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/5hQccK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B6DC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711142296;
	bh=FBdJXy5ZJymH7fjs0fGHNpe6Cz9+cTaEmRGLTMb8D9E=;
	h=To:Subject:From:Date:From;
	b=M/5hQccKzrRsqAW7UWMYl4ex3pUoZhw4hfv4BMLnx59x96ynIeJvey2kGGRiCK0Ey
	 NO34tLmiwqfPHhI3ayn1329ixx6DgN3gJR/hWVG7eVAultRpBO+c9oEYOLdTLcIvLf
	 mPq7swkBzJM1l9W4MusdYTajxXCnlaGBzItPgaoUekTqp2y2e2jqDXaBJG7z6B7Dkm
	 WPsKs+NQqXNR3Ynl+QJ27PQJARSjVPeW65ZAC0eonD4ADqsT6SNEKYcd6NDdI+0Tl8
	 Vu24un0jQsDDmoye0yZUl36EtRHqoOhtn7c7mZg7ce91FOazBUIHQ7weQIp5dkP/gP
	 /kMZt9k31aORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62982C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171114229637.9440.13054107756233957856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3428aaeed163c9e6c076f71f2d19603d5494950731e40eb1b20ff0f81c671bd
Date: Fri, 22 Mar 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711142296
