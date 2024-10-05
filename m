Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396D37F6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728104754; cv=none; b=f7SxowHEVUNpF7P8KvtNwGQsMqeHP1NEot/Ko1ADcBtaulRspQNdLuhm15ViinDJ3++pxCbe4uQm4iEq4y8xBu7pSj9t1hsPkRi9ZY6Xm/4siqT7If0DNf4RDM7NTAnRKOstdGCcbjr3ioYM2BsPYJ30RO6PRW0dmrXpSIyvne8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728104754; c=relaxed/simple;
	bh=96pdJkyx3KyzP/ah5RSf/I6mlFlDaSAgBRQxTYfPdPM=;
	h=To:Subject:From:Message-Id:Date; b=O/jNd9Wr+n7fh89uSGsyHZ5BXs2CYKWCat9xl8aSrGmr0LxTbUz4ndItjJO9RVTkWXPwQrCdruYHN4I+wPiRbWRagQNNPS6v9/HCoMPb8IopQPuP1RqqMylnWwAtK+VLONbac3DAoedKkp43sAk9HMprEt2KzrewSokf1jDamRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKv7T2ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKv7T2ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9999C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728104753;
	bh=96pdJkyx3KyzP/ah5RSf/I6mlFlDaSAgBRQxTYfPdPM=;
	h=To:Subject:From:Date:From;
	b=sKv7T2ksmhJ8KNbbi8rXpr1CQl9VT/ewwGNhwvy9ygDZHkhIUSX40aGHoRGYpX1sc
	 ysSbu+zZmRfyn126hQvVRDf83RGh3tuTo3h+0eJx3rsSDx7Nvl5QywoQR3DkWO3QAR
	 xfzJ7nImB0zYFQHoweyHhL1knnGylSs9Z67KQ571YkaFtPR66wDkWVMxAGlkdvG89i
	 CTIxn50vMZ4GoBL/3j1+6DO+SbMvlE1xcwcXJ3o8j2qpZExO1q3E1vouS7LNXWlDde
	 IJQXCbxnLkmJMk9/mvkjSYtOUaOsvimvZBVYuJB4oQMuf6BYIAtYBs1eV4aawZbdXy
	 ZPcpRKELsHi2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2377CF8861
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810475362.12390.1925111308956181400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d91badbea551bf9909bc3ae0627b87270814f9734eb17ed975ab5284036cfc
Date: Sat, 05 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728104753
