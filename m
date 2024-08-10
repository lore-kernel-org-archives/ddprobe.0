Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0C8107A0
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723319754; cv=none; b=atjQ/oQRcYtPJ8Ei7J3q13P+Z/SHN8bN+d6aM62YeIfDKVsJRU2jhJmopEzaN6rc1noJoMDw7Cul2dMWv/KR6wTlugnOKnxvo2TsF4oltjwZBKob/0qmts0tV/U7vVN+46zqTxfquLWALtnDeb6fUqVjo2XBvv3S5cVPJwbTadE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723319754; c=relaxed/simple;
	bh=nruHKKZDtplgMkPcsCOKwyKGzfdNoDnlMq5ACk2DlGY=;
	h=To:Subject:From:Message-Id:Date; b=Emyvbo/buvnSH4VPHgRH2VHQqi/jxBZ9JtF4dxJXKwdWl119S8nafYOdlZkpCDRNSE3KTNFl8H1vBoLel/b2iqLraK4rs97/Y1VqZ21l3vG60qWy0j4da2+9Fz2fn/yZ9r1y/VLjfCuTVElkScjCCiUT35q1C6+FAs9CEMhg6RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDNv8zbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDNv8zbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46ABC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723319753;
	bh=nruHKKZDtplgMkPcsCOKwyKGzfdNoDnlMq5ACk2DlGY=;
	h=To:Subject:From:Date:From;
	b=lDNv8zbzJtL2tLgFOmZBNafmHamNy3jxrFU1eAvI8OhMWT0Rn32r77dAHigOl+Irt
	 tvm9nGP6grJDtPQnWROApEDmWbRfysaCK9iYl26grd81mLAuCDqu1TlOK9kENIs2Rn
	 xJW3eE0lTOoQj7IlMQE9rfkwKaXq6PWewczE8ZPNky1M5okE5xgfC+LSwmA5ebUnjD
	 dLRF3xDvJQcmYoj1hoKENKoDMwNhswR6JSDr7MNkP0ImV7aL3vtd1i9U6n2I3jgG/a
	 G9t2ljk5c+AzpyNOGtdsR86G6ODa21cwWAGeSeE4T/cY8AbiITCkrrFFBm7/rLOg1W
	 APY9+i5tocPdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942FCC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172331975357.5206.10050389584998771958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 314aa345b0a7466ba32e3c75115bae976816bcb6ad7dfc4a8255556624150953
Date: Sat, 10 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723319753
