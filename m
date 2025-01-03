Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5666E1CEE82
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735901154; cv=none; b=ur97XlM1f1seOz/ZRlo1frY2/7dbnnXkTK1ZjspPJ8CEw7RH/EhXuJliesZ+BKz2dAQaze0ADsiVCwYd582HRQHI98CFJzlKqaOXWP8CRqPs/WKsI3oBmUHJlc0j+ILReDKj9GdPYHHOxUWr2LhTYwyFgGAyicXTUp23DtGgpPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735901154; c=relaxed/simple;
	bh=LmFOXIHuiT0v99byIYznS7PZ20SuMt6qRkN5ISADBq4=;
	h=To:Subject:From:Message-Id:Date; b=YJmhVsyJ9P5J+ldnh1aR1YkAxzkQI0boeier3KTTOlMukMhZ655Dpe5/zOsr6ao82bky3dxbWXT8qO8VwdboMPrNcEAfLLDM8OmD7dNIz++CyaXNYAJVCW9s35sxgb29M+VHhX4cvALVSJFJZIaAIK/SBu8YAnWRRX7794Xk3PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9LLiymH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9LLiymH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DA2C4CEDC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735901153;
	bh=LmFOXIHuiT0v99byIYznS7PZ20SuMt6qRkN5ISADBq4=;
	h=To:Subject:From:Date:From;
	b=Q9LLiymHXmQKoJmoWayR35d8eGHtUQhVWRQ+a1xTMc5yk7xSV33ZwuskKaVDW7KeZ
	 hTftB80NOsTXFHMgUwy0RXFoB0pfkSXha82XWFgPimWQiqONkaLdZ/qtKK+VTPme6H
	 Exl56c6TGMmtihgD9HlLtbItCYgr0cY0Tbw/Y1+o3CNRy2f1hYK5csSWA3cVDuYdri
	 ZPjo36t1cs4RZ6KdK69pNabhg1hOjGTNMjS/3Dn8A+5dM0fr0+AEuuo2KGxZASczoJ
	 hiDvDrd9MY/5drznHI7zdeUBSJDuZ+dIlfbvijcjOH45cxGzarnyMpzhujPZk5Zya/
	 6NmySbAaY7NeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E0DE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590115358.17112.16750506570811474820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc0295c0d7b5ddce6ee2322f504214d17f4f5eeaf7755649742607aad31ee6b
Date: Fri, 03 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735901153
