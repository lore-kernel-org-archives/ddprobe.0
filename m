Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAA4393DCB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755889194; cv=none; b=Ld7rmVnbMZfggX+pW2kZcysTHJMGYFhS3I+U+gDp/yZtokcmNc7E0WkEMQD+7TptFXO0+/RCcyfm6ekr6i1M4C07EzoMqa+F0Kw2sH5KthoQN7PV3MYTkxyK6Q+e8HzuGQeePyvSMLFbJZxzTSKnosWSsJAt+zX+oEBmuny2syo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755889194; c=relaxed/simple;
	bh=lDTlg45No4wgURsEgfmfi3uBHVPt0/T4zK0GJ1omknc=;
	h=To:Subject:From:Message-Id:Date; b=surxUNH3PBqPZnMS/PybTps8mkkZn7nXPRkdK4+TtnSkEat5nbWOvmzoyO6SkZ/yfLfpo0F48yDiLENr6lOGmulTcDAHEfswVx+evn9kewzC7hlCyCdeIG/wrxMCTj/0AvrF3/9VHTrwRO3+4FHsdcN15d9f6TADo13iyjlykxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpOHeQvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpOHeQvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755889193;
	bh=lDTlg45No4wgURsEgfmfi3uBHVPt0/T4zK0GJ1omknc=;
	h=To:Subject:From:Date:From;
	b=NpOHeQvK5tZ5w9DPDQ3+8mpW5mQutxh+P/Luj/+d95Is32efiK64Czw/kvCHMtN6+
	 qnDi4Z/4WMYi0wH7l7wAZyEoGSdN/Fhr36sqRg1YtgDZXxd6/LwizogRg0qKa3Egef
	 PIPKkBy2Ucp32Q0RyFYWODkN/uWoN39RPQTWll345dRko5ijVUuqgtS0pco8KlB8xY
	 6KIqeyWap1jHaajlCWUAjv/fHHkqZHlS1DoPOqpuSTGJKsrt9LPnqNAbuNZKyjMTzk
	 XWxWTxU2ZJgvfUA+dljQ/6o2e/IjxH4pHGefQrUlIQCX3ogoBvZOwCNE+ed7DlX6gq
	 5kCgbx6oy7IAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95426CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588919357.22140.3973118967828519520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab585dcc58a77d6fc6d0cbbd42aa666323a324a2fc064ac591d6a4365a7fff51
Date: Fri, 22 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755889193
