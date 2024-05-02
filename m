Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D3846521
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714665143; cv=none; b=Ua741Tai4pObYnVa87TTBaVu4ozCwVnlFe0kFwCPbW5yFD5e9NjO0Gvvp/LzfXSXFdi5sPVLjUzd9nyKtMhH1sIhKkBXmKnYd0jPHDRDtoF7p5InpjO6CBkBKDFzsOmk+ifVwOsYUJvsSMppPD0kwk+mGTS8taYv0Nt0W4K2R5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714665143; c=relaxed/simple;
	bh=dwAyvhvcY7/hXb7XEaKzdeT2+tQDcNserPC54NAEUvg=;
	h=To:Subject:From:Message-Id:Date; b=rn8nEmkE+hrSEbjzCo94rdaRxgxSvTeocp1dpV9UadFt51yOflN1Qbg9u/UiSIGouzQx3H3U4AKSu9EBJfjnOSFKGTY4XI6XG5csHQZUeUMKSneWyPwcGIeZNfRISzA4LSQvmoZKb5xFDnwobqoEeOJrnoIfBgbTYnezTOWI8+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iv4Ir4Yy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iv4Ir4Yy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE14AC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714665142;
	bh=dwAyvhvcY7/hXb7XEaKzdeT2+tQDcNserPC54NAEUvg=;
	h=To:Subject:From:Date:From;
	b=Iv4Ir4Yy1GdBCIIS7fhkNkKS7oElk6PzCQdwK/GMvdCyUaU/hm1B+Mo2r4UxAgbaz
	 35UHZ4gCvFeNxTlc6tHz/qlfirK6sLOkQkO75osPyKH6q3miEVj4gcfkNWm4w/rDDx
	 /XjZq4+zy1qCDdFepJQye3DgKbQSG17oNiu2miYtWygeydfux7vVyOiJnxMceXoCY9
	 BWLAy8ABQ7TJ71fnTZJnMR4PNfVtrpCsa/9v6NjquUBMs7iJv4/UJ1kpnIkDavqdF5
	 YNH1n8aKJPH1fkPpMLiwGv6oEJhqHbqShYRjWITD8t9yNlxkLFEoH9e23GB3hcaFTN
	 ofmKeuv792CAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA26C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171466514275.17499.2215724218305625589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa619645f98f3f0683ef6a8650b9acf5807a8bdf583095d6304db94941b5def
Date: Thu, 02 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714665142
