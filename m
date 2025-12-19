Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA83EEB3
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766103234; cv=none; b=OJIPojWaEkA5VKNd91xstLnfHze+6YTEQ7auEvwUYi7HS6Fs0FmgPXwOIG/Zx1LK4Js2bMvnRsN/gYfKy52PjCdzMl7cDVGqEaVfuIcKp49cUnkUHJrI8tEcn116IfU5XcHfIOwrJXJwD+lNeuAEE97FNFYWZibeqcTtW2V2nGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766103234; c=relaxed/simple;
	bh=pYQMDrJYdTTaKThhnujxbKPEiPKCaiNZxXATCWIhUYw=;
	h=To:Subject:From:Message-Id:Date; b=E3YFxKlB3gUf/gV2DEXBPZNkeZOtLtxRkeqJPbU42SWg2W/P50zdHk8OYLXcFAUQREf3DCcDQjs7tUWcnahOHjYpsn/VlzDWFnnF4BPTJXBvni6CZAEmR4hx0xtPy5ocockpdt8KBW782fP8dAjrtBjLe+qb7T0PNHzSMuODVf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mt9wxLdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mt9wxLdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8083C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766103233;
	bh=pYQMDrJYdTTaKThhnujxbKPEiPKCaiNZxXATCWIhUYw=;
	h=To:Subject:From:Date:From;
	b=Mt9wxLdF2PSkjFb+uZWjOH8WJbdeK2ICaMPbQ4/xMhfvcZtgDJSPFliCRwT/Xi6Rd
	 nKozJEdTZPVXJjdFGTmZxTEu1cHPVgtO65GKrfWeezc1Co10B5uu/3gkG1C6kfyPOU
	 hODstjDHEMEUqvVK9tjeiWhad5pazcsVZpTiSc+JffOCWwc5wmfY/D07O2mykjl2zs
	 G+jIedWeSmCTV6xmqaNXSiTrE7eWr0S2Z6CAdSK+ESE1Ge4PCl9/9SEyet2KUJprQy
	 SzBo2qPQJsC6KlnYoz7mKDQ8OhrMxZlCCMo170wUTgbaTkzoX1mgsznf2n5GkAUNL/
	 eKonIvAW2a+Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96717D711CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610323358.18263.10519981702204335169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cf5f45f6576b14f02974c67b9ccb9c0b680e929f3fbb8d6b9ce4511be0c99a
Date: Fri, 19 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766103233
