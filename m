Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FF72EB841
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764063774; cv=none; b=DUJ0+TKXAaRBTD3Sze9nz3ieGKsKRxksXVTJ3QJ60S5WkkvWXi/nXuz0S+IHlSb6Vtbw/DSnhRucHpJdmKl2AFHjRLhaFnbDyV5i7lGdxyMGmL8fgIf17kOmxtldMZQt5Vmn7R++uoC0KzLoQhznG07bXt1ZgD3HMjxH/bgR9Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764063774; c=relaxed/simple;
	bh=wCMRsC1gmImw2P72fUXN2GEnppu6HeJ1ybkfbVp9vWw=;
	h=To:Subject:From:Message-Id:Date; b=aMWkhtZIrG1RaAhW/80OdEcpY6BY9rrVd4t8a/cttEE0y4W+bfMC/BohDfgbnff2fGk/QPWRNFIchU0tndsuc9QOTOrdKjSqN2t1zb+a3RGIYZijzC0e0ydsZQIRg0ZVEHVEwYTwGmPR5W4qUrOFVeYcxuNJXFPnfDpuBRT0gyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5Sod9PY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5Sod9PY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE2FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764063773;
	bh=wCMRsC1gmImw2P72fUXN2GEnppu6HeJ1ybkfbVp9vWw=;
	h=To:Subject:From:Date:From;
	b=u5Sod9PYPWsWQ82Q5msdCpDBM6utnWSj9y8OWwsW8xRwkjG2mY04evHeG7TmBR0lU
	 FfOjWYqRRYF8dKoTsXa6RBrCmj24WjtGzOTqKAdweZMM2T72C43oTUcL/d1FWrzK/A
	 XBRuTb7m5PhTtG8f22FCvrfLztY+NO0BUmXl4HXAcQGd3f2b7ENmle4U4QifAOq9eq
	 fOz48JTr+hbxErVqupO6CxN5FRKlayC/JE6yTo2Iv14HhQ5Hlb+9X3ZP30tlpHMS/O
	 hLav76S/il3GOKOWmkBSlSQ6X0JhfJQ554tMuLQRF8/fV9r9NfyM/xq2N7ZHOAefCE
	 z5cPIL+5BLFAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD6CFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406377358.22002.3336642973556458674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79347baefc5f2f537447f2b14ce52f49e49d5aba17aa59d447203b8cf741f639
Date: Tue, 25 Nov 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764063773
