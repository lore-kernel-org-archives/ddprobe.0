Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8FD273DC
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726644354; cv=none; b=fNTl83sNKocPy+BMvWyVEOoZd9biOoDX1Ft+oeQrnT/293EHwYN+QtkhpvaQSqiu4Rhlmdzu2C+Gc5Gb3k7rxnh51Wa8r9W+G31pLlijfR4i741yePKpOcXip9LnZn3bwCgiIMMAekvx+zaiJW8Hzlx9WNd24oZY0Ic7I8cXGJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726644354; c=relaxed/simple;
	bh=JXfRb1J8a4PQBTx6/XzEc036QUseTv812TyWPENTjms=;
	h=To:Subject:From:Message-Id:Date; b=qPQX1RXyGf5sFnb2r7/ylpcliMq0hg/CyUNDGUJtbpbc+rKIaMRNmjs9Vu63pqOc9Vyxsllb/jVOT30Maps6AAp6Q/31NmJJ7cyHJIdKU9+7hJFD+b4cjpmzRdR5WWU9ydqHVg3sC7jJie/9ULHwwgGjr/smXPo4yTw12SeeUxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiSTegt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiSTegt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0D4C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726644353;
	bh=JXfRb1J8a4PQBTx6/XzEc036QUseTv812TyWPENTjms=;
	h=To:Subject:From:Date:From;
	b=oiSTegt9UmFbmPXXQV9FaHHbgYnv3MWki4CpQkMZb/p5drIUqsHS5uo3Rbe4xupRi
	 UIfe7XxH9wTinouu//Mq7s064niVi0KMIM+CsSHQxl5VmfQsTPEr9uL9eN8ruM+Dnf
	 6IN8wpieSwHSfCh95hOXvAVBxZnoXWMHPZNkGc6bu4ITVpeCX4huU+lmwYTayFzULK
	 sThU3JYwih82ibm2BzVtoSzZKIbHXjyiezVtpPtnUri/wYxQwTh5b/BrkP9SAltJQV
	 MesCPqWa7RCf5mgjq2CcxSJbxTVw+Agk0gWo+LuyyGx+RIfCa4ZXFbniwwK45ccgXr
	 WDg5BuPs6Rmqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99996CCD183
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664435361.9376.8616934188509387947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e229505eedebda423c8c45b28017e6cf51513a1c09f584004d320ac05df765
Date: Wed, 18 Sep 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726644353
