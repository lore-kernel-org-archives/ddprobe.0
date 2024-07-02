Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747F214F9D1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719910523; cv=none; b=eM42L5zvb80Cy1unDmaDeK3xe7zuHjeoKxji9CiZBQUCc1p94XkWRarnfYZvZ0APGN4gIxyCBDYX2Z56asv3HtB0Wf0Od08Cr6pDAveL2X7mtem2VLBQ/X49TUuH0qxlDTZuNFovusUBD1vUpIQkSLwsLN7S8KGhNJ52SGv+vRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719910523; c=relaxed/simple;
	bh=WyHUz+XzxKXmap9zV/pv2w4uUVw+OPknz04f5lExKok=;
	h=To:Subject:From:Message-Id:Date; b=F5rwBZ2SM7RYrApzZG0m/KV7Oux2OUzt4lGsDHdFxPYth7vu+BIv6a6VzO/gFHyZ5kLYl4F7I1imILO4kKXeW+mcJkUdzzE7lceoho7x43lXdeftmdPQE+vDNFj/LluYRIIGmbR6tpfOfuBM/+rOPEi/SmjtGNsSCM+FKirR/+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdS/usUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdS/usUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA9BBC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719910523;
	bh=WyHUz+XzxKXmap9zV/pv2w4uUVw+OPknz04f5lExKok=;
	h=To:Subject:From:Date:From;
	b=OdS/usUnfyF+IgDQbr8tTxEDLVagzV7NdOrmi9txAIVxzDwT8u6EHZQRIE/KoTKbB
	 ZbxNDCEz5DN+tpEaShbVk9nRhA0WgoRNrwS3Wd6hWjteSZ1i3zzJyAksBsJyFfUATa
	 u0yBtlMj9X9H7v+/CmyrAZ61fBjzXAKaVp8gQEkLvtzRWjOX9dK9BQOjvLjVM/PifN
	 UN8zR5259fblZ13UQ1B+VzGKlAWGDSfp++VKwZb5ag690l7MOBoe5CRRgja5fjH3F6
	 xSwKgwdGZBeIEk8iunPchVu6Pv/jckMyxwCZ27qcDwC0t3kVBpicILQME2t8MZ6OUf
	 m6of/0eGUPpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5088C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991052285.25170.4621122993446294698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab7d8a0df5989a7dcb92c69d1a3e11e68cbedb9a45602b43f325e6754c9db59
Date: Tue, 02 Jul 2024 08:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719910522
