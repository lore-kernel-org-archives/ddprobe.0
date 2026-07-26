Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101CD1E1DE5
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785069634; cv=none; b=Dn66BsxTh6gHrhh46nzl4Pfq2a4kf7GaFXIwqZMogr2A1PoAsayz2pw1FXLbAk93e08RYOuPAUDt2bHXDqtSuuLbz2HbQbZemuLLPiUx7Aj4Yy16tbUj9qmQ6eM/npDGjeKYMNPbuBnaDH2a36c3OPU65nkJrL8EIUSgP+YQdoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785069634; c=relaxed/simple;
	bh=GCTXXhiTe1ZBI7ZyFqafaLxOl+PSXyCPPHHD9MmKsDQ=;
	h=To:Subject:From:Message-Id:Date; b=dZV1o9a2CsAgGhLwC6kqy38jsTtM7E9fFyi8EIvQljaCKhzOkdNzbZlENzrUO33+SEffdHT1yhtlleM3GszOhG+aU6bpg22eri5tCZcUBdK9mr7KYvBk8SYPHxS9u/YaE5i1p9PPq5miqmVSKFgpKxVBPw6HDPKaXdfLo8ljaOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7x+kp4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7x+kp4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA74DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785069633;
	bh=GCTXXhiTe1ZBI7ZyFqafaLxOl+PSXyCPPHHD9MmKsDQ=;
	h=To:Subject:From:Date:From;
	b=P7x+kp4aXH80gtWnWyoAErKUvgTDbfRKkFBjpVSIxbKl8gIWMpQzhTaIwkgcuERCV
	 jJZMOpbWuze5y0IssOiatsrGHKsXURzjP2wwvevou0YHvGCy3qpr5lfiKoKxo9ncfE
	 gWyFq/OAYk9x7veJB7n//D3gbnlP9VFUdIg7KggHGadyUio6eMzMU9g+wsczE6N8Ko
	 qhxMCXU1brEGabfVltdgCRTSgKYbE/kc3NwwkR+wpO7TxlsHE2QAvsdmATX5w/9v/g
	 DRdCjKvt7f1h+CY/KpDIFsZjEfqaEw8GzgMf66Kqif8GSiQ5wK3aabwtg8kuNdDSLr
	 24Db+HrRfYmqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A876AC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506963368.18271.8206750485587529638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21804de415858e066b2ac01158813c1ddc2e4db9a7bd2170d5963f8479e55a33
Date: Sun, 26 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785069633
