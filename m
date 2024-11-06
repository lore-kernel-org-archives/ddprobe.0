Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098D61CC887
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730877954; cv=none; b=U/YnWWFm/qnrsyYLMOx2O2BpsYczT2ufBb0eBRXVJh+/dnp1Bbfj534duDEYaAD1fe9PDeIFqHzyT3kFYt2/GUPUK6PMzSikUs6zZH75jlDEVSJAY+rhYFB/Yt+vPvmIB/AajPV+JV/8p6hRij82RHMAqZZ83kVw1Y1FlKe7GcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730877954; c=relaxed/simple;
	bh=jIWHtyX7D87mBsWRYORLMTmW9tngCoYrkLfdPZ67jvo=;
	h=To:Subject:From:Message-Id:Date; b=qS4yDX8wG7XD2969AQF5d8K6IRS0C2E4Am6BF/R1sg1tOgDwExqDaa+hLBObAQuprHoXXS4rKneQIF2SPHUccmexIuIX+vs99kHBd9k98U1oUUAr1S41behSvash5Jct64iuHese+wVtQnMSmgjQiKeRv9ou6sb6dp8YZoeU2fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQiUnVQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQiUnVQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7002C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730877953;
	bh=jIWHtyX7D87mBsWRYORLMTmW9tngCoYrkLfdPZ67jvo=;
	h=To:Subject:From:Date:From;
	b=fQiUnVQkT5S/Tr2EWXdFbD8GkwIcDIg8C7iK080TY2hmrhEGukrzuS7d0mwYI8ynO
	 xHivW1eMkJ9b1JW6HPJvdRVdYrnYXEfQJbqdnnR92UNQ6pKga57eVEiZOs2cCG+J+s
	 fEIoOw6FmRr6BOdHvfYfgbrSEZdZ4z6XZtIEaF8sc+pdJrfccD++6dwwiU1SyXWeMm
	 RDeYaOV4j61JEcEnevvapZtnJSDYnicrqOYI16SMvu+1z2AXD8m8GeC8J+ErHM4D3s
	 d3/MyCj4WXJ3hR4kF6F70TBHKE3R0TVpjEcDNEombc/I9Ts1HDaEm6if1ZqppFtoYE
	 R3hp9+E60i8og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C1D29FAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173087795359.29624.11969503594905979321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4e320063bc768b6912d36135dc07dec91bbdede6ab467b388124aec184e88c
Date: Wed, 06 Nov 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730877953
