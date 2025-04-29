Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D05F20E6F3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745962194; cv=none; b=uL5dI1Xf8FFsWmIbMbsoTpce3sYHAw8Bvy14Mil5/0xNgv+Xt6ZOn0VB24pMEcA3ycHSL5Soa+sTGxBfljUCG5xxsSfY79hZmHIees+wwXWi1UOIjcAJKerLuZqlfFSaK+HEkb4+j3yRKWwDTkedH64iT8vPDrg9x1JjTW7wCEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745962194; c=relaxed/simple;
	bh=wsP0N0bjal11OgT/6zIzVFEw/7lMWjG5OyxwsoDBN3U=;
	h=To:Subject:From:Message-Id:Date; b=Ip12ozu2cIbIDugyY4sdC4xr0KIdavbA3KxbyvNGLMVn6hKJXzHSa+m1QeSRffU6gVchIk3OdDwTjvLruy3h1DY3G+ZoOApkqeqd6fcMM47QiPLfqQo+C74JSHEPHXCHISdVjxtxyirTlvqPpwJS5kg/NVJR2MVFhBqf90X3L4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPP0E4Y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPP0E4Y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC04C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745962193;
	bh=wsP0N0bjal11OgT/6zIzVFEw/7lMWjG5OyxwsoDBN3U=;
	h=To:Subject:From:Date:From;
	b=rPP0E4Y0+Qy4pS2woCbLBeELBE8H8llKDIHmMvZN26dykqA9Pf+AWpkncg+chQv/T
	 BW5azanZJsk4zRslAIdlqtACOdMI9dKH4h9gHntFpVoTkI3E4svA2fjLoKd6+B4h/C
	 voecWeOCg3b+2A2MEnufczmRSi9Mlb2S4IPTm+xpc9p4becEBMgOAVlxRiFYT/hFiY
	 NfL0frQoGL4X9RIowN6rhmxfCtlTn1U0pDzUcW3NfI6bCrjQPPix532VBwNYy9IXwj
	 xuaKG7EvsKqerd8ootBzXkFxW+sIcHLfGeuf8kiTEZmoJvdQDOvf4ucJXatnomL2or
	 W/fadA5E4Z93Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90DC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596219357.11770.14728164996609823894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da87bbb797ba08d890c35bd58eaf50ba628722bfb9b85d42f6ea1f2764e85ab
Date: Tue, 29 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745962193
