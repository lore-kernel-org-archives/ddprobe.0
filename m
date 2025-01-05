Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F503224
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736100354; cv=none; b=TkJ6nU5TnL13inO/byfGEjsD7ZiCBBtYgcid/GqIcirKHj+Ntfj4yn3eUxUMqWe4YJED/p1KoxppZEyJnnkZGG/ncx8tNS57PmcjpbJ0fmRe3zZuiJxZvcOTLhTupBRKYmhTeFOvRrGel55IOnOABwb2fpJBP0eqcL3tr4wQT1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736100354; c=relaxed/simple;
	bh=mlKffQSw/MxPK6fzRDlgWsIY/UzuG9cUEhjCnFnS5ms=;
	h=To:Subject:From:Message-Id:Date; b=VjHH+1Q1cREXPln+vRYkrq38re+bcb9r43v4GL6CzJgI1OS+vDppMYy+Sn/CthhScZGFUeUqESf0ThYMxAYY17+zGhluy46YqkHDv470ki7QEckkfNVxPLYKb6FPqgB0Psjapi/I89HJ+3SKvUyNIbxReFxt6ha36sZ0J1svBf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1T8ayMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1T8ayMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF02CC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736100353;
	bh=mlKffQSw/MxPK6fzRDlgWsIY/UzuG9cUEhjCnFnS5ms=;
	h=To:Subject:From:Date:From;
	b=p1T8ayMcez4yj/pbQJh/M+VrEA0Ij4rv+AqmaqHRHAPM+biMcLpFj0cUR/+R4171s
	 sY8uWSuVCDex5C7c89pm+1cbmkZP6jreUMn7eI6cOkGHkAIq4bjFx4TksmoDbQLF7m
	 tFigjyjVSJa7aN8loLoIhbxJirmTX5+Rs+yC9I0BAnDFZsAN0DdiQ0BtsXOhE2oLbO
	 d6gCQ/HCi6WhsOhnigttg3a+Eh889k5/3dpkYOlXuV7hyAjJnd+sPeIhhE4B5O4nMK
	 y25wGMGa4pTZ5HoL7kk6WtnNFL+1TGdKB356PDDpgKiBtATH0bvXbXvaOjQ0foachj
	 5w8AZrfXpyu9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B0BE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610035359.22456.15554240874063124471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81f70677e522f2297c80d57c4dad75278c7ec950fbe9f2143acdcd8a88b193f
Date: Sun, 05 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736100353
