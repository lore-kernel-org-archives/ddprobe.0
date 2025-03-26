Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD5E1A3031
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743029394; cv=none; b=OPLSOyqhu5djNj4KqjuZ3t8ZCAlSHghODaoxqa1P7HbMG4ixSbCs3LtUu/8glQD3Ir4a+1BVg27Ww/q8Ty87nLRjZzQo9TerLWYxyAXecDpX2ER+jYuDB3GtqqUZykg325W0gcaa41y+pVJaUpLjvCMpOhySb31xjTLdwzvvh/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743029394; c=relaxed/simple;
	bh=xH18bVuJtv2ONiGelzyCzd5YLsVwG2k2qhdcucPYGZs=;
	h=To:Subject:From:Message-Id:Date; b=KUUDgOUCVMBGRE7nst2s861ugyF5aS4zkEIFa2lkKemQ/3ILnYI7lmDgDKgISTSJX3/at5eOXgrQQl7F7xc7xIAaRswws0NmAz4L5ZnJn3qpFOZuihwGFwPkdAIYj4DSQP+RLdsIiqbdUWBASmQy4iF9RtiuSRR9ktKiJ18lM6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QsGjpOGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsGjpOGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98A4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743029393;
	bh=xH18bVuJtv2ONiGelzyCzd5YLsVwG2k2qhdcucPYGZs=;
	h=To:Subject:From:Date:From;
	b=QsGjpOGZ756vaFBS/NJuN/dDtGuTXzGe91Z1rIw+IvHt2AfyJIeDchUI+nMXdtFTd
	 2965c8vLuvnBoiFZpqChZE12MBwQS48tN38nU2Rmh06xy5MZoBeZRXnWVOMj81hQ77
	 i1/HowkGEDgPIvAFlj0jW5j9ruPtXkcN6j8O6PrAR/Z+tRgNspMMRM13CHQYS9UOl2
	 nSEYr3c7ZbyjzP/r/w0k8yRKpNUc/Ig8Ugd4cjMObULJRvkbLzb6Kr5tbAd/X0Jipg
	 EL8f3jjO+AZHnjtWwtmEQWEJHJcVYzxBO9ePsPbfldAXavLW5S9R0+lnkDtAhjkxvv
	 ihbpbtd9Ho0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C4FC3600C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302939366.10031.13288634257763116161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d955d37949ad762d79fbdef9464000db6610087f3497de01df7ee730aae230ca
Date: Wed, 26 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743029393
