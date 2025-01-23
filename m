Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377531D54F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737672954; cv=none; b=eUEwvYVWDoOgC5uaDbBjE5YyU1E2v85GwqddqrWNfGh0V03kwljm6THRzNqKGIfPaSlJyK0Fiylz9UqPLxzidvO6xc4WSZQ8uDHrGNxKSzvA3G7caTcxwhvoowWEsM5s+MSf/XHtOuGmyA+ZtCGlMnmITDkEylYl9+sb5rJ5usk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737672954; c=relaxed/simple;
	bh=O1MT/gi73hxru1Wnb9IfVM3qi4HOswdPqwHNDVhY7bY=;
	h=To:Subject:From:Message-Id:Date; b=peboP234Da30Gok5V6i6LztSILUtsSn3zz8l+irgl5/ZY7e/sGrZNvl6UpZ8MX9hoFaqBexQtFknIsMtBAFhStgD1G3i/42zkZ98xHdwUN5o//1qs1EueGgJClBAZbRG2IU9nRG+AVCsdaL7p0r0oD6HfIDHCGLOsSfl9ul8SqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GI41GDNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GI41GDNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F0C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737672953;
	bh=O1MT/gi73hxru1Wnb9IfVM3qi4HOswdPqwHNDVhY7bY=;
	h=To:Subject:From:Date:From;
	b=GI41GDNaDcNZOEBsKS+J9ygDnslniwJ1D4oAZZXdqPYuWpYjx8dLwczgV6+9Rc7SB
	 cZCDmR3xYS/T6nizhRrQMaZnXpANWNgolqoF4NC327X25C+rerYJ4VJS1X46Zw0ZJB
	 +wjip14GGrAnkzp6lgboYwS7wdQ2/19alZ/iZnC2RfJ+18LNZOM7wKuo7SXw+XUCJX
	 wF4rJf7tNSpjQ53XfSJvwsIN0TWLuRTuSLRzb3ARhdUNAd258YPT9gHlHsdS8tLlkC
	 RUhwNPikAWTxF6pZ2gunoQXm8OJZAb9gJ973MTxgyuF054Tn6D3Ni5LxjFYIRgB6tU
	 eHynMNk00FUlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95239C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767295360.28549.7112543424533496333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2b1d2d96212083215cef5e36c7f13cad2af06b048fadeebce67e06899d3436
Date: Thu, 23 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737672953
