Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4341219E802
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733781954; cv=none; b=kbRViPQncQPyinzbjZr4GzXWO/OvBtqjk66hT+EuK5oIoJfiAAaZSvxKIjx6RX/gHHXN1v4HjRuWvuD5zL5BdBKE8b2jdW7pSy6Z5KoL6qgX0YmHlLGTPEQqTcDIk1rTQMNPjTWHGnvUyFIrrYCH6gDs/d0UIWPm1JKjzR+7P2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733781954; c=relaxed/simple;
	bh=/q2WVeaZAxVqgMbFPfycj5voyvb1RR9o2/AviCXMrk8=;
	h=To:Subject:From:Message-Id:Date; b=jLWLB2Vcw37aaURpyJkf157Auzi2Bq1/NPTEzYskUysCZNPpOXFj68MsuH7fuOwFIgkuyHOOCY5QXTyJQR3wqZ/pk6UKQS33wcOjI2v1anodBYreEwTW5beorPFSGMkGhaWh14Ib9kyYgboOQErxv8gve8k+xKTzLbS/VCijZPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEeshQ06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEeshQ06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89BEC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733781953;
	bh=/q2WVeaZAxVqgMbFPfycj5voyvb1RR9o2/AviCXMrk8=;
	h=To:Subject:From:Date:From;
	b=uEeshQ06ybbJH/OzNlTy9W/Pfryp44IWKYh3mb02LGIBmAtjl0SWdx3GlAcNpmKH+
	 BhUskpVeeo20D4R3w2Lmda3tqVsc5DVCuvzZnqkUkOxIQRwyc/nnUF2eTj4dTEZlBd
	 awH0a2/GNOXWxDY5Ly8eNZh2k+tlOwsUgLZFBtZmw881gygl4jNKIlW+0oO31VefJd
	 4pLdOVdr/bHbnyH7ZjAkidNiQisYZ1ZLuT0aU505f4Iv82ygzbvsjHkGRmNiegq1yy
	 tbNbTcusZFzdfXRDEkSx8vpzcG5B3VTd3j7/iQ868iOMyyGJqbRjOyLZSVVLI866tW
	 nJO6F8ihXZ5Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87B9E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173378195363.20167.5620075438208011311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6126ecbe3927e6a916327701c94c103fe8a0535168219df5e794ea3415777a
Date: Mon, 09 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733781953
