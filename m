Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F210134F27B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771839294; cv=none; b=GIeL6J+eBg/p94mR32Wpjvyq9Dgj36V1Hu369tL8eaWrFtMLgXA49PJv54KCGFCUF2VtiwDVPxqK01VjGIIyKDi3lW8313o9LU3VyKQKanJgW6qONjZWMEtCbzTCI22butzS9F+96h+qYuJk4zTtkcYv8wQViqJdhGfFdDYQ6NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771839294; c=relaxed/simple;
	bh=YfNgr45VpaVvw50mOYXkVivGvp9HS4jtKnuW+s2kpTg=;
	h=To:Subject:From:Message-Id:Date; b=GO3G66y8XDzt/XCfgM5y1c6McGJKCt/BQU0iKmjxnfz44rlclTKv8u5b01BzzLvkeWO/X4EB0BGw+v2r9pIYVGMa0vuDFkiVHIIRKyjvmayoJprkY2kRaGW4RkS68jU/UvxubVclLZlfZS85e7U3hCedBdO5nZbZgRDLFQ8JGVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fu5wMcNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fu5wMcNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CB8C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771839293;
	bh=YfNgr45VpaVvw50mOYXkVivGvp9HS4jtKnuW+s2kpTg=;
	h=To:Subject:From:Date:From;
	b=Fu5wMcNYD72ag08EYS5qAERuRkJb1d0Xdih//L53N1O974pkZg0QqbP7k2EM6wr01
	 +f8EtdW5Z2zFFLw9//QJ6CEK4Tp+ZWnJoqzLRyTVP+vwU7EX1KZwtAPuruqStnbipR
	 TvLV0g8/97FIIv0TH8pwPd5gLZfDKPxBtIx2KxOPOc8XPQ4inKTK3k+MLPWoz32/gC
	 p/vs4NkdQaNDxrYVw6orQWIq+c+omXQmZbiIaCqewZX6tjt0em7KPbbIrK0BaXFVbD
	 2pSVKekkjxZ8SAx+GMmJJDqJWOILzrp4OOgVKhs+F1msfSbAQL8/kBCxLyRUhtWKAz
	 172eOQeYWmGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C14E98DFF
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183929358.3329.3774411415013742426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade39594e805000a65c6c55f30cd03b593f5889c9844928cf58e8deaadaea357
Date: Mon, 23 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771839293
