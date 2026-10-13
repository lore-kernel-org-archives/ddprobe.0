Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFDE4B44BE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791873034; cv=none; b=lzhKLqSKTCLspRmMCcAt+owHgIGV2yZ08H53yLiQeP8/qe2NYkHEUdXnh2cxRMjWeude6aDPTeyRA4+1xIb9A5VzMFP76uWsUFgVEnc6XkHc+KB77QLBHjAdKs696bACAVgygnDKUb3R6rUKf5z+nPkjOO5t/mJ95AfD1hQuq6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791873034; c=relaxed/simple;
	bh=RqNcFMMJ+XgImFcZHn/9naysXGHFDO6oj9sl4GicpQI=;
	h=To:Subject:From:Message-Id:Date; b=k7ZutLRbexmOr7e1zv8P0BQaS+pKgx7ZCOJanCxxgjcFxMtCMl0CeUEaCbgvzelx6XyFZPn/16WtPKDcTfynT4aS7uKUO60qWvuAsUskUoXcqrJGFZgN1dhvK8+RQW1icg3HBQP7HhXQquN8+bNk8GMXD+t+sgAe9t0DsAASUt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msdN3Dxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msdN3Dxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE84CC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791873033;
	bh=RqNcFMMJ+XgImFcZHn/9naysXGHFDO6oj9sl4GicpQI=;
	h=To:Subject:From:Date:From;
	b=msdN3Dxw5soYNRn+EYqPh8+kjkZu9EKhUFX4HDi9L3yta0stzKOXL8Jw7vuGvbzwC
	 jMTzpiprS5ju64MpXPvB8TUldVjcx3xbADlwoEy1woO8scBvQ9/Y5i7tS6RSvPL8pX
	 GDMxeeo4qNr9O3UBwCaYaJTG/l9JHpqRU6V4qKsYoKDZwdRyB08CTVPdYUy35tBxbJ
	 /VYJPZOECfp6FIpYK68514VHMYs6fM7JLRuXqfwa24ZyzAp8vY9zLL+vcTQYz0A8nc
	 vJKAek3UtgcgwyIoNSeOIBCOY1inpMteMZ5XgcJZDQ3i4A9daqOO8tshZPdqdQvr4U
	 UrUb+ivof89YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16E1CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187303374.22621.7719573011342888945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f770a96c6d65b69816d29c35b891a09116e4f8c669842eb3606a7295bdaa3fc
Date: Tue, 13 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791873033
