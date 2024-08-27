Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4324D1CC163
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724778354; cv=none; b=YsUphEiOyWdJ4j5e3FdubBQyX3YJDrXod6U67qvBbAk1McLoRsfg3rVOagvDgy7cPT1fw3x5lIDG0kY1Ypo1li5QpysROR1FkfHwXTqjiKllaOQqE3mfzkGQZLCR2Thy1wud5hTtrfzYS2ypphT3jsIKhU9iOvsszGxWW9SRGgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724778354; c=relaxed/simple;
	bh=liC+UfI6ksUm2Bq80tBypUuFV7w9PVO/2uVsU849BqU=;
	h=To:Subject:From:Message-Id:Date; b=l14h4Lr3isGmMpxIwuo1Dwn/1fDduy5saSFG2bbBJwE3mJxJwzpuMO9OPBS4+KCKCf1Xu0GS8H3HLX8VNgvUwcKNfT7SvuFSRIfPUyq3urFxhWZtn6EOe5HBxKHTbUwbRD7s8ktS3E2+7gsYgNFJ7jDRH4hokvZqNeRb05MoSpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFfVC08f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFfVC08f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC67C8B7D5
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724778353;
	bh=liC+UfI6ksUm2Bq80tBypUuFV7w9PVO/2uVsU849BqU=;
	h=To:Subject:From:Date:From;
	b=rFfVC08fD5piwPLaceVqWrkTTY3X3A0BmHfKp65i6lT1gRUa1jp3W5YHzP23DTHtQ
	 duNv8zCxJKc7zJ1zKej47F80icAGxT2MPY0hm1oTZvBhWiiHZG5kC7sL2rdarsFrJy
	 rlkdd8lLhKtK56mmbqRN2d/voYehTGE7LKAwYsVh3Loccz968pj/ZLVgit3oV/fTv6
	 sl+VGaV0PiJIK3S/Zxana8IvXgiDOVLBqDgypgydki5psgQLwDFailr0ATxb61zHoR
	 v1n0cnSMjI7k2tRGV2HThIGgp3hmaUIS5jxp75KGwxaheh8sQZ2HQhhsQ3sLdicTbg
	 2I8g79ZLpnhJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A59C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477835363.31683.11687951063429700655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83769e1fd3f9425883a1dc4ffa903b5fc8bab055ec3e88a4a01207647abfbe2
Date: Tue, 27 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724778353
