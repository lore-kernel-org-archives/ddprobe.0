Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE5628EC
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713073163; cv=none; b=VtBxG5qXuzlPiM4PYX1Z8OgNTspNDVgo6i4Xb39zqGJ7UlrQLVoLEcfiFDf/+Ygd8mnznLi6LyDzCn5nAhZEutMaYO0J/ndYgTmFyQd9JDr/8bbgj6WkA3gA7XkSirJ3sYDq3CB+cN+GV7qjjIXfTS4Ib2NUEZSK0F5IGtl4Mzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713073163; c=relaxed/simple;
	bh=DPWQ4Qh3SoXrqFSEQVCTC4obP3xljbgTNhlExQHY1qQ=;
	h=To:Subject:From:Message-Id:Date; b=oPyjziB/MBnzurm8LNQoiuMtv+8ocH3QMtxY+CYpOtJiIhAhdL8KzkKzr/0dIr3VWlc8CfhUN+B7Khdqguke8erlcuW/iqV8879OkMyxL9Z+P4xE9LTNG5oRLHhPAeCYIldgw0z+n7mEg9jX0JXTfQ6Nr83330ZGnNerfxWL5vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNIEUiGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNIEUiGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAFFC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713073162;
	bh=DPWQ4Qh3SoXrqFSEQVCTC4obP3xljbgTNhlExQHY1qQ=;
	h=To:Subject:From:Date:From;
	b=NNIEUiGIFV6MdDzg+yUYVX20AFAy5onecqvBExf0deNZHA0lBR4Y8chHu+PLdq21G
	 Px6Y1jRcManTvNSC6jHPDNu1gdP2bk+JqixYBvbBuNzrbfKAMyj6JNV79SwKTrxheU
	 CRQ8jxLWb7IFNsqiUrKcFY+6JO2Q2WX91fBp6FROyoxxRVge1n0KJTTxEL4w+ez6uP
	 ttFUQtpi00EO0sxoFK9fylme9HR1TJUsNANORJMw8EVMJAiaFZnqPAhydKrNoDDHsV
	 eKXwIkjTAq6LsFwweeXgzY/4wkOTfeZsMs1QZXekfiaMJpS5ARS3X+vJ3IQxwOXFu4
	 v5PDb/FxJwoVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D81C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307316278.18960.11875483187737142287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6194dcd643f2d6459e27ae38fc68e33640e9ae42360250c56584445b51c88851
Date: Sun, 14 Apr 2024 05:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713073162
