Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397CC367F2F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783076914; cv=none; b=Iw4N56mnDmDRwWFXTHgtunT6MkWsbwymZ0JP0wQavj2Ra8FOywd5gt8wBlDap3MlLeo7dcpr/RTyMDNpkqX3u0CwoHrtFXAHWEvEBONBjOwZg3Srs5Jtbt/RJZme6nV7Xk0ToeQrzArduyEJdBzSUG29pLC/jrTPlKipC69iNNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783076914; c=relaxed/simple;
	bh=Jz1mglO7kvtsC40nM/u78N2TgK1T1O1deIARwtaxrFY=;
	h=To:Subject:From:Message-Id:Date; b=iQhfA+lPkDyNCVTUJr5Hgw9ST1gysd7rgog/TK+WbVHKQ0b6EsDgvqCNzdJcq+6iMPgjYcI6wKYVOhp+u1XVoM+gdiQayUBbR99Ko+ANiAs3dj3c+sSK9r+utl6Uf0wAShHhcRN8uHWtCpVN+UTAIad9fr1O44UoyLLx6jhRn5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnXf3cYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnXf3cYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB131C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783076913;
	bh=Jz1mglO7kvtsC40nM/u78N2TgK1T1O1deIARwtaxrFY=;
	h=To:Subject:From:Date:From;
	b=SnXf3cYIsRvkC6VQXcGAoJH/ekVIQg9FlSIe872OddEG3GbqnOkYYTVVQuZK0ymmY
	 fwZ/LuX9OZqNZzWvUczilvOkO6uOEL0pD3c6UqULX53jugkWnviI3LnTTHRRsmsr0/
	 +VI1SwrIp8Vm6+7gH8cub7Akj+emSz82ZUOW7RkiGq+0O60nlZ74LN7Qi1OeD5C7X6
	 qrTHy1J5vyeFeE1UJDcq/xLhwZB9BzNjlfStkM/loimYtFlm5OZ5laTR/eu+xUpYM4
	 yc/OZpc3Fo3hhm2mEsgBwcTgognhj9pzLLv8R/eC0B1su8Ky2DaUccBwhUCP/RIzMx
	 QwqaKi7Y7pXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9169C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307691368.19648.8651450501431674283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a2df806acddd8c5bb6720ef2b580ac585c89478423eda15e921fceb72e21e9
Date: Fri, 03 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783076913
