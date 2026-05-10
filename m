Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCFF257854
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778422234; cv=none; b=lyKRFB2vT/D1wi0n+iopcCOY5lWdu9datALx9ZF7Q84mrN4fPlqej9cU5lrjyvjfXNi2kMYd2dBlO/CCD0oVLLMvkfmkJ0l0r47Zw2pS73Lgjsk01249Oa80zIV7o6XBm0td+uhAnsGmk1yJYPP/1hU+BCCVoGV4dR0Y5GW1F1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778422234; c=relaxed/simple;
	bh=wNUAii0fhjREs9CajP8UqqJ5pCZpkMjN+dSlhU46kKY=;
	h=To:Subject:From:Message-Id:Date; b=B5biqVvjz+mdv3A7Ca5V1VNc1heq7yomMwHFJEGIY2t4R0h4fcD8okT7ryaVBC5rnXkxhKiyKNihMx59scBz5BKJ8NouRmfsrKgmTTxBGAuamr3oJoXyhPDTmUWK00VJLycM8WaKNJudjkbuyvVDvfaElRVj57/V8+knrbYJhF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS4ix6Zi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS4ix6Zi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEEFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778422233;
	bh=wNUAii0fhjREs9CajP8UqqJ5pCZpkMjN+dSlhU46kKY=;
	h=To:Subject:From:Date:From;
	b=mS4ix6ZilLp8w9omGwcw/u6qlvKttvobTvcbkD+KSGnygv3p/5WBO2R+3GrDJW5LS
	 3aFexE9qnH+27dK+5d4lcfYz0rqhT1SgIajUS38GugxZ38WsaZyj7/CicJ1HeSor5B
	 1z0tQrSZhbuEIW4qtli9yDjxkGdLCcUDxbfahPlF5onN42msHoKh8s7PG67ujEZvio
	 BML6pTnv/lB9luiYlLBB6Q+7P1WE20TYCLwakiD5yu+CRAJ70kM+V/2rVkTUZZJAX/
	 680LpBrxeY5oHDtLzhIXFllsAkY5cRRSR5XTS1fx0vNsLfJXauS9Pa7LExO4bCIN1o
	 YKmPGRFnHjm1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B43CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842223372.25236.9853462614322189220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0389464ef937a3bb08f93f98e31795e9ac502d0152725f656ba579833524e325
Date: Sun, 10 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778422233
