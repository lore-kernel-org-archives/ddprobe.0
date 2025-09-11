Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D561211290
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757557794; cv=none; b=RhtrRGRIG1jt/a0SSkUCjzXdFQFItecGPyXW9HDWtzBthmMBcw5sNGexJX002hmvPkf7XoVrMUJgG3bUyfwPps6kqQUSsVEHcwFerJbK/r64Up8LUwKfJLVXxPu2pPWZuySNLoM/iIsfWv3bye0cpwATGrNSk9RjbgUtVqc4KkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757557794; c=relaxed/simple;
	bh=+y19+bOVTSQNh0blbelDwKal+tbtzodEOQYw5XX7Cgs=;
	h=To:Subject:From:Message-Id:Date; b=nPK/bK/86ypOzQENihZVT4G5qbLCfl1MrlH3TWBFag2T1GIQ3940SEx0DdcyuxpyTHh+IE1cjRM430Dtj5npB7r/Uy+Axc/mWg279RhvgNvcZOzHdYBk5XzeiZ+80ckLs44fBs5Cp5WlY6enrh/i56rdyWEUqKOGP4z7DPKgUeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMQpNN7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMQpNN7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE26C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757557793;
	bh=+y19+bOVTSQNh0blbelDwKal+tbtzodEOQYw5XX7Cgs=;
	h=To:Subject:From:Date:From;
	b=dMQpNN7yshJ7TNSQgPzIAwyFkAZrtMAtjMn4mzCw0wGh28mP32sdKfWErckMLrfrb
	 dFpFEMvZVjKJfy0FvqfIjSGba7LqqrzAuhlsyTTluvDF0OfRaumv2c6lNm6AoIC5Ef
	 dqzMCF1muDVrwGXoSga8qThvVhYR0O2YDzMdTf9hMzHDoyjSFOt5NnEe5dN5hGLLpo
	 OsKro5Mq2N17qkrkj2bzm0jOZqe94Q0QS77dJChM3j/3W7prcnpSy6dYJF7/DfiIvx
	 /3ypAjPIHAIGCbpkG/xDcFXFxsgyaj/hgQFXku2ges3ElDypVBLSgUISlO8WdA5bmd
	 98GWkpeltdAKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90519CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755779358.9449.16390696848045891877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37eb6de6610601dd5cdd6b882affb466d22f4a9ab32b912e984bd002efd81200
Date: Thu, 11 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757557793
