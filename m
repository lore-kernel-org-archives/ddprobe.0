Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74D52D7810
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768602234; cv=none; b=Tmq+G242N4yhIiAXaNEcA5Y1DO9SSIXOLV08BvzmHxFrfBArg42DCnZoFlxqzr7GAGQFxn3hWF/ubHVojiCFGgvh5o1WVdrk7nbLFjUwY0YmwIsj/08DPTzir6yfpvLsthh9Q5Sl8eal0Db5G2jh1Da3alxW5yh3CnfE2FY+gt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768602234; c=relaxed/simple;
	bh=AROTwzsXstXTUpj+P2CONUrdbWpeo2vWiUOpA+sdZJk=;
	h=To:Subject:From:Message-Id:Date; b=RefbeYFnuu6l8ji6+nwAXAxPQ/18aKBM5YaC9cziYFvRTDNWwd0citMusM61M4Y1EtEme0b/39IXoAED9QgIwNWS2HMsmcXYkC4C3dVn5IgkuHI6orsWbKKVS/itsWvWiit1UXRPsvIA3S2vQdJOHVhn8E7zWN6G32k8X7a+V9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvzQ6Alk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvzQ6Alk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE96C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768602233;
	bh=AROTwzsXstXTUpj+P2CONUrdbWpeo2vWiUOpA+sdZJk=;
	h=To:Subject:From:Date:From;
	b=pvzQ6AlkKQMLC52Dpw69sAVg919YKbUTtWjouVCe0WqDVd/+ASDbQc0CNxCPI7Lzp
	 D/diTVFS0qBYsEnvlol1OMao8L/LYLU4TQ8GAFoG0h/6f0x751K2E/J0RAJ/DtQj5n
	 1lrQtqTU/vU6kfWofFgLFCm13ubtlN+e7D8Y65+8gyYfHbjOqtl4q//2v8oZDiMcpK
	 v4auVHkkKbq2oLcvq777o7ly8xd4ORs0b1nV5lnOPNfOC8zNr7cOYyLYuHlQd0JqwR
	 nuoYMcobZIWtWM1+o6sveGslJgmnUc1Jew+6RGQzWGhh4JLhUX7RVirF/zuAq5D2iN
	 JcebeQixydtzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F692C982C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860223357.27030.8914081071841609657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99438199e5f54607d5af25891793bcae6efb7884c2fffc69156e95a309e40b3c
Date: Fri, 16 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768602233
