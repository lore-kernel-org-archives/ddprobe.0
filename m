Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EE12877E8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788405634; cv=none; b=BmCYvB4zluxfLi9DJy39BElYeqFCIIMLi5Ox5bIzcc0boT1Wgtbb/GloWjZLWKcZaZ2pFXT8TT7wUilrCtRonEK7BNziYb0MF+j1Zn45UrYNX+2mEnCN488Y1iruG+xc9OZBsW4mXkeClkDmWVJ9nX1i+5WaeFiu3BMS7uR3e48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788405634; c=relaxed/simple;
	bh=yVLymHhCjrsLva8fOutOwXyWqfDRZsuv2Wy0Da+YZcY=;
	h=To:Subject:From:Message-Id:Date; b=dIrJeeUut9yyXAUEUcGiXvTiBAQSq4fjnQM1KMQhONd3HO0j+H09wP+j+hDMclxH59CKfYmfh8s7sgIafK3HHlvkk7yCPRQmrDCjWqA/Sr/3jjR6w96CI3oqn9uInRXxSYIlvNY8OGt+4cuEs8NvRtN8to63Nr5hA790fM8HwUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsBdwT9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsBdwT9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5127C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788405633;
	bh=yVLymHhCjrsLva8fOutOwXyWqfDRZsuv2Wy0Da+YZcY=;
	h=To:Subject:From:Date:From;
	b=HsBdwT9BzZSocTpWoVnp1qkCDCC6i7qFVkA9hZxfFmmC221hqgSYYeS28LuujnW04
	 OkeUbM1Qz4MPbPsykNX4VTbWOYEz1EcH8jdoLT49UU/jpwVm2IS8V+6A0H78FhYNr9
	 bgJjcYIPJvioPKc81R8sEZyjlTLWpvKPUAveixSYK5IbF1ILXeC1+kuFR3lK017rae
	 l1U1QWUkt2QXhe/y1wmmj8q/EMx70ua5wVw+wUcZCaQc8stA2V6LvhvzsTrQ8i8edn
	 TO+KX764IstxGlXz54FozBRtBJEGneu74dLySQbj4ii1mj4cqnsGo6TTrutCqixWgY
	 VbFreeWe9ZfBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE101C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840563368.6772.1655493124968183661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f828c4db6ff0fbe95ba440336b77dabbd625ce486758d11e5b3683a0ed9567c2
Date: Thu, 03 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788405633
