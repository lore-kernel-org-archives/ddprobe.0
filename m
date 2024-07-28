Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B80863C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722145554; cv=none; b=QNI57X9u9mMAl10WAlcF95OWWempF03ZQ1BfWzqPa/9kPmdjTUmO8NlYJYTLQn82C70JnptEoTnn1QkkDghTBGE8L9yMHJ8win7tMENFifKyDfKPCho9PASBjDtUCHGl1ZDjamS+RmwxHap9tpNq0lfs477P7sjSE3iTSdJvqnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722145554; c=relaxed/simple;
	bh=2mAA3Ec26AIy8THkff2AUSONI4rD5zMlsbdruHOV5pM=;
	h=To:Subject:From:Message-Id:Date; b=IFAHklXrBw0nF+wl4xaNxEC0YRo4l7u5bcnem/3FMzc9Rf8yhJyyANlv8RmkOvHCcntcLIgzfv6dO+TF2aDbmVxgDzVdkHLpPXCa3ZO0GZ3VKHjgjFRQZpxuTe0nDG9i+JwJWA0vJyUleK2XxrkIrpYgytw+79stlH00YTO3knc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uwc+fVxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uwc+fVxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBD2C4AF0A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722145553;
	bh=2mAA3Ec26AIy8THkff2AUSONI4rD5zMlsbdruHOV5pM=;
	h=To:Subject:From:Date:From;
	b=Uwc+fVxLX68BwcGPvVBpJSTIVCePapdPnq+Hh9ZMt4fMSI0rhtFImEB+WXe/Iuneg
	 ygZcz+ukNDTE/SjzEqT7YARdGRSRhr+eZ0a8UO3Bnn4yYGV/tVxucDRNTNtAizrTRO
	 RS1aPYiU10wb/uSLVHbYJiOrRCQT/uO14yjQbQflWlmNAHkWVolVsJgatoMjVQqGul
	 8cP12UeWrzNfUGEaECF9VEKnUJJvDY97tFOx2UTEw2GmgR748ztKfUC7opATwRH7NY
	 422/c+jSclW6pgnOgtdqsFKiGbsy2Oid9Akj9DYibycokao/7SUkFkSihZ6tLvCSoT
	 JCIaFwkGuODJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B59C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172214555358.11244.3849324387589354559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364997cc3a556ee5e49f78ab90f38ca019f6b2d00c01f98550a5beb6a958ab8e
Date: Sun, 28 Jul 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722145553
