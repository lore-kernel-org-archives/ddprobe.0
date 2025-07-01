Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8FF15533F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751336394; cv=none; b=sbfGRL+o2c+dwZGatIdVEsUnWq/+Hkcpzp3DPo7l7gNBdfcAwsFNjgcWBcpuaWRJf0znRrwiyBQnhf/w2qEU33OutHkMgJ4yM3Tcpvlfz3b7niAgRPlWMvAvNcHP7yRZSVVwW/Q1ulhhxR2haWcE40uQMAXqNiSEF3cpx0+hebw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751336394; c=relaxed/simple;
	bh=foAsiej0iwxzUZ2OgGIwbWiXPeDOzvYjJHyfZ9Ze6D4=;
	h=To:Subject:From:Message-Id:Date; b=gTnDXNTBDKVxjVATnGMEp4KDlqpSbqA7M9hnn/Zs/+e/dFMRtlHYhutpb7ziiAKUNTMWMfy3AKol8naYL0/qDdarUy7WtXyFKV4VrW/uOKERwLb6Ls0qbfcQfpAXiXy8g9uD4E3FTINhDi7DKSDfz3hX5OoG2IsecKe23jdauT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYa4AcAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYa4AcAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F298C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751336393;
	bh=foAsiej0iwxzUZ2OgGIwbWiXPeDOzvYjJHyfZ9Ze6D4=;
	h=To:Subject:From:Date:From;
	b=dYa4AcAyKYNDHdK/V5yu4hdCUWL4Jl6WkYXjhNzG3hr5IiBWLDNmTpn3q15H4puNT
	 mK8UDRRy+GXErCQ9EZ3RRgxOj8c2ugw3J4oXKNqwcawkxx6Uzrz7dMaseBdynAizbd
	 Rq3FJrBWO0HZGu3oBogBPmt4DymuKJckUYOloHNO9vgwML1zn3NTeMSzpjuQauC5SI
	 AUCSr0ToaPok/Z8X3dDUWPbVC+OruZeMVbeM/7lPt+BBJmGsBV0WLMRHe9yWoYwP2T
	 tHMEUNfQ+0kWQjXfi42zHlqquTsYfOMA0yWUhSLpjXkveMPTGY6GvZvI9dY+O3T4MK
	 SAouShcrC92ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F059C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133639357.23001.3356463167201102196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776574add11bb80fbd63586f626b2a59f0a6fec42d9d909acb50e1f5e01a963d
Date: Tue, 01 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751336393
