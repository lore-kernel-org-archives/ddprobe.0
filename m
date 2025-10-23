Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388162D46C0
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761250194; cv=none; b=ry+i+jIk8H9AUlF/Ovcau9qmAoPxhARp6McU4j41B6IqPoybcHxBZnEdayhtZTqr9bSgBKFanhyIxWN7sOhEi9MJ4Sh/e7a4aLprxWBRGnk9nElL8bZeGFlsWbeiGcQbkJV/6L+MzTmfXO9lzfxLpYPouL6wczhQYbs0ceY1V0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761250194; c=relaxed/simple;
	bh=JhNHMPsJXDiOcZnAlnKz9RwVZrcKv6mDMlfmJ9HThko=;
	h=To:Subject:From:Message-Id:Date; b=jh9AN3S3D8se81EWscebLzfWAvACTHPRC3cGGxwoKVbpc4hSZfRuNrEetfBiSq5nYbRvyn7/aHVP+ZK8WXNFQItL9hzxj9vqXQ4QlAZ3hQ090/s+KFj11VyqyLVAs1VpXykOUw7xEQ5osiSZI3GUidTU7BIIpNjeedOQVM69bRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PM77wHMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PM77wHMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A482EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761250193;
	bh=JhNHMPsJXDiOcZnAlnKz9RwVZrcKv6mDMlfmJ9HThko=;
	h=To:Subject:From:Date:From;
	b=PM77wHMY/XPL4ZF6fQnt5c73/B5PaffOGeCo59oW39n4vzr/6pWjODUb9A4npZ7Ds
	 X07dYISnyk4TC5XG/sOW2GFamx4l3XwLvDNu/zb4mhDY1/pjZIhSBKqRh4KaxlFkuS
	 kbjdJrgR4Zjf7N66z3VoTLYaNgYgexTXUsuBP0RhXGlK5nN3NYlE/IjoaFQV7AI+JS
	 pnB0rziwoC7m1P5zK4eMGASVk5q/NS9VGtlLegPnt/GqWFbI++TJ8tutbvm+qMQgcO
	 UwF9WRLrMMKSRV1U6MrKqQf5GVPabtCkn2rB5u3TGOpQoajAUyhfhvMcsLW7GmUgoj
	 B08ZE+cTwEVLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D45CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125019358.29849.6548301559903746609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b26ca269a93ada8595ee572ef24cd4690700cf199e5b1f0e19ebd93e3a5e40
Date: Thu, 23 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761250193
