Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E2F1754B
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716847463; cv=none; b=GnsnAXcKApDIm866ylef5cszsiDJbvL3fw+aQRct+RJMKtCrOnNIoS471GDUO3I87GY3SPwGPWQ1PmIsaH+CC0ifHC/+gngrv0kAVNWEMK9PjgXWKokq+Mcq3WKyL02sItTq/7y8mFTuCYuGUNgI+eg1IZyWokGZr2PNGy9Ll7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716847463; c=relaxed/simple;
	bh=t0ttyZheTRmibkjTWtuwVSWLJGIL9eslDGxZtT7jKQQ=;
	h=To:Subject:From:Message-Id:Date; b=V2+fQFUZPCTaH3dGVCPq8W579iBMJQTTnBsuLsClIgIeB3h47aMGClDKVY5ebBYtopyvKQq6hvf9PaMzXFwhYUUR50Cmv0vrsRzqS+XGqiexqKXnHO8CTTMbee6PSDaB0xM/fYfyi9z7e66t28tH6Eopsi0jaCohYBtBClMQhfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qzi8msx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qzi8msx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5AEAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716847462;
	bh=t0ttyZheTRmibkjTWtuwVSWLJGIL9eslDGxZtT7jKQQ=;
	h=To:Subject:From:Date:From;
	b=Qzi8msx1LNV8M+TxDjEwC0GO+Nv5QAX/bR8GGy5JLtgQmMHz0/yt9EynAU3MVRcv0
	 nbYWCvfawc+Ec45e8TjxCL8KsAJzz6p68jl7xItutziND0KkHG5TmVsuMyMpio5NrU
	 41TcOcWFBBAXrE2XcVWOg+5SQ7lmoRmRljydY5eiagdPBkM48b/rGwmPwMGxCB9Fi0
	 N1DVovtMzvbp8yPPVSfYcmE2Y7iXK+hdW/tqExr+ZEhzOrTCfEOEB/QFKoTpU7aIJ3
	 vkZduAzw2AMRFTEifRd2CXl9p0wnv9ZApVvH3JbmUATuq/jTqFnRv1NHfRzUnZW9Ga
	 /Xik78+xGzRQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB457C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684746278.26176.8784538228945190996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d41ce4e7758d1185d5d475d47e09c0dccba1a5dffb40533925cf023635a349
Date: Mon, 27 May 2024 22:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716847462
