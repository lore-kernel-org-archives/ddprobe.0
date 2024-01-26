Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9938423751
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706308696; cv=none; b=LaOWpzb2+uq4x8Y7kZtMEfQT2m6B429ysN09LcjbtEuQbODKmImVIhcu4+qs7MsV/TebhDSa3Hv9eQ/3a8+MWuRugvbbVPaNJwLvisX1BsFS/RPum22ulGuagkPBbAe+fJKfwbiaLgHn13PB0ytcLn0ZWSQuH7SITWSj0oTP+GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706308696; c=relaxed/simple;
	bh=dEN2LwL8wM+0Bob3065cdm2gOVZGWjMIRWyRGVre24Y=;
	h=To:Subject:From:Message-Id:Date; b=GvHufH3MV1zO6MAocLaytmqV67EzF8Rv4OBC/odVXC4sEgK54fwpj6KmRy7QwEyuWdiwb5K4aOTCTEDf1Ye17yiFU7O4JbijN04BhUgV7PIMy/wSvmUMUeLX/0HGOFuIKlpsEB0J5YczsM7hKCb+BYJQJboXvpQO7Fqc7Q2any0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYduaRNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYduaRNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CACC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706308696;
	bh=dEN2LwL8wM+0Bob3065cdm2gOVZGWjMIRWyRGVre24Y=;
	h=To:Subject:From:Date:From;
	b=lYduaRNimqQnknDbqS3LbVo5jlMj3vogZlARYIlu+OTalFxXicJxp/3s7+CgdROd3
	 CzolTtZ+QnsKLw3Rp0iLJ9w2ezgVNG9PEPWnoNh7bl/vF0tNL5zrrOSISfsBnPrzA6
	 DatQUVFtIQIhkmDmnTiyTB/SgAmyGnymN+RdzHaJT2/sweUdncxpMdaq6eM39jWWCv
	 rJBN4HIXPVBMhaAcxS1a4KuaXcmjC7QN5TM5TlDCpZBugMmsyHtJHtBSkxJsRAu5jm
	 0tCJzugBPEA5H7uEDD8w6wbgCw+hIVXcW+hJj8rz6P5LakLB4RoFX9ben033L+KNMV
	 7Rh8O0Xw8Jzfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A460C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170630869636.1195.14535133021890911175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e22c1380f2bd4a04cbb5f03ece71e6b8f8301b79fc9d458866eae25cf4241d6
Date: Fri, 26 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706308696
