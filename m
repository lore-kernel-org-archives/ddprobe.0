Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13465306D5F
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757447994; cv=none; b=K4BPAmqaFlIZKKYOiQp/kchO2PviwWHrnz9M3dO4s78kFGQH5P4bJev+Ndsz/N5HnmKUquQygoeMkvgstjc5bJ1oe2iLkrTAka8eO4o3f31yPfyNfwkOUud//zdWTLa6g/bry7rxPyRxRS/RZZWSXTpJMUfhWXdFN1KvnFBtwv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757447994; c=relaxed/simple;
	bh=LPEufS3xnuCNB3s8IvIphN0HkVnY6uLCVJBZr8TlBSQ=;
	h=To:Subject:From:Message-Id:Date; b=AItZtpPXfIZDbx0PUrbXHsXFbMOKRdMNiLCtMgSpqssK8KyPN156nvtMvR96AxZeNi1yVSMWJ6XbLbnvWnK1ee6vVm3eIQyxt7cGQ+hsQiO2SPVATNMQf2UoAgoM+AZnKueVfzTOu5LSrEAR1vjRq3M9iD1cxLyK8UZt7e0kXoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YadIz1sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YadIz1sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C002C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757447993;
	bh=LPEufS3xnuCNB3s8IvIphN0HkVnY6uLCVJBZr8TlBSQ=;
	h=To:Subject:From:Date:From;
	b=YadIz1sDS30rfTggxfdw8GMMso/zQrolIeplpNqIIGO7mTu4NTA9PaNkcGO+iZXsF
	 TGQwLhmkP76YALTqj4hprA0qY0Q7D9n+rMPWYnDhYayH3m75VhWsZLX8U/Tch5MaCd
	 zwU62gmmY+QTnBkz85k1pbWcBN5ZWoitg3MwtBtoLdeTl+xYttkvEAhjx6hEV2/mxW
	 lZTILNc71YObQ/GmDuIqNMist7jHjfda0MAub5Ca269V2nDzdL72iTwKSYsj8rvzdG
	 xO25yZkl6n2dN2egd4cxwe+cKyD5uj5RYKeZL936qS7wUvstnV+r3C3PtlPTRIUtMj
	 tR0hP2AyMMsDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB08CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175744799357.17171.9522672206740072467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2b98ded0f17ee36a20eb985b66c29c69bf4ce63f36cd08fcf6b57c9e9e6a94
Date: Tue, 09 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757447993
