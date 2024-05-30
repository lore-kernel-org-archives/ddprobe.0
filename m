Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A811148841
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717059263; cv=none; b=hIq6/jDIijXr1Tly7eo1zf90jAtsLkePESmngrIeJTgAQ71ExK7CkEAzM1re+QVWHEFndQadVQZz+pWGCndH5qhyr7ZnNvs4sPAusmB4Z81SVo2ONeJA/s1UyZZg67TUTykVBNfQTH/7Iu2h0Unp2fkrx9Fmd/ACZ5IGrRyFzCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717059263; c=relaxed/simple;
	bh=NCofq40gvnSqo6oDBrhKbj7xGchOoMbOfLxCdi5W364=;
	h=To:Subject:From:Message-Id:Date; b=uf7XAYSwnKjn0RTcckErdcBJPxejLYodcCzhFsu/fMW/ofHzJIVHcE+aLFAVcB8WDT+32oeJgmo4ewYaCB4cOChpzwtWHHHmzngY9It5749iwMVGCnvNeGmAI542irAyV2cQZbo6LaPXK2vxjr44iz0DKD6KGz1ynlFVISC25rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdo4Qfms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdo4Qfms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3988C3277B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717059262;
	bh=NCofq40gvnSqo6oDBrhKbj7xGchOoMbOfLxCdi5W364=;
	h=To:Subject:From:Date:From;
	b=jdo4QfmsaNTrFHOyUSpktvcuCpyM5RQIUD4VvNOyWs06P+mXwHrEJZICJg8yUNnYl
	 0YKBrMys4atJT01pNl+5D+L6EFFBGmbFYlyoiXcZJCFHcWtAxUgPYOJPuQw6U53I//
	 BXIiJ1VT38xRHji30arWkoZ1YrE3sjH952s7upXKfG//U2VQjtK4m+OzTEa544FM8k
	 Zi7qkTRKMZ8xo67zeXTzAd5qic0jvgUqci4L81u63mvSp8ShvVLKx1rkA/Zfj8o69S
	 TLSBOPnQu9b6kIw1ytvZ/yDnaIlZgVQTBotra3Jkw0sblKC287rYHk0RGgvAYyyXhY
	 BC/9+YcvfFR5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C366AC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705926276.27855.10543556113946784280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b28248350d7fb6f1c5e4d283466aed16fdc39c62edd85ad43c0e519ae467ef
Date: Thu, 30 May 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717059262
