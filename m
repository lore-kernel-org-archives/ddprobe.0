Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1829D12CDA5
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768091034; cv=none; b=emisBrVJ1wgdf+NJpI9xMeuVvl5aG5snwwJA8Qf8eNB3TrFm05Lfioc35/H2MeXidqPvSvrQd8pT4pJcn+mnN1PYarlJ05bqosxOQblKkSCgDhGDpPuT8if9J0IJE1Lj/x/Y4NdqZ7uPlnDfIcGUYQL1AeF3Hql3Qr1bdZJbPgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768091034; c=relaxed/simple;
	bh=6TrEPl1I+yQakbLj1tDmoIAPOCaljjkB+MYErx8xVqQ=;
	h=To:Subject:From:Message-Id:Date; b=mffN80XeM1ie/WjY2R3FZuRiEPTXdz1EanFyTbAdL/2AgnCxSPlBKDDVoT4v4IpBxiVKaoHpcki8bGL91LZJehhb10iwl6RlfEMQmPv3H6BFgcqdbryuA+vH71vDN/aCbY2zsoUEP0hz8C7NgHNPNDkQKAaE5beQVJS2NJSb7Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjtGMhp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjtGMhp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C1BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768091033;
	bh=6TrEPl1I+yQakbLj1tDmoIAPOCaljjkB+MYErx8xVqQ=;
	h=To:Subject:From:Date:From;
	b=gjtGMhp0rwMIb34KPmc+4kPhEsoD0G5hs+5xSxYxjvUdTJKsaP5989rq4npI1GaZG
	 ERvZ57lejmHilkxzKuGz5Fe10ILY3vCoIDPG+fr4zRT+zXaMBsHE2svnIy18s5BJP/
	 9xe4Z3ukDlPscEgGf9i0h0TLQDwRDeanjpvJ2A9eqEx++UCSjgoFv16jQoSNyU5ojN
	 09K6np80joS1NNEdy+i/fzDy0L82Jw/0nV8up1rIpRZ4tbIUjKJRTPC1bVsNFs/G+T
	 mytFkflXefktbIqVqWUkLIh5+dSGvf20wlyJMTVHs2aOCAW4XJv6XzfBHVLl02yBKB
	 HOUozSyXGmO+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF84D25028
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809103357.17804.10079602898151963183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fb70e1e9d03738b038d6209189e89d94b48c794884bbe8cdb0c2912cf315d7
Date: Sun, 11 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768091033
