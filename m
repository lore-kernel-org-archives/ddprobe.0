Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7833624BC
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789207234; cv=none; b=sk6bVnE39SitRDI/4gs8ZMCzayWqn4InJUXuwRPH/RezAQ33hO4AlJHwTx0q60ALFZ1nkFeTznl8b2xbLXXnYIvO8xUAzlcPy0yYLVAwT3icyHdPKJKLaVf1hTru2Fd/eAzLVrJP0X++zzrf8OBAQATwBVlpAuPOdAM7bVexQVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789207234; c=relaxed/simple;
	bh=rX9bJeyWWJPLdAx8znJ47UXDLJavf36PMg7ZLhw214Y=;
	h=To:Subject:From:Message-Id:Date; b=a9OBfuzCEontJ/OBFJlJFIIykuQ863ztCkamizP2dTU4VYDBtPdKQXDpB2DOcfFboTgNgIUF4QXGv2KycIfa1oV2BYUvGH4xdJXe5/Dyko1SUz1eXTG4w6AnsF55NvAgm8uXrJJuAJXLMTShXDz+sGvMz1334LrUfCb/j1/fmZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxmXgoM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxmXgoM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD077C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789207233;
	bh=rX9bJeyWWJPLdAx8znJ47UXDLJavf36PMg7ZLhw214Y=;
	h=To:Subject:From:Date:From;
	b=mxmXgoM+Fwnk8TczUKFA1yOKwj/F3cJ3sA+R7L4DHmZa+t2JElqi2bb7Q81OCkdRO
	 DCf2UZMhfNqJl5HOsd5x+HJulYpSnzCXHCklRmoIlvCP4iC1uvwIjX0DbFUwYQ68ZP
	 vJizd4a7G0NNBoGy7XXoh2GDH66K95R42aDORw6qxf8W3i8tC63geWivcDaGmYGtNd
	 QPO6Diw6doqO93xl+GtXJCcV7kKynDWaqMhGtEwQLIS8TRni+/BBwn/Xu6Hdfsbb9h
	 pIuzld8wWtyOeOq1oOfeRKhEUiakJIwz3iaxVH/QAmfHORItUAoLcSDG9/+9Ry/B1s
	 VIzB5edS1E6fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA41CC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920723368.25894.796743014479654772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a2b2920c6728814302286da23fd11e5db73a8704fb50bad991e97401d51ec9
Date: Sat, 12 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789207233
