Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4102F191
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728175554; cv=none; b=hIm6NqSoRyHAgM3w2uAdEqeIQwlGP0aVHeEFCh60zdPUEzYxxeUVAEfVSJQkA71Yu6z+ET4fr1QyTEXDSpT0DIwNTQtNkksCvKSlEC/FTfoPnu1jlT3ktTWFSKJTzcFU9Hq0+qDume6FwFRrI90dGzbbSVuenPZXhUcLHRsq83k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728175554; c=relaxed/simple;
	bh=ptB0IKDNZxZa10/00+s8HIlDtXtMtlh8tT2kxJSrBxY=;
	h=To:Subject:From:Message-Id:Date; b=gk+pye1xpfs/2VzJiMiphYRzIRwq+Pd92mGbLdIeVtYAd35KR0a70aa9R7LKfUrcbwY/vSb6CbBeihIHY5N2DxiERqpqhR1RSSq2wfwmmJ41KuSJzA2BzX+09YhFXPyVTyO+vo5ea87FUGzld/oWtU1oIazhTHvDWfwxmUUG1X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZtbl0L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZtbl0L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA547C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728175553;
	bh=ptB0IKDNZxZa10/00+s8HIlDtXtMtlh8tT2kxJSrBxY=;
	h=To:Subject:From:Date:From;
	b=XZtbl0L+AuuNu5KoqPMl4TnK3w4EmKioBrthydNbC/uBmyDn7usCk318BgHxTGJqx
	 gyWmRUoRX63C24dAkmY4XWBon1/FoAdioCH7lEJJ89QGd2ghX4g6MzVWMTnGIuQoee
	 1KfVMYEkt3UCGDyFw3THAC5vgIeUbboBFBG4NsmMvxH8mt2dgTaFc+DFMNlTr05Czk
	 /tHD1cWtpgM+Q/AFiqCttO1JOxkCjpBP1SCiRiOQuhgK1YRJWbYq1EA5GOa2ifKCnd
	 TyGPbMR/dHS0hlc6E07FqdHnDhl67dM26dILyTLB1DHXFC/6MeIo7vmR+3GrGftQgR
	 iN3atq/1Gs2EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C45CCFB422
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817555361.17080.8116836611438647678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ecd720c4650707aceeba6f40a9a30e1ba9f956f9b600597122ada1cb96db4b
Date: Sun, 06 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728175553
