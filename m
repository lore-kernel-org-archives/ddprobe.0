Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E602DFA51
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744690794; cv=none; b=j1W+Ikrfn5CoFCRtFXjhRQVhNac04MnkJsFFo+utwjR3li0bbPnjpL7j/gizANC0wBTJ5dAsny+3zft//zpDKE9nHMrqe+2yRtd5BEvJ2hol9ekMl8MV0WIChvGckbfoOg7ZxP44QbqPYDLIjJegyAjoQGh47lmpea795zi508I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744690794; c=relaxed/simple;
	bh=G+IXpfucxSZ+zAsn4QpNpJs/JK5VWESFiN+O9huoaOI=;
	h=To:Subject:From:Message-Id:Date; b=a3oyNC90VWtiTsPfRgDsehJH//NCOEXEC+uzC6CxoD7ngVsbwwe+g38XdI/8BNJKgPGt6ma14T6SWxgp8LxNm/5FeNGIWuyqkKqMgsDi5VRSscUiddkGbkMjl71ckqIPGQJH/lmxPpQG2GWLznFt6TnkCHoI0700vh2nkM3lc5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehp2q9o3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehp2q9o3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6905C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744690793;
	bh=G+IXpfucxSZ+zAsn4QpNpJs/JK5VWESFiN+O9huoaOI=;
	h=To:Subject:From:Date:From;
	b=ehp2q9o3ApZaNgjlrMAfpRBhFnUbt9bunU6F7zDuCTHhNHO/eiqAWoI2gQeRV7oDU
	 tf3kQS1Z5NEW1FtXzhD3rltDh8PSSEy4gIUB8MZJjF10JtDRww5jTffBRoJUTfsvUX
	 XoRA2EgcXdvEd3jXZZqs9mpJmDQH2gZ6rqzp4F9+Uq8oD3dffQDiai26vqsY0URDQI
	 XvxnnoBQd6niad2iJiLMS0Ehs2Fe3/Oj1LxYqA5lL4NIrQWYTJA6XNA91OM303ufV8
	 y5Txhg3lnS4kzqNacQYDGzmpdqwMw2SrsZg611gG8bHBEMniz+Rdsq2maITKUPLMls
	 OZ7q4HvSvoUAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9759EC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469079360.32371.3569079281220984619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5dafe5bc4ee20efdef080ee2e47af085fed32bdee0f13053afd4a4e48161e5a
Date: Tue, 15 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744690793
