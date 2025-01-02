Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2194DA55
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735784154; cv=none; b=fseSHwwZGMe8UI/1uz2seCo7xm/Cgp/0ZOzNGq6pbLoZWYwp3KjenxfXtG6JwTb5TCLwWV4IIQC1+DwsQNDiHf1tgUWP3KJHklMuW4YNdvxiNF4UaBouaaW3uOTmWcTojvsODrfwFtYg9I5jfpbwyzj7wgkHnfd0UnRrhOoZZ2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735784154; c=relaxed/simple;
	bh=Qplh9WdfgH65Ii8jLHHfoCdu8PFd5dcG36CG9iYxRiM=;
	h=To:Subject:From:Message-Id:Date; b=CfqQogU7ED/IoT3qgIL5svrmgQ94vnUCnucI89xLSHgdRU62wZTjUqjtEgYnpOsFr3tVRTPjbplrXcoGgPKuzAGWpGQeoL/0Y7cEZTAVU0cEvKup/EOD6VcTiSIb1E/UNrT6C5Ba7Xuku2aQQkqJwioC/0Fn+4rCVUNSHuobBsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUjl25R9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUjl25R9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB714C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735784153;
	bh=Qplh9WdfgH65Ii8jLHHfoCdu8PFd5dcG36CG9iYxRiM=;
	h=To:Subject:From:Date:From;
	b=GUjl25R9jpS+ojwHCOu46bdws5sQZTfwX2ueSxqjwcIVoyC3Ue1AWVdS/MoD67Nkp
	 g9qyQH0UQ8JvDKUURb+V2ykCmGlzxA9iTJeLhM4Toqo2fCjaee6CjVjJQk2bf4KrxJ
	 w+xUda9MN5GYYgFBmPbyPwz7io1d2E/optAyX4Qd+ggDpjN1pLH/fFs/fxtU/61UZk
	 +lZOObPdYWVDGU7wBh+CuLD01SLe7d1BmL8TS1a/FyzMs754TiWuMapE+8NgV2p59V
	 gccWLR8n4JpUMlTqxjG1pJ8mYIpK9lYIT2KCna3fAZDuQuLvFHBSyFsP2lS5df9ieT
	 1xBf32FqwIRYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982DFE7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578415361.21068.17326805752918894417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb28c558ed38f3c39f015469fec59c2db76db373766e0dadd2541ae9191fe7a
Date: Thu, 02 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735784153
