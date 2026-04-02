Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275EC35DA6C
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775113534; cv=none; b=bWPuruGt63D0PbxwP/c4T3EBxnJiAjpObhfl7IM+Aq+l1Qk4hYQpqRwlnqIDC5PaVgVcWfB1mS0dxE84pdTcT08pZY3c5WsHPamGlGXpSWe0RTOJVF1S55Sewjmw2GnRdXRd/BvYaFFB6YMlq3EGUXDCUJAfBDon/JEfL8XzzbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775113534; c=relaxed/simple;
	bh=rnHSOvtj6fHc+awE/TZmUILB7efNH21/ksLGigYy9Vc=;
	h=To:Subject:From:Message-Id:Date; b=c7wScTNtsykYAiXHo/eVjRGWoXlINGUnfJdISOxgcJQ4VhJ16Z/s3Hz/DtQvagj0YKVTTPnu3JImV1QflnLyvyG9GN1utPDxf1qbxs+ObSIQup0zQMBP5PeYF96l96z8tp3rvNVuXoVpVGmGeBYpxiyidRzhnGlMdxGy1nQhFtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3aPvEyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3aPvEyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB97C2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775113533;
	bh=rnHSOvtj6fHc+awE/TZmUILB7efNH21/ksLGigYy9Vc=;
	h=To:Subject:From:Date:From;
	b=R3aPvEyKCoW6tLmJnJoAbNpFiBLfy8V5PbCQDRkiE0ePVqMZfGkhiqthVkE6668uN
	 inGsdLdLBlhAjTL6dQrF0extmsdo1z/Xl9YoNE0yfhKBdL8t+Lgrmt3m4tv8O3ynkW
	 t+X74jLNeGa5V1dmupGL4mW7XF9TMpd89isdl1lIc3PWkAAQhhg1P79Ln+op8vAzRU
	 hMj5FURB8sIE3QGHunhlzEIEF6zgcPyKEN2MlOxO6bsD43GjSkpj7ZpQMv4aqsY/Vv
	 nG5kOg78VPg23wQ18u22eIuakMi7+EA7qV2xsWd3tal2fZfXjHKqF+etBnaJia+v8V
	 NLuvSQQa5XSrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD78CC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177511353369.29764.7909436004667548524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef36f39df319ba6e3846816de519c379ee8b2eb4c6bc7a9b2ff0fee8589b31a1
Date: Thu, 02 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775113533
