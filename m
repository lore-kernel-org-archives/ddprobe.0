Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6A11CAA6F
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743131995; cv=none; b=U9Pv9G9iSSu6/dJewSdX3cB1Z7S4z2JRm2Z8Nm+4tEjLVs4MWI4U4kcONYMC3XeG5IEx+vkg1iBy5ebiwvxUTH218tdipiTb5RI3na4lpE3vPvEAeNnVWoD/y7EOLT4YMtHLsLaHrN+aecCCVieFFwDIBM4nvBVHzUO1/ifgGS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743131995; c=relaxed/simple;
	bh=VxgY2T33Uk+rG8gg0KSrxLp37UW4sCrOadymEHm2XqY=;
	h=To:Subject:From:Message-Id:Date; b=XTEw2Ii0KA6qr9bxydq557G+2M4u5CJ5+VoMhcXc4Bqz6uXqzkNyknxVRFqCJd+OvlnZgzpFwDtI+a8DzHTcfV11c6nVJaEVNHpdJaGKX0g0Sxl3vnE61SWJVDUmTrt7nqkI3A6CK68rdF40I1c81aaF15ENb0uukowuSaMDJTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItH87KGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItH87KGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBC1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743131993;
	bh=VxgY2T33Uk+rG8gg0KSrxLp37UW4sCrOadymEHm2XqY=;
	h=To:Subject:From:Date:From;
	b=ItH87KGlqemGKF1KwVmtSV39NgBT+GifHvDnUbB0cwft17UYfZei29JM3XuPGDfv0
	 KzKySAc1obRaLHFNL47Yz85GFK1Ivo7KVcWGQI8FdpROJSoQbk8OHFrq/A+cQT+lzx
	 J21mn46wny7lnLJW1ZzMbwIv0hCJgR+bKYdv5+vgMulF/VWKFfMas5rw2byYv5t8a+
	 WORlOGN70FdMIhi1wz7PaehOCCVqEVsXcA76wcohaZyKOKYSZHTsQq8AJtrdlAJt9B
	 mCYR++C7XpMe4ValpoikhpkFq/ALunQ/hwYW9wUI18oz8vMKvBYg6ZQwM99Y5kZ5iM
	 4qsvySF2bie8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE738C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313199364.5577.8951370102860137022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa42c89d4eea1c5d528d2bf49b058b22be53409b34da1bca2b29eb3605f3c7d
Date: Fri, 28 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743131993
