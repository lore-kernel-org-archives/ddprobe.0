Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C0A39FD9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759837794; cv=none; b=s5uxUypeCn+NCqyVF8tXGIkKhLPrlO+n0/LQhguMS8RcJNYvozJ4OKx2co4000J5mjxErsh5batqS8bMgGBXdSDjLKkCFknWgM31GHoLocXhBTdpthI10e2JFTFqgImUm3MsN79bcBJzVt0loG59PJje4KnOZpQ1pN3yDvm0tac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759837794; c=relaxed/simple;
	bh=Xf5MjaaoQQQzdPbhDlLJzNmbytYHltrJgkR2TcyOEYw=;
	h=To:Subject:From:Message-Id:Date; b=Vycxq7+Pmk6Tjg0G/oWlbhqVuBDCo4UTn/nivMjFeHoK4FNlCxUzZ081HkYRfp45GzlJSON+N0ADVaCm14ZX//hHQoPPXk6UGP3ml+TwvXqxT0mhuXg2f6dEIqpIqHUj0nFasfP+21RUgUzbwlEAdpejz8R3aqZAA2IsDDY3itM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBPE8nIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBPE8nIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3CBC4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759837793;
	bh=Xf5MjaaoQQQzdPbhDlLJzNmbytYHltrJgkR2TcyOEYw=;
	h=To:Subject:From:Date:From;
	b=sBPE8nIZs8+R0dUrf0x71+M5htp4Iyz7sft8U3UtfRh3QTbzI5+r3rtNyKEaT0s5B
	 4z4VrYK8fpJ49LdaP6VHIbdS8s8NX811ySZblgpWh+JeEyZXT4kPw/CYSDAXXvWzaA
	 btZa3UPdYcrksPrTw/cl+l80m3bfbTyxBEDlbiUCgGTXZ9JkNurqPpkBSP7uwa4Dbg
	 RdoUKIKv/5tBamApwu0w3BJJ82oHMbmtMpIac61/FtIuwPyKSmOqdJWrGmqDwXgmh3
	 wmLrYmQdIq32UGn4evEBVrsIcFiAL6sk7RWJ/o2OIMtw5Eh+rdl/nCPcCqyokrMede
	 RQOiz/KlCTP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F493CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983779357.3589.11030085793222309209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9d7777379f30f79abdc399857d71497e79f0c1a91e6dc7867231fdc1c91f608
Date: Tue, 07 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759837793
