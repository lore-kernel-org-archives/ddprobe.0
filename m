Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A93E1D1728
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728683154; cv=none; b=rxTfniSvcyYmsJ3IaPl7az9ZGjpjPdyuf6qvuUb6PNIF2EB9JxlbQbeYlKo7aSZhyJpgKCyKaWxyd8Wfm6TRJj+XxZJ3l92YJbDxmCSdlh40214q/laZbFx9RbgJvijqPUKsX30EAxDbscrawGHRClZUo3qsjBMzpG9VTC5jOvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728683154; c=relaxed/simple;
	bh=Nz8vHMKqhuFxW97M2WupLf4x62syT9rFIWKyWiY9ykI=;
	h=To:Subject:From:Message-Id:Date; b=p5rSaTfseS5vuWA/+thOFoTp6q7rJp4hMFwm7QB3AZ3BxJZWCsw1u06MynDDQDBRDH5kNU8VCTxGkwe50W6+FVuvYRv7S6vEzj15tXRsia8VwtVLp7AfNvjpwzgbklu6uwTKzralQ+R0EcOTdh0a0VvcNFuNmE7e7Pv5uS2D7vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaERduzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaERduzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC2C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728683153;
	bh=Nz8vHMKqhuFxW97M2WupLf4x62syT9rFIWKyWiY9ykI=;
	h=To:Subject:From:Date:From;
	b=GaERduzlakc5Xg+DyRCbVkiMjOte8ZVvKBgGuk92YInUTAWctHrdBBeCcgxs0vwj3
	 i+R2AwbBCJhNMt+tk7sSEdN5f/9+pbdSsLdVBBH8YJcWDuP4JqenixQGllmOej1sMf
	 Zz2klg1ZleTh1AiGHWtxEKM7vS7sa3ItguASYj1AW86cfP+zq60zoRLgLY6Hg7hGsE
	 doszJdsynLqKlAWXylXhGBeC5zUGKiJO4iExMBZx1lYqoY4izRv8/eoi3qG5wy6Rvq
	 R2His7SVn/CjzRqxpL2GkIQCB/CEFXfQVxuS7MWMoLUYXogsWBNC0AuoFCAnDvhRSX
	 f4bCei7LoG2Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DB2D1A424
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868315358.28512.10245666515239972386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe56bda77d999f2331b5c814b9e56d4cf2b7a52937ebecb88d7cb42f52e0d141
Date: Fri, 11 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728683153
