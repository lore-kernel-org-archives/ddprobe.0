Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08733321AA
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772990093; cv=none; b=sAjk5O1DSU49LnPLT74mno0B4NX0zFlP+CeXuG0oRfsRoFmh0iAq311qEzDzL+BBlUHugMZRXASkemSYXL9jG2Y8K0K6LY0Y6gvKuHbrZuaofb0irWTsmEbNLbqTLx6CUHDHuHR91psicvwqlJ8PGXweNqBHOG5RlgW7/zWJtTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772990093; c=relaxed/simple;
	bh=9RGYu9DQoo/4PhBi4Fwj4PcUO29NPTeoQhLseh3X3Y8=;
	h=To:Subject:From:Message-Id:Date; b=CymiqZXKsWclvlSfca043XgHCJMpXeV5b/V0gr4nR4CRRQOpaO1NSR00MgGWIluC4kdWTXQZ+5Bj77svEsacjjy2pPJP7SHSNkbBgJgsAJyQK6HA4FZnXF4QEi8fC40j2vRwZn9fCf9jQL2GZVP9JwVJ3PNUaWaD+AieJBm/Wbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad5vPLIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad5vPLIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D4CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772990093;
	bh=9RGYu9DQoo/4PhBi4Fwj4PcUO29NPTeoQhLseh3X3Y8=;
	h=To:Subject:From:Date:From;
	b=ad5vPLIYFlTAZ2jvm3h9gRmKUUCorEgMIgExpmMqfCrfsGjIGe++47iN1qb4Cv0aw
	 VCtKoHmBLb4uqy5OQGOzfNvsCb3UUAS6ffSJHj+MJSXzz+SgbbCs1YwAhSdT03ZW12
	 uqn3uRD/Lr2oH1id7tKY21ras+Y4BfyqrO0cLyE0+J4s4YvOLjh/vokB6b57l+2nld
	 UWRbRGgh68aisFP5pVpx+EDhpOSSmQIE6zWwPnfa/lkkFXUbrt1/fUJsIwx1eVetAd
	 3QxbXRqYvh1YaeOc6AW5YAgNiqHQO2qY252+GF51Icc487mL3GjedeQgWOS/5mv3M1
	 1me1UnLOB3EDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8CCEA8536
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299009362.24137.9188785001682659533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba568df3c35727f97b7a10509ea336128cb1a55ce1f4a5d7925525725638581
Date: Sun, 08 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772990093
