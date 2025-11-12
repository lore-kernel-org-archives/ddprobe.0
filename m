Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA24014B96E
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762908593; cv=none; b=QQmGtaX+ke3/5S3vHMnUhym2DswlC25Hls0nrPbnYTWRbmylq2GHjQCobHWQt5cx3TueSwZ+g26L360vjdteATIx6mTUZwojCnRTyVXanJ7MqO2tNBTwoWNoDYhFRiH8+0k0p2BOWGihyMvBcvV9wWN2/rcdPq6PGVmZMmINvrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762908593; c=relaxed/simple;
	bh=RXTTMlDXpBiLfqpH8LExOXTNDZFD834tAd9pvvNza4U=;
	h=To:Subject:From:Message-Id:Date; b=EIw/K5Z2XVfbZOpIt3HoZ/hIzXOe794a9B2/+DSJBIFCW7dIoAZhvU9cPUaHQBRVEvr7hQPmqZ6AnlCUxDf8xbyk7opaAD1CWeiy9CG55O01gSVXvQzX6AUkYm68lMsJZ3vgNkZ9U3HWYe0aM4xcJPzOiz4rShaWaWJw5bhfHHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCftdf8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCftdf8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE4C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762908593;
	bh=RXTTMlDXpBiLfqpH8LExOXTNDZFD834tAd9pvvNza4U=;
	h=To:Subject:From:Date:From;
	b=SCftdf8dN+5HIIRgn1/yvHRRDchhEX52EJvWZpMAT2d9oGsqAVcC90S9aIW4q7vPR
	 8sRj9CJ7uwa8UA25DHDm5vyYTAyM6KGVB0HsVXVnG0uxsThPUPUAIBCoLUQJnNGkeY
	 PWD+QljmVOU6Ol6BfIwe4OAmnySFUJ3QZeQEZ8wIqyywdFriOsT0A5nhb5yVO3if3d
	 L57GQozicbVzX//DkNqAtn75YGQ9xyhwvEu2CRvJnsoWukJbBRl9kCmcJiRjYIiJdk
	 6VjTHXXuPBf64aEHTtrau/fysSRVx7W3U6R+s/IuX9KPhAIkjyN9nnS6vPy0a+T7N8
	 KQe8QC/XhPNBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99067CCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290859360.5720.10779935816042938203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d4952884ab9d551691b7a63b49e08609acae0a4e9f238fbb95fbf2cc5f049c
Date: Wed, 12 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762908593
