Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B01223DEA
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760560194; cv=none; b=BtfeaCdv3kKTfhlHaoFWWGa5Te7p6Olfc4Ypo2iNQ0CjMJmfan5lhcu0i1hqEXXaZJ7vwO2d78uXUXg/RLFPmPaAhcl/V4brUhFICrAy99oJDkBUFm415th3Mf9RE9+ORtQVLK4jIMz1+ZPit1Mlijvj1NxSZeijUhsXBbP0pio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760560194; c=relaxed/simple;
	bh=GXodCpN2Wax+i0/iuajeDgaSsrJhv/b6/0Ww8CmpGCs=;
	h=To:Subject:From:Message-Id:Date; b=INRMIw5ck457VC8y1MJJNX83vMHnr7+IMFPRbz07zX+WEccVZa8cNNoiQa67Z+9TiL2Z5hmfFnG3Gs91lzq3aqt0UOuQpyGq631SfazdszEVu3e5cfoBvAMK/S5zYq8WjVth5K4GLCguJ/SFWCZ/4L12jnmXnxzyYH0ZFdz7diw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G42NsIl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G42NsIl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A870DC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760560193;
	bh=GXodCpN2Wax+i0/iuajeDgaSsrJhv/b6/0Ww8CmpGCs=;
	h=To:Subject:From:Date:From;
	b=G42NsIl272jNIAgvqx60fDBPgunScw14+qEvELIDTM4L3nE2zD3R+x2cvNcjSyPTU
	 RuY9s9tLSKBPlspMX0Jz+kfyFuZNdpEDCp7Afk9y1lj+2G5gD98Wpf9rtYWIgxX1RB
	 2vh89rX5xzgDCU7uXi78ww9atMEasmwoeX93nhxhq7JA+RYXGN/5qLB+YlievN31bt
	 aQpdXGPy55lid7ruLOcPd9NFDnZqjoTjVro7rff6C1z6t5cy9FQtGXv1NHtZ5hGNIu
	 eUX3Rbd68jkIKWlJrwMeRXuSXn+AKPDB/vhpRlIibPEdm6aXVcnx49ByEKUvEAOLID
	 Uvubp7z36+QwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D66CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056019358.23478.17839479950101864479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66855c5a2d79415967c98f66ae8d059eefa53b025033fcd9ecdf2b8985839ed8
Date: Wed, 15 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760560193
