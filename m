Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6B01A83FF
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744460994; cv=none; b=kVsR1TtNot6M32fTIVxfX3FfjbKtXGjoFYAFA96bdYu/eduIG4QaFFxr/hFkGvskFxybOgKibWzyzFiUG1mLRMqvWwqAs7swStqlWjmDLnySG5bu2J+H0QLHjO15+nkSqCjdkm0bm2dCwSqCTgRwRr0ris2FS53W7pCaQ3zaEzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744460994; c=relaxed/simple;
	bh=2Od/U23UUobhr8xkkCY2nbq7Aqc7kPyNGNIb+7Pi1Vc=;
	h=To:Subject:From:Message-Id:Date; b=l7t8l2IUyGFWEBv8qVFCx+x86afn7RNgoyuY/yJUxbBhHOZeP96X8Z91cF3kVkgUPEoxkoeiZ8ByZr3iNMWk1uqAJXUN0GnjMntIb/keHMgmyIZYgp+RyAKleVCnr/21+Oq4AG8oabKvZMoIYld3plVdJstqrYPyC998m2Q3Mf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qdknr/8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qdknr/8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE24C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744460993;
	bh=2Od/U23UUobhr8xkkCY2nbq7Aqc7kPyNGNIb+7Pi1Vc=;
	h=To:Subject:From:Date:From;
	b=qdknr/8yjeGGOdSSsQWDHoxDRLBz2H3DHQrbEDuT5ze4z5PEh0AlCnG5H9VqZXfY0
	 kyIAtn3KEs8x9lgurZUFlv9CjKUduRiAl7QahHpArFga+ramVc+IpSJ5ZPGOtLaCtW
	 OehbdXdEjHfmCunV6KQSkob0Goa/V9R00hBKPoCZFRTqRvg0NoqgO2xyQ5I419adHb
	 34/wRI3GnC5cYcqT+jQAQNfgTmqb65N6bQukig8FS50xsmLoNke6ShkwhfgmzBT7RL
	 OY5WPFvDgC1sKOvjkXbvZMtxXI6ZcdRFZoCMlJC/CNtw0DcGy3WGLPNidIo7omO/08
	 AI8klyrfFsJWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA6EC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446099361.28703.16326254703426111156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87430ea2c30e78e3453beee21ae918e1440c75503b50cbd3714b5aac935241b9
Date: Sat, 12 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744460993
