Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2A414B944
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717859243; cv=none; b=bVUK8WNyn9bfJRnQbQEPsDql2veA0Ph+aGmqI21bdzVefUuTJg87qd7BMPfHpr5Pset5gz54ISiJA6iF2KewpLhyUuSPrL6yVqXNBg+EVpJ3hWvji7hH+qGG2rSVYWgmayk6ZsNaehf9q3YN/wTttjijFn2t23XlPVSXlTVQUIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717859243; c=relaxed/simple;
	bh=dSwuwT1IVxrOQrnj0KOgcbSSwZfv2tZlXHnMmwm1WRI=;
	h=To:Subject:From:Message-Id:Date; b=M/wb4MRd5U9LeHKUskDIzIKznmNC/nuh1ajLKVF0liXHDLvNuew2SID4NcpmUitl0vi470Ch2FuN93DUp9zIqJSWh1mLbdrHoAV3vBTNkiCF+1TwVjJBqSlTjKjEABbpz5REqe/oQvRmc9NRw07N/xFnK97P9rbYNFJjAzUY2u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKcWAg7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKcWAg7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C81C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717859242;
	bh=dSwuwT1IVxrOQrnj0KOgcbSSwZfv2tZlXHnMmwm1WRI=;
	h=To:Subject:From:Date:From;
	b=GKcWAg7tdseDn69e5MtQSLtamSJIq3g+Wo0/Sag0IQzYurV9KZWU1lnXTe1d//Qv4
	 Ugh40bn2r9SoMx+n3tWyaZtYDn/mHnNe3Lk8ES3izSZc3y7H4Wp4+/14S3o24LEYJg
	 z6Svsh1pFsl9jzBNg320F23VwasEmIbYakYbU3ospEGjioeQLFBLI9bywnj7/zKRvH
	 +ZzxLKJcrgYg8kNO1x/HylXomZqCODHFfl+Efe6aH2T6EZ1hmJ4pxSE27RA8Mvd3nF
	 O+sdmZ+DgnOTeYgoiLVSa1X+VlScVCxTqfh5M/oOBDG6U4tZj81AqkLLsTN74CnuEe
	 Ab4TNM5MANH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE50DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 15:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785924277.12839.15788660431762456450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a657b961778413b143c781515e07d630d4f735af7c02670654fc953f077c74ba
Date: Sat, 08 Jun 2024 15:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717859242
