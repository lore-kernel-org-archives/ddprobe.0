Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511A6471264
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791452434; cv=none; b=SlGn2dLpb29QKIceRVvBQ7ph17pLzpHg0MbO7Yhi0RUHP/nl7FzndhDxeuLSMhUnzST4kRfo7XFQhrZRDUJkWlXaQbGCqlyFsL/V89EUFYG+HdOjfw2EciGFUIbY8g8j7WXpfTnU/tpkq/E8Azq/JurfSUmcZzKqaa8Eo6dn2aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791452434; c=relaxed/simple;
	bh=akGaVakr1ahZDmhMCGUUx9LknXe/6ErnV2waBnBt0es=;
	h=To:Subject:From:Message-Id:Date; b=ogH/XNbL32OXRsVF04qs8JUFn9hYioKrjINb16n0uglDwy0lTY9xoYfmjtdIpsi77MObO4uE3pqfSSmjKHpRrCUrAraKO/eEjRXiLSB5fbl2Vxbo+cWZeK5KGs01mOaoIry/GT8MPryFpWtEoHOsDmFPWvkYslvZafVXZg+JhY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rA8O16Bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rA8O16Bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC59C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791452433;
	bh=akGaVakr1ahZDmhMCGUUx9LknXe/6ErnV2waBnBt0es=;
	h=To:Subject:From:Date:From;
	b=rA8O16Btcv1/FSghRxz6Wgjo/RzLNisTb/nyktLhZ7mxcKzhDAghcVwSr270cDbAT
	 nZmGowQgJ20w4vQkPNK5vxDEQw4zObaxOScE0tWZXozvrha1iRpLdBg0Dc4z1EnzLV
	 mZlQ3sFUUQIEDbeO8ZK1uxjh4svnOmWkaim5Z8TmEC1UoOC7Vbdehm4D9vuI925fvi
	 +vquq7XN6ZEkMf6ZD0TeBrUyLcezqM1x/i+O4H/smrfVYW+xsCPUiJUChqst2BVh3/
	 jP9ZB3zT/xsVRIov8/YhLB+yr/HxJK6cVZraoOyRVPNi2F5vFImiKhIn0YJhkKGlsU
	 TTs4XizMvKVfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1B4CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145243368.18014.12514155842716948386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05fff91dacd089a9608736698f5b2c6a70844d1c3005af50d3fb69d98e41bbc
Date: Thu, 08 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791452433
