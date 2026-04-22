Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279C7345741
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776848854; cv=none; b=L3+OlWy3/aLJ6ppqUFKpbYK97KBrZZ0r2KvudUQB30oWlLo90lp71CDFbZOMcA0VrztWZeMyzuuic5AV1DZ/3dkXl1VrfuY/wZNhYqg16x4i/WioJ8LraQlBn6DoPCuEa/StlFK0Go3aWL4k3bEzsW7mZM20GL+h+TxsQNPaKC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776848854; c=relaxed/simple;
	bh=u8yMtZk7+1WVcteVFlz35jyi90Ak3TAwu5o8WkDY32Y=;
	h=To:Subject:From:Message-Id:Date; b=XXtzNtsEbNxpEqL6ZN4CnQJ4nPwDY37O18+G82FQ5/5X3WDhhvEvr+x4sl+VSE//mGMbX8Gsk1uRuv9jz2MIzvcEVhcFMuTSQ3wQU6rAisvAZV23pSrrudgiiXnwReFecP5iTl06ftlA0xAadb3mt6SLekHuiApcO2xnOwQoaCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZw2O6Me; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZw2O6Me"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D60C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776848853;
	bh=u8yMtZk7+1WVcteVFlz35jyi90Ak3TAwu5o8WkDY32Y=;
	h=To:Subject:From:Date:From;
	b=EZw2O6Mei5lWoi7edofNesmKsEZ2VrW8HwU8S/D/iBdqOq5YbGV4H6s7IbTNH2AbG
	 t+mw5kyYskMKqCt1qW/+2qpvyTQYr9Tw70jhV7eLsBb8jlDlu93e4dnRsLgrBds69N
	 T0KIEDtN6AAKnENDAlWk7egbR8R8OozKdWGBOs5/eFoGQ4xpdP+vTtu5Hl8rgwsVWs
	 k7sEr8btdt5ezNAfgMoTD++/wOk0obdeKmQmuzl2Eq2jnNidqQGY6+p6cSb2mE0bui
	 QiIxYdCs+jywk4xpA8E1vz1+8mN+0KkAvR1GZ9H5kWeA0umEjj14mOc3j9DwwkIRnN
	 aMbJ6snARkWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69FF9B5F0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684885368.1016.14985229739596159286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8747281a1b41f18c94cbc67bc462f3188558251543ba0c6369b50c77db02f6fd
Date: Wed, 22 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776848853
