Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0566749C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765793574; cv=none; b=HMwWOR/+q/dufxlxCWeTMdPnYaA9nVSX3Seg8/V4UgggjifqFcXHcNflamdEaXRDarDLZHt4XS+83/NJpnykuVfh2xGB31ckgquyqXq9mtr7RbmcBvLNm1ckfD86EWpsZ3FE6aMO9EV3BsJRvbIGN3mGisLSUHZNBDto6MPOeDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765793574; c=relaxed/simple;
	bh=h95CXEJD+qEd6ZjCPYbnrrAmsUe2vUn8KheEYvQAOZ0=;
	h=To:Subject:From:Message-Id:Date; b=Sub12JR47bw4NObeZwraZdZ/gpN3bl1lmUONHmasjlaPygyaOCvOnlynG5HqC83FHGHmLn5Jm5HOno130Wt+4ICOPX6pK2Xar5DXJUTLspLKAHMVi4kwDKJpSSoM98Ki7leg3JESatyawqnvJ5CLpLZuej2HLFrDZp3I7010I3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEQpoUti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEQpoUti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DA4C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765793573;
	bh=h95CXEJD+qEd6ZjCPYbnrrAmsUe2vUn8KheEYvQAOZ0=;
	h=To:Subject:From:Date:From;
	b=cEQpoUtiy9SZJiqszwUrXqV1jMCQ4Ypw49JWkkQzQrwqSvuCW/Yn1Ly9H4VY/9F2g
	 hWtDLlFGfNLxc/T1urRSgOIm5krr22EJNH8HCwqm5breZQH8uU37PIJS6WW937GcP2
	 PAiNllPDtiFXsXjyxmJSZqD6anltqwdC2gHcEpnr1w0rBF8iiKOlzDpUE2wcS/yaTa
	 TK3HD0wiDXofWm0idIml5TB1097WC2iq2S8RMv780Q1p3R7qab9DTEuYu7mMKOjTv6
	 +ZJSxTz5Zrc8xFezwCKd38mwYk6v9SWcOb+7c0zqM8kwqJgfyWGlNPmDHAqbfBVWgO
	 hlxd1/1VbulHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92884D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579357359.16574.1197461833356037469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddf4152e1d9930c28201e5f5d45020beb2f0cd05d3c82146a1156116d05bdb5
Date: Mon, 15 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765793573
