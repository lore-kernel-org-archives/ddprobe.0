Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0845D38D
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762146594; cv=none; b=s+5whzGALmosw3FeeBQTHY2NrqORVumFeSqoDRt1P3NTp8M+cXaxc+O9RoZk1EqLkOUGYFe8GN1qodC4M/ze/KA86ZSnDyZwCDYdHMqYUWcV57A1pzLTADrZR1yQZMFavkBlO+Fd++yKms4WzwM7Y50BuX925xStEhgR3OskWd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762146594; c=relaxed/simple;
	bh=enSEnWdcpALridswKE7nNxt5TpOIiUoDU7n5xxSl3iA=;
	h=To:Subject:From:Message-Id:Date; b=raRRi4wzfhp6DOYELKGYUUcxRclpUYqnvJeeMUBeR6HZW505RkU9T5vzUfFV9M/OIgCDCa5ly/Vo1BbESmXT/t96ek5ZTcGENY12U2ahwAhCFEypNMQzxrdQJMjVGsYlfjtN97wiYkAgrqg+xZ+sRJYwRVLkzxLGhPKK8YfJCzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRCNZtsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRCNZtsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAAAC113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762146593;
	bh=enSEnWdcpALridswKE7nNxt5TpOIiUoDU7n5xxSl3iA=;
	h=To:Subject:From:Date:From;
	b=MRCNZtsFTiPFoyZSGFezMw7rlZdV1A8+DiQvy+gx4NgZXZKtXsF48H/2Q2u8P3R5E
	 ML4DaCwaMwMluapgxdRN68HODxY5nbBHA2NSBaqHHAnP+mhEOdshqfXkPQOuNJrmJp
	 zXNhoDCaMN478CtiVaTZ5smewNcIeLr2Rr6StoTrSZi9DgajYoAFYEJpxhdGutda9A
	 UlTWB/n2EN14uZUr8o/QZHq9x6NJNHAOnTf8vWmLvGsV2/lBibN1igx87+Lu3UaGol
	 d5Xf6bVQ1/pibFlIowh04JanPDtUND0q1qFhFROcPcyXDlvbsSXzha+Z1Ts/YOMH1t
	 xa14L7gpuNdWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F9CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214659360.21328.393724763967189780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98702e6f9b4f2f7a7af5f0186fa0cbdb2217f09efb52f25094340707bb81ebff
Date: Mon, 03 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762146593
