Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B5C271440
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750778994; cv=none; b=MtUcL5IUog0YAClq4CacZL6VACsqwtqLxlOR/oyD1KRDrqg8oTjcSTeWI8lwUA1+6MgfeogqXwniG/ZsWg2nEXj4z8jzy00QUdp/AGAaH2h1AboIcPfOxkxT12r6g8/qQ9dji08KG4aepXClXzYtny85O9GIknY2Bv9k0LxB42Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750778994; c=relaxed/simple;
	bh=kEdcIo6lOfb8EbZeu6PUmsUnI7mjUCScynyOCTSss38=;
	h=To:Subject:From:Message-Id:Date; b=owtWtu8DA8OEpejFd7PCSjXqfD5eJUjrOSrc0v9Yw2gOHwEs/4t0ufNfqTq93fbVeERxT5/udr8e9pfefeRD+OOlxCxaa7ps8O+/0euuPad2SSZsJvuapqAOupKuovtbYZKa72vtwp+wOWOD8zy1ckpXm+zAJCx6bChJCyyqi6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2NX8GHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2NX8GHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A065BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750778993;
	bh=kEdcIo6lOfb8EbZeu6PUmsUnI7mjUCScynyOCTSss38=;
	h=To:Subject:From:Date:From;
	b=O2NX8GHJCthfIYac8NTfzP+KaUFe+Uz10WQlLq+gxrvQXxBVdzVBmn2iMic5RLmbd
	 zYdTKsC22LZV4yT2Q279YkGiv5NWr42mOLHLlgjf7zkN+tf1h+Uy2b/SEW4T6Qmnht
	 HtTJNqIiDPDR+TL04tAF+1DwdrQzZcr88BTIovhWyVbEE7mQ7tKjIARg427e0Vi0KF
	 88zYVB2ReQUrL+wM0LDgx9qZyLpSf0lcuwNnBbhoOf8Mo/V943Ov/GDm5GmEOQjzmE
	 2GTan051oT1TRoQVa0HslUJAiTIWMd0030ZVe3aopY6IcldBx5bubSHZR+VHGvJFFr
	 BTTRl/Frgoq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7AC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077899357.30333.9620639998152373126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe5f54e3e58c1be349e8d0676ab7027dd4cb1001d3457a5d998c710f515766c
Date: Tue, 24 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750778993
