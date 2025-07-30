Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F6D33993
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753864194; cv=none; b=cz+diiNbZ3vNJNIHwZOGPa3RY/zniLaCwEsNIm2kWqnXJXaQc7hFhQysDDTnhxFEBAQEHryPggsSIia8rZDXrUnUUmAT2DHzLWTcfTF1c6MA4uusy7Y5ghuYSOd6gjeefVW9x4hPb+7new1gV/UQucVDi0JPscDGuSapMsoQKgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753864194; c=relaxed/simple;
	bh=lDoPChvEnXo5zoGZCZPSNKOFlOj7Rm19jY94x4G1RtY=;
	h=To:Subject:From:Message-Id:Date; b=B6OU70JCqg/eKAJ9kY6iqvfSlssjlhTdRJs46ZW1cMDeAxkEvt4Y5z03v1O1zeUbM/YOsAyjYJkF4Tna8P4RTWsXtbVqc60sP2fV0FjUIWS523elj9S3SQxhs0MP2LCGJGbpnzY85ljot9JXm4DhKHkdVDIMq6DAsfjd2zgkunI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dao+501I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dao+501I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBDAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753864193;
	bh=lDoPChvEnXo5zoGZCZPSNKOFlOj7Rm19jY94x4G1RtY=;
	h=To:Subject:From:Date:From;
	b=dao+501IS50HxL7IPGRKVpGco2jq8ROulXwVzRlOU55xS/H5GncgrFW/IkBoS6CUH
	 Z9VnFQRHNKQwf1oC3x6xsc9XHtBcgnWWjIdWeO9FPPD0eeC53qLyqi4RT8SjOYWBiQ
	 frwQRZk/jk1YiMl4i6YwkvprAX0sWKadzv/dmFwdOf9YcXyu4TIGHQt8lULiY0bjLK
	 KBkFoMEPyi3TTMd9a6/JAistjLS5rJE1jtdiJcqMhsYyaqIAmkBaGwPpAR5C2vukoa
	 8GqPg5T+L+wkL8CanjfOH/nCqd06xLDwvBABmIpfLftAkHisY1QePZsb7miXt0pF+E
	 ujNAnPE63v1HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFEEC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386419357.8720.6775175418588140397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca4ec26360d8b16af91fef531e3d57b821acec1b3f90bca1f54455ad21112d1
Date: Wed, 30 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753864193
