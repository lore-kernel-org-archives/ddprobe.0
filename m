Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB2FE56A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767657834; cv=none; b=TyszYEXhHYqLVhlxZBf8c8wn3f8iuCE0TD69oYOvzW0vDjIp20Q/WHMIUeKh+4GTRFZhF5z0TQKFGMzY6JQ5bXnpI/ZPpt8HD9+Mbtwm6rWFzzEdoWRQnStEj7iOZFGg6hF/q+jvBJxMBxdLC0ILgRHoy9bQAl/z3+xUL/EdORs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767657834; c=relaxed/simple;
	bh=v+42sb6tTk5blEHWbMAWAiCoaPndcxBEaYLjjSZQnUU=;
	h=To:Subject:From:Message-Id:Date; b=CVy/4zjlIaXxi323uqGkBsSzoS0MCeoDVR6WAQlfVuXMGigb6czIGP0VSx7UP3ehmou8iwB9coq6UPnhOgc1nKLmDv/h4FgtcpziR6swKf6JbHYgtfKijUS2+j7QWAQxv+cM1CSpvuRIND/nOBqZEg0dYOBnzVur1YEB6YQbAhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6NPwSid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6NPwSid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA05BC116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767657833;
	bh=v+42sb6tTk5blEHWbMAWAiCoaPndcxBEaYLjjSZQnUU=;
	h=To:Subject:From:Date:From;
	b=t6NPwSidmsSauCjVXCTRyxpNqOC5jPhvZF5Rbq3Q5o04UHW8IoTWmrq5buHhKHlM0
	 5Dn20RiNDLKnKpH2UujGuOePAH5pwEv5dv8BxVW/bRQNORxoaDF9wEY3NJpGIDdPJ5
	 ZnZi2WHSORN2N9mcY6A1bk6ElRnww9NtSUb2kQf1kANFi2gpWDdxVw6qY6kigsGJfr
	 cLD+8LdPyHqhTlMUW7h2liqwKM5754+Op13LGlkz7qvu6/rrumSrBU45/G0a9A+39F
	 zYPLhujdGJdcnrljfaZOWSlGr3IFLVrLcTMdgepswC+B14qu7wz02/fe5mbIZ7dsxe
	 qLRHQix0foLrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993D8CD0425
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765783357.3093.12156398338281835738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f3eb3ce04e54cad5226144d9f8b920e87917555e6841c0f8726653d555d1d4
Date: Tue, 06 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767657833
