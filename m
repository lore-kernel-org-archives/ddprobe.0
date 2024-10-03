Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B5684A39
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727940354; cv=none; b=SzvgoHHoFmgHzXykzImo76fQ0iC8MFs+82+ArZh76kvomDNOzYOgHiBRCZMgYFqNU8dA8aThgpDpu8XKK5fI+yEC45O8XwKIJzE3TOMsUgNYXMcRm6V+SuGQyhtlj9tyqv05sRk1ckmk8S4oy7F0tGCridyu741M00OFMaeZKAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727940354; c=relaxed/simple;
	bh=RO8AEI7l8ohA9yKOg/2LUrMmlEsgbS8fdOWMsTYdzpY=;
	h=To:Subject:From:Message-Id:Date; b=ndouaZCX07cGbzKPQqGc8G2d3mddI5vWmCjlZzltCipHBBRJZJ+OkmYQeLLpENsH7+0MDL7tW8DRiy4NCGyUs9dwDSXYAgxCozQwUKmCrdQkiszlNwcDlpydJqUQ5D5kSzRghETFVL8WPur0ZiotXaR8QDWeY/xN8zExKuCjst8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwkjigvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwkjigvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E06C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727940353;
	bh=RO8AEI7l8ohA9yKOg/2LUrMmlEsgbS8fdOWMsTYdzpY=;
	h=To:Subject:From:Date:From;
	b=BwkjigvWRtEOwWERqi6pZEsMLz/xMtVjNI49dXFwB5hyfykhnh/vFW4iOXqbuV3Ut
	 YlgsJkGbMsjVDCWZhXWk3FgrfGLFE+X6In1N75Qo7qUDOBaoWJfMe0wZteEjrFOSj2
	 svg9GfDeLUsVtpejPYE6RPNKNiYkH5Hvs2WHGWQK4MCg4i+CXEpaBfLX4VfZAI5JQo
	 eTJvsgWq/8GGhd0QqWunBjFkgknxhOhw4VrNkWIww6G7pQTV0wkV0UBNSwr7Rguhm9
	 P+6YsvqSh1hh87mI3i4ffpn7XB5o+5KwNaEcWn7ksWtSddYShgtrn1FdvSoEDeRaFf
	 ZMorn6hMjJZEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF752CF855A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794035370.16264.3364423041963132330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80bd6f39a16210ba5c7b51eb9e734736286bfbb17eceb883fba1475785b6306
Date: Thu, 03 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727940353
