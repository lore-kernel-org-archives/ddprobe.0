Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF932DAFBB
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783638514; cv=none; b=t6lpK6EyUbA62WrxLw856S9XTOY5ww3KqjODGmvckYGDL6n6bCS0+7+Ct7xnsWgFUs6vSWGyj2mFN23+Rsp5ZIqG5XRf88iJTfSD3gNLAOBnlxPP1rj420NmkYh0PAkfmxj8LwCH85PRre69CHaN/B59Y94gBsMrebSnUgbsl3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783638514; c=relaxed/simple;
	bh=J/vYCN1nadMbyuVs0otPKlCXJozeKC7t6k58BsrcEa8=;
	h=To:Subject:From:Message-Id:Date; b=HCNHUJXyDsbChzWC7ot+ILyosVvIRgQz+wNfXLuZosYmxLGxcaEy+iEOZsdKzBS3WnQ+bgxXqlB1e7gQzUX/YTj53e71SmtjX58QTh8sJxSPcFP0X7Vj6CAR/Ktsx4N9YKS4EjoQ3y8ASegNzMjoUn63FVTEcHut9o382ZwckHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VB6iq/Vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB6iq/Vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99D0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783638513;
	bh=J/vYCN1nadMbyuVs0otPKlCXJozeKC7t6k58BsrcEa8=;
	h=To:Subject:From:Date:From;
	b=VB6iq/Vu0/TvJGIg/BTcaeVuYDlj7Tj7pmrHSnxBftlKsopGK5nIw3+uesZCLpJ1j
	 sVGInyVzMP2jbsygJInqyBLjlgaf5d6Vy1pOLgfvm6IouJs0Jxdt/rvjRYefYgyuRN
	 EJ/W57ZHSwh8iCvkHiCCW7/SZYCpKvoq0qHeOgua/bctO/9I5Xq0jplA4noqilhnRa
	 pr7RFtbMQdScISWWcbunbWFY1wp5LVNnE1tQzLTbgy+gQfIEbgA7DsYiYRGfWAR8Rf
	 w0apkKXoe/O3o6BLI1Wg2+fiIz4GJaXJW43h0iTtFdWxlhTujDl0NKMj+Lc2V9kelX
	 px8RGWOoNvQJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8015C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363851368.18629.1939309822745372139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7650c2ea93721e140cef9237d999e924fb5f73a28c3c5bf2be022a26aad3dcf1
Date: Thu, 09 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783638513
