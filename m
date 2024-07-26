Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232672A1B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722015954; cv=none; b=L4l/KLi+BOHY3ne/VjMivtShZaE9mOp9bwtflAF7ftLpzbLOwUxa60ixJzeIYq4aMr1XMRZU9k22mVaCQYmZ1pVGrgADTy7Z+Etw9RxnKaLBjAnESRgenkLPvIfGh2aMzXzjtplJu3cHu6c/hXAmNSQ1ckiVogRID/WejPjt0Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722015954; c=relaxed/simple;
	bh=ymqvYjYh8GnzTZsNFLmW96LskuDNrImFWOrrbyhrPy8=;
	h=To:Subject:From:Message-Id:Date; b=bHpJjacDQ4PisJGOtbIfxpzQHP9gFuFM5QdIoxy3LDsso+TOKPYIJbtnERgCJdzcaTDFl5oEr8QiNVjfxz+eV4PuB4y/YXMTgPIUfQYFi88PHbCVghqEolemXFbO5z+L2el3WGFOrAngnYBrmPYbVTQDALVueY8m8FUwj2fdrnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA/B2QC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eA/B2QC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B296CC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722015953;
	bh=ymqvYjYh8GnzTZsNFLmW96LskuDNrImFWOrrbyhrPy8=;
	h=To:Subject:From:Date:From;
	b=eA/B2QC0j5x0TDLE42X09QdM24o3fw9YR8oohLxyz4IUDpgt70O/QtcRQjAwkivhn
	 t+4ctnn2M/qq+4pKiQi1Bp3tOrTRAZcPhF+dRfwo4bt4r9Nz7LeG+zMranaZfk6Cho
	 K1ZSap7wN0yvEgelcuntsYKUZdeqy3XgbtFjk92M4JycjsUklGFXb7e4TMANmowyvU
	 8Yq/vlnNWsADpcGk491Tiv1TFUqnCGk1eP4QjezGdG7OU7NwW1cxLJBu64V1Jppbfn
	 KHwU5zdjUkeL4/osOKY6MnKo0SK0HyOt2gBGsQOtG9rnG83f4Oft3KCveFnFNbpHzs
	 Wp+LTLIHymSrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01EDC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201595364.22892.6390459331246820760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ac10a14122ec6bb25cb496552c19238283383f04ceed7a5e26597e7086125f
Date: Fri, 26 Jul 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722015953
