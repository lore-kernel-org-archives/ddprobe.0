Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512C678C60
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 06:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715063543; cv=none; b=Ru+WcxnmvnDXo6oNpCXkMryH9dL7TMPGOzLKzGUDK0ZBbFDHXC/4yLu4YJGrRst/xbVjzpmji7YUHpeIG/H75p/D+91AAnK05dH9O03Xk9AWNK+x5WXtjwXQd88c4iceqyjqASw5VdC3SdJ0zUAZ5ef1pa3naWCf1W8G1d6zghw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715063543; c=relaxed/simple;
	bh=oJso59MSJIDWhj4QgSTl6GOZUViB+RMwFctQ4/0ddvs=;
	h=To:Subject:From:Message-Id:Date; b=Y8nVHiY6clpZkRcblXPFe+7ODcANKM+YVN+Va7FzlLiM50sCscN5BkF1CT5ccSEbVpUV0g9ul74CDzgT79PcvxfEPuB77XCWMvUMb5krN5Q6PJjOcM8DOtrzJ9I0Xu6O+2Pym1Uk8ko4TZjqjNWSJwiG7JwfEzNU9a6Y57bWsKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMucIK3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMucIK3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AB6C4AF65
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715063542;
	bh=oJso59MSJIDWhj4QgSTl6GOZUViB+RMwFctQ4/0ddvs=;
	h=To:Subject:From:Date:From;
	b=EMucIK3E7etLrlQ+4cC1EGkf6Jx+r4FAwaBoGNEhlSBhxGPDKZyvtRNZS/79jmpon
	 hIWhYrw9hfv6rYoTi+2kIeFBPP9LIqwcmuzx3SCgT2JayDAMD2hXSpswq8/jih8K4Y
	 afbpxfltAEnfweqqkIHb1EE6t2NrV24Ej4e9PFwe2QRUPDR9Enom79ZnxRgmif9xjs
	 uEv+kIq6hUz9y7HZI6WhorFyvvYlWiLipwES/cIiZL2xv7vioK/ayc2gn2/90w8TfM
	 oaNIgtevacG2pGk32lg+Ybi6KNmArxbWZYVfGLTAcfYZKWbqIc5HWjf3e4ppBqsQf9
	 8m8fTariU6xJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE71EC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171506354276.6576.7480039492541416356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8c8e9831ea265c8602706104f9be1abca53e17360495eca9bcd47734b52ff7
Date: Tue, 07 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715063542
