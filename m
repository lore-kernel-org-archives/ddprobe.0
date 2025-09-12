Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F422750F2
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757659194; cv=none; b=t8z/2gL37iet6lWws3PuF6agmfguPajto6k32mGjrk3MHTTRy36hJRbJoTvgBoyrScO+AVikZ6OK+oDO+i8uj3pXXEbe9YJgmzbFm3Iwo+1na88WrCYqY5jxb8IGB36oRH8c7tjcqGMUNQ+Yq7/h0HPdugvpsVsIEFfrxeeVwRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757659194; c=relaxed/simple;
	bh=3aN2qQ9HGVqmmcYTEO8LsST968TBLzytOvdeS5HYt10=;
	h=To:Subject:From:Message-Id:Date; b=jlGTWav4ZNwJRJR4XQpfnU7RmLkHt4jHQRC2agcSmR9P0csPt7UARj30b/c6rxKw9xuucAZ30nFDxRcd7gyl0BiQEHTsPo/rOl0HY9G+ix6x31iGCgFYXCtBOI6YlOni3Q9HsAJRMfDZ3U3Yi4+L9WnsKgacS7Dgplc3gOUgzBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTuC0vzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTuC0vzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757659193;
	bh=3aN2qQ9HGVqmmcYTEO8LsST968TBLzytOvdeS5HYt10=;
	h=To:Subject:From:Date:From;
	b=oTuC0vzdwPEgrHrxXDzapyO3orfig/KngQu+jFPpCd62J6n4Q4xBuSM7Bim7u6A+T
	 2oyv4BTNRii9r+Jcb5rk0Py5vdmjmmnxGW9Q8rdHP5Ihiv9miTvvMWBzxh8G9R6Np9
	 bexmfaJ7KaLSqoC6vbWuH3QySCeJUd/UeBXrCtrKaKRfNZhmLW3F4bO+NkXuzkMNTS
	 o1Saxanxj6mMYWfuR4bBMJchptsnU1kpfevvuth3xWfdtPvsbwV2yaUypAolWRA2El
	 xk+SjpB/vz1yyjjmPeh9E9V3mh9zEGgNAA67cxnG1VFr79e+AadDQvCaEiSbUBKFaX
	 wWsb0fIiUV1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E4CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765919357.11714.14943630586869960906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe480563bb4da803f832cf8c79be16aeec566e7e9b01e117da40b2b21d8bd03
Date: Fri, 12 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757659193
