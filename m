Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF6FDDDC
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736391954; cv=none; b=W8/pdaYVCB0lecZtVIo47avma+Ijn20k605h5kIKMvccLrRNopECay3rXAYk61iiJMk30q4WfobS6WvvlNYxC4l2d4XTMYPi0MLlmaTMJ2rBL9TcBlQEG4CP0xWcDmhYaSi7fW1annGnXcmJNgwRuLLjoqInT7ZLxXCpMBGYnZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736391954; c=relaxed/simple;
	bh=3kd2oqYAcOE+CtOJWVqvYZ3Tr7mwTEqcjp/AFVtx2OU=;
	h=To:Subject:From:Message-Id:Date; b=BEm+bdgO6ONRuYfEVzmAOMPTWGCbO0PpoXEGEDil/55xqvAPo6AEpRF3vG4QMi39lm5Vuo3NmwJsy92SNU51CN/s2l77uRbU4BRYtfhZf63LZggIAzNoVEpeYLiBckW91Tea2KmIv7F33Q/x+hkwVgC+tQFDlW9OFduaHlu1Du8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzb5OWXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzb5OWXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3CCC4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736391953;
	bh=3kd2oqYAcOE+CtOJWVqvYZ3Tr7mwTEqcjp/AFVtx2OU=;
	h=To:Subject:From:Date:From;
	b=lzb5OWXbrCKA0OQM5q71ZgZxcxdeHS/K0xT1S2sUsV16gFU9H3XsPz803HM3Rsyab
	 rygo0IpA6GJy8ueFWU2MV3xgiyFsRup/40vooMc/t1qTNsnoYP+uJusf5sachzNn4K
	 otXQ7izZitZrpvb/rFH6mc1p+APpcsw4BaezE7ZoSPzFEAcOwnN8P8CcQO3fH7cw/D
	 n9Zi1a5b3CQ0aoeWj01l4B4lWIW+qwyhN2EhEGQKFhJLsKjPuXgUPMB4v4XsZK8FaN
	 CIPnrSBYK6DHB4XnpHCzw9OsbTOVwVgc7pk94X53HWGkUP4JDmnjFf/wkM4Fo9ToFU
	 v6Mp7SmxtwYWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938AFE77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639195359.7370.9003042340743216629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07361ed02407e458ed464b4f9383d101d4cff6fb8804b51bb27273b7f8022d4
Date: Thu, 09 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736391953
