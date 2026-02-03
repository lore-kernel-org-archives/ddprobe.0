Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE5B34B1A5
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770095634; cv=none; b=eL1+9jSWA3Ao8EHHTAzeTs9QaUVNEJlB7v+KJD1Z8fZA6tEt0Hj6MSd8Nnz7HHtm1Y1IjBTFLPlPE/Y73mmwj8enEBLzX5KSVxvZPfzNebCUBC4zGuLFTiwVqjdBiX9Dfk5zOgQlc3NxOtUnRigtJi0mf5D1QzgD6hNk/P85SN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770095634; c=relaxed/simple;
	bh=20oby10Gp62jb2mtiJWpep5NdWTiz6VQz69MA3yBOZc=;
	h=To:Subject:From:Message-Id:Date; b=Gtdv/o+RMR4kplfJSJD+EoYFk2xfPHd3osG6Wzy5cpXTvtSnQ2PCswPxrEXGLGK9JZc0b45ywN6yoeUK/IruxsGi8e/t1gcaIji7WTH/XkoCwU6OVGoV/cBEoLqiOYGPbPpQw2OMCVa87QOxKpVgfuomFw7k6s0UUqayRQfkWd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAH64Av3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAH64Av3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9289C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770095633;
	bh=20oby10Gp62jb2mtiJWpep5NdWTiz6VQz69MA3yBOZc=;
	h=To:Subject:From:Date:From;
	b=RAH64Av3uSFCkVGLSyGS6VcDGTfCmABpYhzy6/yCsz1Lsp8lMtkdxyDErAmVvQONB
	 2ZaBI8YlyBVlHVOhNuhUq+JG6h7WJ2a4Pgc/v1ICVZipNZGiwaGMK8UOb6M01qqPRI
	 mo6sKIcUpjy8I5sr2/E4s13JuTHe2QnSmVOwPEi3fCKyfGhN7/YH/WidJBCJZC+Frs
	 6i03x348BLylSJ6U/WYSN+M0vMpeIdZo3VT1/qUyyCl8ffxmdgQwSUfy/ZoO2F+yLF
	 9WsHV6mGH9bFdPYprdbNXoxycdWSHeVHgB2KM142dRqgy1DuWpDeVUNmHSPlEKPMuU
	 Yz2kn+CAugaRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B095EE83052
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009563368.24798.14581381328819631057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75ebdc51740ac0cbe8a8a51b294a06e53d4661b22b50e77f775e2586347c327
Date: Tue, 03 Feb 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770095633
