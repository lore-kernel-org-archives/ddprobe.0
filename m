Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4072F1D7E41
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744963794; cv=none; b=WtBcX75slR8qq5qSPLJdD7lMcRsd1QtdtOeiTWYVR25bGpf2l+LRQydwxbjy5QxQE3vqIboOStbJkLhWRVN8xHpCA5WXjNLZ2rkTDnwsbbksnnQDeal6mx7Aq9MMEL1fDGzJmj9tbzgi88cMXWm41oW/oRnczEeTbC5COpCZX24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744963794; c=relaxed/simple;
	bh=GA6mJpD1WpkqUTOEicl9STEnJy6gk5ebP1pEb+urrNM=;
	h=To:Subject:From:Message-Id:Date; b=ZNBRac3IINqMXDljcFIIxz2H+eqUzHN+UIqRxQtE0uP3cqhSgEa6dQQu4NXSyfPQdxs9dodd/CS6/KaFbbOXs4O1OfxeVMI/0GpEMfgiZ9lhyydh74qiqLZpGS4Ywk5vf58PNe3UGDE6IEzuE31fZLgILZnkQc11XLlLlOTVyKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LU3M/qOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LU3M/qOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B198FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744963793;
	bh=GA6mJpD1WpkqUTOEicl9STEnJy6gk5ebP1pEb+urrNM=;
	h=To:Subject:From:Date:From;
	b=LU3M/qOekT17KUPBAfqyRDoUHMjeB4fEJ5Rllu/ru4ptLY6/YwxkDhPJARbfzadfC
	 ANrkoq6G80l8zhBbSLiVqOg5ODSZ9f9g9YwChgRov5c9NZ/bJcXeQV43NTqmd0WSYt
	 vAsbN3qKnBR2zI8ximqaMcrLGYFCDrdzSyDb4FIPgQkASsNP4CamdnHHKe7KzsWWdy
	 9n6VDoC46HZ4sO6SgnA05TkYdold66WrUkffiTKX5+eBn/G8sQ7+pv6zwQkk28lBE4
	 JHfYyRqlEnqIxpHxp/BMt7+RH1xtrcr1bjS8KalxdEKeoRy4pnzf1pcPmttbcf9wBr
	 syxTixMVp3HMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99850C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496379361.7980.361724514704114001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a1e4c5ba6e5cac7f05909fc0e9eadf0e7587ed2a1e08c3d0ad1b881f94b91f
Date: Fri, 18 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744963793
