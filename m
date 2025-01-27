Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD4C7DA73
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737958554; cv=none; b=tzho1lfpoa+Ex8D6qeLgT84ZhVFuNGd5VrmDJCPt8N1Dr1EOLYs8s0bfMrMXIsFaqbJsN0ONTkSsvGoj5kKrL3UVAzm+J4e49OOQePwmbo2h3ICS1Et+LpIUv10wX94bQSxY42w0i4M85dwaaOKY/FMaVm5k6okd6waXAzLe9UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737958554; c=relaxed/simple;
	bh=K0o0FbScgpZX3qeNjwv7b8CaVOOtXoGgBPRS51rxFfI=;
	h=To:Subject:From:Message-Id:Date; b=DA+ksF6oplONN+cdYGPb5Xf0+TMSe/bxFw/JQOJ+e6gdTq4FiI+vcNJt+/LdlQbKi2xlNQl32fZnozhPmHhdIT3oXX2SplidnDdRzUvOXuZJ3wHEbxOtj5B7v9E2DldISn20QSwO6bcXaJJdbACrdEs8gMoVgXONRWJlTBUReh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSXXSEsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSXXSEsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C02C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737958553;
	bh=K0o0FbScgpZX3qeNjwv7b8CaVOOtXoGgBPRS51rxFfI=;
	h=To:Subject:From:Date:From;
	b=NSXXSEsGMvQKb8Ai7mrtGpiJKmDqWz4LfDGVCmI2xr704LjqL4B7QhBKQCJTT+KHb
	 KK4QDI9c6oA9HTAKS+NQnA4s1awHs+w0GwCPdWeuJAsaf5bUUaBDKKg6g8TcrkFM5A
	 fCBudtiJzDBWOLWw508xJTl18XH0OEz7hb5v/4vXmPjrU8wZok3PlkGM1p8FiquM38
	 K4J7oWt5IHIsBY2AB4NCuDIcXc9Okfu+dFJSD5ye4/OGigZWbkJsTPaIICngEe1Cbz
	 V+M/6gwXkSwvCHSD4TFtg60XikCi18mLrG0CTp1En27QkBbND2prd8jpxL2ACwVgyT
	 EE8kwX7iDWGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB99C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795855357.6627.6789553713346043775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd3a3875ec55eb7f702ad0e519c003dbdfb1bb4a18c5edb5fc8a03e057901b8
Date: Mon, 27 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737958553
