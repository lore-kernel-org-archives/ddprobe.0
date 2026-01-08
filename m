Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F054D32861C
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767904435; cv=none; b=r+ceC23pE2Ixaw6gc6/8Plpk5oZ/qGhOx7o9ed9mgjfXkOpT9LSF57fIXiw8chE69ex+GXjM3UKKCu6rrJwe+MvkWtTwPeBA7h7obH+SnTpbAOWg5sNZbpwsSLH7SuUXVnpt0hYN0z7gY9jXrx6qcO4mkeVjOOcycUK41ASCcGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767904435; c=relaxed/simple;
	bh=Ajpucb5prn7z6YebmCLXAhk2D+11lp736C0Ho6mJt8I=;
	h=To:Subject:From:Message-Id:Date; b=NZfuHIjjdQNe6Li0iNaAGwXQKCuK388YEFZeYtj7Spk8kxaeqC2ksMWj4/rUiJi4l306EwDy/nF1dNQSFDGWqt+7XcYyMhj4MDiSVbP28KZH4kzTD4EOHe+Bcvwi3ZftMqiZb42LiDi2VWcg8tfKitjJXkbhkrjg80Ku4uafBDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftegi2gR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftegi2gR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9C0C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767904433;
	bh=Ajpucb5prn7z6YebmCLXAhk2D+11lp736C0Ho6mJt8I=;
	h=To:Subject:From:Date:From;
	b=ftegi2gRLEUqRTYvUrQFwx/ueqjW/duQuCZroeVHDxqKGLVv90DJu86OxeSCPAKLa
	 J7SKEQONvhmntB4eQOxhVAbktDD4nesO0GDRPEQl4XUwT+KuWP5M9UMOk97fLzA8jp
	 U2OJ8BS5O/nY9PDiN/lwvsjgeIaxaNAbluv7XgHNagyAme3hw/3uGTBQ8d3JCoXcH1
	 XElgbVjBAmlxnBszvEIjPmwyS0Htmsv52jTlVp7FERyz9I/HZaP1bZyMcRtbLbuagt
	 jO9/1sqhQ0qwSk1+7jBZrp6kQ/6j8aGtarynnyzXay78Q7aEnUtX9FUuub1pc5Gso9
	 uRSOh855YAbjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D2D1D493
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790443357.3696.6118563177268573197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0a2894033933c5f6a2a2f653d051c43d1caf8b5b3a252cdedec2a331f7aeaf
Date: Thu, 08 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767904433
