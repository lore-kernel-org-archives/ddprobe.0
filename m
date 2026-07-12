Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CC51B4F1F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783837114; cv=none; b=qsiuS0rykjx8eY3qhdq1pexd+2o0xGbu8b+YrHdjxY5YnlrwAckfJ2sjmM9Cqgh4EpPk2Ex55XmLQ6RGD+AEgqbrIWpU8CRIUbyh1kDFwBG+laKe807JWPxDdTFECR7sZe+WYCI0Ebb0MmqEQV1kIEzxHavjlKU7i6M+mgJ3UtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783837114; c=relaxed/simple;
	bh=vPOVMwmSHY+grAM/gZ6QZe7yvH6u4FqrwPV2Ps+ib/k=;
	h=To:Subject:From:Message-Id:Date; b=CARXwcWLfg9EDCa6yJwDcFQFlcPXXegEkfrSSpV37lfFdnd4D10VC1ojNr02yOw9yUfm1RVz4LdKv6aIT2+MkpjLhX/4Xqd20YJlAP+SCaaGbg2cOO8YHe5rTaifCc6WKL6fQQH2mZRclUWRzZubrfz/mCeCkwpACoSCnxR6UQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0KxzClA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0KxzClA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4166C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783837113;
	bh=vPOVMwmSHY+grAM/gZ6QZe7yvH6u4FqrwPV2Ps+ib/k=;
	h=To:Subject:From:Date:From;
	b=I0KxzClAJvpza1ElzXr1er8i426gNNzZty61lJx13pkjkSxKT+PNuBfkq1mQXCOmj
	 sYKezkBVMXqCgMWBrkvI2DVaJysipJJ5u1nC6DPAa/kEy31D2APkInMGUK2UoB1Rcb
	 OncH7epjDrHliUd6RWkcLsClaT0Opd9wI7PGvSyX+p4OyJO4g0BgrItLgKIgYTPgxR
	 o6/FqguX2/j5zXWcpP2TLEICoLdbpJX0FqRNzgr1bgsAzi9lBT/YkPw9r6AE2Am9fT
	 FIv1xnzDOqL7kz+8s5W0gQ7d3nulrJQK8hB1AHtzMYoqRu7V4zKapqtcSv58swX9H4
	 DY+rcpWjTImng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA66C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383711368.28227.18322748633472484519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701ea5054ea262cf7cc1e2b04a5d9a7bbbead87dd9877ce1aeb87406b73fcdc2
Date: Sun, 12 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783837113
