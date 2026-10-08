Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383D13BFE4C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791501634; cv=none; b=L6DVezB3J1NJAAGoP+uncTcPByz8EB88BDBzCSYO1gU7R6MnO+TKhVakzjUaV5BPgnv8HwUPkzXDNamUJti3VzPyedTPit0JZmOkSrPgL5GkushLOG9fk/ZT3r5kTydBoOZ9DXQpwxYCGYAF6BsusRogZ9Zjw+wdy5R4Yq9EnBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791501634; c=relaxed/simple;
	bh=xPjo6iwE34tFfVbRf2hS6EiIfL7fCppsSHbqqCDlV50=;
	h=To:Subject:From:Message-Id:Date; b=Tdf6GOrV6vxLNeaS8SkRM6i7G0JmzgOo0S9xvIAhcHvIVbd5qol6jYyNY9mQhn6LGkA8PHl+WOXZNFdMTxhmoXqIeRwTMxAWmvbr6uX26N9nAbCWM5khX2932G09eM+KdmFkYshzxv4oUVARaa99gij0esivIbQWsPxkDKrvyMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ek92zSqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ek92zSqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02F7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791501633;
	bh=xPjo6iwE34tFfVbRf2hS6EiIfL7fCppsSHbqqCDlV50=;
	h=To:Subject:From:Date:From;
	b=ek92zSqAyFV5kjrGNfZ8cKuVirXtufwvQKeWtuKoKLc3PnmVIFSs9amtxsOga6iMN
	 MvTGmFimuR2QFkI9LXMQMpPZPyXLagfMzM1h9vgcluNgY/EDG0u7n9JHoz/eqcCRQU
	 2G8mDGlXoe4M7b1hBiW7UcPYpm3El36l+H+KMeCaorUgtBeMYcD2T6yUh8klO9vL/j
	 P+SZ0W20SokgfwBsX9QMjUs89RNUg/6R+ep4X/r1oFiWJ+54Knw6gD1WPBVf3VJ8Ov
	 gucrxfefK3zxnGALRJKh0AP66vFVPN+tvyy3rE1BnJUc9eIxMd8l/qSSsnCyLWIF8z
	 iUNd+WZCUEUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B11CA6015
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150163368.15537.15801945057736923137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b03511b6b2fbd1d34fa3e9bb4e14e90225e6057d9b5b91b605acdf63f9d766
Date: Thu, 08 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791501633
