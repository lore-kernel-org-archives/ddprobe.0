Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8BE2E413
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759610994; cv=none; b=foUU0+XEVxYND9PvwTxnL2wtcGjjtmo9XoS+4oQ7b9U0dwB3jWXPacfo8X2mfRe0nyktld56nlv9qNWEl04q+Hz59qqNfCRMB8mmjFeMPPms2mpBRpblfk79ptI8BJ9wTyzmRgSKv0+V+xscc07V8lkRknef92KxZKbTsDpa63I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759610994; c=relaxed/simple;
	bh=8etE5ek8Y4KGBXqrrm1lARQudsGmfYU2InQD+YaLDEw=;
	h=To:Subject:From:Message-Id:Date; b=WCm/DDFwS98B9M4Nyb6eXapOOGrR5sfDtXjTL4ZneqTSWHmLOWymqYVkLI1XIAzSXey7qydK57kBstHYs9Lus7eftAOEUno3vnlQvtpbkRZUO2KazhBiMMAlJ91W+QuDWR2P9Mgzm8sIkqgdtkj7BqbWRkQseb5MDNngVN1BWcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3H6Lwm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3H6Lwm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2450C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759610993;
	bh=8etE5ek8Y4KGBXqrrm1lARQudsGmfYU2InQD+YaLDEw=;
	h=To:Subject:From:Date:From;
	b=L3H6Lwm5qmLg9sQuri3bSxnjTBJgKMMUZbuXq/tPz1Y5DfqOFqeG9p/QgG8FlrcyF
	 Z43oCRd/pSnVksUUCWW82/0s+dougTdMt9EB33jKtLiL0O6cgY5B8kEnvi803fs08Z
	 mz5e/Gh8dWQXGEGRE65EhZ3mtdAFXo7SF56B+BWunpTeQhZqi9B2o0p01WawuFNAP3
	 7wmRkv8tJn97bLK1Kq2fqG1hAh55ZSZTv4Bmw4j3tDHT74YQRzLkOvBAn5jO17keUq
	 Q23//LcJ4jS+nA8omTLa+68pf+5cfV6stiK3OhrT5a5iQQL2G9JlWHebS86cEvsAWW
	 ptR5CYHa7Qhew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22ECAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961099357.26167.6545154682109024375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8bcfe11923b80801d340c5bd5bf486a10e89839af72350ff4628f4afe3cacc
Date: Sat, 04 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759610993
