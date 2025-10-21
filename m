Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B668248F77
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761072594; cv=none; b=ET7uwOsfCgGlsWaYbyEKetvlm/P60Itm+0hkcGRLdW0Zcv6TlWtwpQ+ZMEdcatxQvq80Ftt/wTX8a7xmrcBObtL0eT9rzJvgaYQzxqTfajQPBBDhD6B470EJzrUjZIEZxAq9bvsd0zKx9EvAQLMKvQ+9vPxIP+aIzX8Pd6huib4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761072594; c=relaxed/simple;
	bh=5y5CXZhz0ISmIyjMKRsFxFYFgvIageFIemtDxZPEGSA=;
	h=To:Subject:From:Message-Id:Date; b=Gt9qsWOvl/0CGdKcAwgYqNA4duzE5sxdS6In5Kb1/3ZLU9g5g9q4/mxadWuaeuixqPjPlZkiy8UA4PQgGJceOly2yBV2lbvHE0Kz5wiZvfsI10LfD0SmqmW58xS1ojvjZmvIvdI9trttbTM2z0dyCDfr9mjnkx27F2WqOzbqH+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz5Ypypc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz5Ypypc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761072593;
	bh=5y5CXZhz0ISmIyjMKRsFxFYFgvIageFIemtDxZPEGSA=;
	h=To:Subject:From:Date:From;
	b=uz5YpypcvV7NPjXucb1dl3h8U8aoHGDM/xnva0N7ID94TFPiFGXwpHdcKkBSNaddA
	 fVEX4ICue22LbQSc6B/SzDZOwEhbAxQXlPDluEbkqveFtFxlusIwggd6Y9kDOMdRfl
	 78fvIXPCc1Uo3IOTc+WrukEjI0haQikVmPRXlnsXFVgPNkwH4YZB/J1C5EtRQ7L5dv
	 2NvpEK9cVWanjxs65nbzYNe3aFWqhOgZaAZDddfGjGe3nS6J5lSrVSs8H8T7ZIr6Gp
	 drBCX0/2mz31gbER3teL1/iEuqva/wgJ+ow6TkI9W9Q8XkGVG96XzyW+STnNwV2g/G
	 yGj3AHKpSTvAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF1CCD1AF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107259358.31390.3532579542530930639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5010adeb543ba5879cb62e8cdfc006ddf6673eb0fcd1b837babfcb904bb6abf
Date: Tue, 21 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761072593
