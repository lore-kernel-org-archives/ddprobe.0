Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBD1171C9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748276994; cv=none; b=SP7rcF9+JiRnzBJKN3eDoUgDXbpapqtuN3QE4m9557HepEN4kV7iYN3IBCY1l61xcnpY0E6KQ+CYMr+1LIu5YpiMNywUjbOM+pKpAHs3xAigP4qpAeGprZD2MMtPEIiWju/DihqCo5YJ9Qlzt2j0KLNdd9Fgwa0tShnYyWMEVRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748276994; c=relaxed/simple;
	bh=nGGj0zLUQ9qW8U4QdjndqrcPvnTEw3nXxXrHwyg44bg=;
	h=To:Subject:From:Message-Id:Date; b=Ld06kUVhusgeYylSWImcH8wxiU/8AeepES8cs4igrlzDn81B52qITOKtHWj8VLl0wYCsuKpmW/o2m+h/F1h+uAwdjvKyn272ls2sfpM5Ie8A6qclLJeafAE404MmniDsEqUbDL8o/mSjjr19Mxkf8qFsvxWOepkuhezlaw+mrd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvRLSMDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvRLSMDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748276993;
	bh=nGGj0zLUQ9qW8U4QdjndqrcPvnTEw3nXxXrHwyg44bg=;
	h=To:Subject:From:Date:From;
	b=NvRLSMDF8eo/rYbayi64Kc5RUEqtKRtNHCf2039RDnknGuVIeVlgcw+DMyL3UT0d0
	 IawJpSBt2lgVGeDQygy3g0gYdEhKnLK2Pw30xiPjq7MSTsnEDSZxS4TFYptw+JB7VT
	 ENL/sNXzEo/dTFirHtW2HQmS/CeMjzI/9Daz/tMgz+pKeNZISviOqbq/yvOvnzNJpx
	 Lu9hWeUW3azmdXSBHiiytBCfAEUXYAk3DIqW32fmxGbFv2GALAl1u2Rdb0oiEPH8lF
	 KC0CB2vs6PmJe2Oe7xdwuaziKScWGe2OS/GzDZGVMs8vNc782DRb7xUBi0MY4NQeGf
	 M5FCbbQj32W1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926F7C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827699359.6317.16683977672675669565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0024a622580c4c49092f82d29c84003dfceaf1c7d1705fe4f2463ac52357c26e
Date: Mon, 26 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748276993
