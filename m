Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216D8314B63
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776741454; cv=none; b=RoqSM8cIRadZiyGuN1uxFxljilZK/QGWgvGe8WXEpgsCvq1KGGbAbcO9BR9g6x0DQovJjlIscjhE6qQH0mSDLG8vTw2TDCP5E6iFUUYtgeaSHWeLWA3cjuRRkqJaNT0+8goioBgVMOVuGsSHbV8SKHWgyirkuGNwvCFq99IYvIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776741454; c=relaxed/simple;
	bh=bxg+MnBTykyr9MNxsp9NRi3NWEYbcb/DPWQ8q4lqSU4=;
	h=To:Subject:From:Message-Id:Date; b=lK8qHgItsNredX2WrCExLAPrwTWdY5DEBjWRGzNFzo0LFy0LseDBpXPAua+oluM7CKAdJ29zfba2S5u3zBlJMPvSYUp86OHreQ4CpzuJPkLAtUuphaxinYRgQXqbO+bmxzBXxMXdU0f7CdO+f3XMKcpOlZK2BpRugHmFUSUQas8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VO7TPpxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VO7TPpxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD51C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776741453;
	bh=bxg+MnBTykyr9MNxsp9NRi3NWEYbcb/DPWQ8q4lqSU4=;
	h=To:Subject:From:Date:From;
	b=VO7TPpxs1K4q2zjI9GENi6pxxH0q6pGDjAEp1kFcXtZdetY0ZRlOvb+L/WwuR9DN1
	 VZeHtT07FgY2U2BBNv/5cPu3DUrpurmxfwG8xUcsyeuRDPXE7dTec1hLo6Nhx0Ytqy
	 k1W3nw3B6bOA+Gl7QGyku40/vu3Pywob7oRD99FajpB3sJBXoOAlDl0XPbCztjvSiq
	 IUUFuzWKMtA6ABuE1ajn7CWLOwX8Zx22aUUog/mGu7gDgzmS10HyQgfwusnkekBkTq
	 sQgqtlEai567OIZJ6HdvyBmpc4gNYTH9MFBnBqxiLdyM7FUIjd8u1EeWUliZlc61Gj
	 ZLgKRA2ber0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC99FF5A8DA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674145368.4762.1617839603535002097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e091b9044004f919d8e82c75e9b8879cdc8fdc68a91fbbd59f5f8cec49c415cf
Date: Tue, 21 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776741453
