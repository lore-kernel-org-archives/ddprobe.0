Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF4338B
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747613394; cv=none; b=Zd3J5cNRo+F+i+Dqr47r/+8fok4zgT3Ui3QFXO+czvn01bRy1Vcw8DHfUOuKzL/3faZYvPBigMhFDfRDdHujmQZX19ptlkBhbb2hgGXnjca99pIreGqhT15BnmbAuKZ5ebpBYPT/5yLtTL/BWhkbH9/6WMWS5oSAifDXi4keUgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747613394; c=relaxed/simple;
	bh=ZhY9ebvaKMZgGmN7krgbEEO0O88yu1SiAfCPlVghdbI=;
	h=To:Subject:From:Message-Id:Date; b=A8bFCRORd9CfCJmHMgsBo2xyvrXgz8uTFlgtok0aWUEzo8+irmSe6CNqqxIs6MMXnTIIPWrW24jRP7avFxcyaN5byaRwqfwIFpq+1EqMg/xgMLa74q9Evxby+2Glo1l3I93CR/vbYUqRYOLg0DJU2mRrlaNDBcfk0KoRXtZ9O8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2GDz7uJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2GDz7uJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A162DC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747613393;
	bh=ZhY9ebvaKMZgGmN7krgbEEO0O88yu1SiAfCPlVghdbI=;
	h=To:Subject:From:Date:From;
	b=b2GDz7uJkrfIk0AgFrmrJNjT+WPnPOmeSqQIdqY0j6X6gUajeK2zr2QYD268tGYuf
	 yF9O6f3J9ZOuJZC6qvilponyhr/QCGgyiZUl6fend9MginyZYt0xiE09fZmtKlbdnD
	 R7fXaKveSNyk2d7qu5F6098wZm4a7tRYyVsJCF1jDQ4MAyLDjTgtpkYIibcITaEgWm
	 d11hO+9g4HCelDuBAXoPVX+FB1fvOAF69SqCDppNUzIF/zdN3W1nirMCL/PUtRtZYp
	 I8EyQuu9m4v6vpXiRajb8/srvxmPE1VUVQHdjsowgA8fXzt5M23bBxHP8CU5E3vtDT
	 zd9N4D+7DxTbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E623C3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761339357.25647.4783216557641231578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a2831cf7e4ae0729bf0a84c36500c1f461258d3297ab6850b85ebcdbca8629
Date: Mon, 19 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747613393
