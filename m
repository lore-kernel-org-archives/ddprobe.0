Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF2E2E88A6
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758778794; cv=none; b=LRKhINjHCg5nxUnrrCFb92LtpgWp8LjT1+cfbXDkjvW9eOz3/3MF2zz7lVZk1rO9NG4vwKCDkiUJz9LcCtDIvH7iJmPFvsF5c4YDHeiSLfS0w5ze4pFeXRu2ASi+yEFJrMCsxmzhGbmnyWVj/hbJFd8AHmVpVxtHYcFFM6F/c+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758778794; c=relaxed/simple;
	bh=xlLjpqNhsdJBGRSbVs/1w9BRxGbu4fIzwMiyajCNkm8=;
	h=To:Subject:From:Message-Id:Date; b=DKvYF3QThouMTzFe5dSXCK3xgYJffrvVfkaAwN8pX8xh/fDSs2M0O6bZ51KAnOffTMJXIz3SasvTAKeqGJZanx+SIrz1j+G0WewoMAfp9WfpAEW2OW2eKnIobddL5oYJ8BQylebtf2kSySUgRoVQ9AL0LVSfVXFJzlhjELh3mNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUZ9NxBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUZ9NxBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A51C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758778793;
	bh=xlLjpqNhsdJBGRSbVs/1w9BRxGbu4fIzwMiyajCNkm8=;
	h=To:Subject:From:Date:From;
	b=ZUZ9NxBTUIzucUVgMaeFCXAdXC4VSPNGc1WcjfaFoqHIARzYzP5tCWgh/BEzn5joN
	 mAGFarQN27qdB9u+rP5c+X04hxBGh8hAKpOe7jjMxHKOyc0WZLqUNFyDVf/b3sqEB8
	 WwDfRXQ0IHeu2G3Teymf/QF8+6yigbR4FVt2a1MBruHATgKMhQIbvRVjTzN7rwwiLg
	 G+c9i28J+qRbY3Ltl+kxmJL0XquTDJdnf2RHyxoXoyBh7OhJfaKMnXnGIY9nInKyK6
	 GCHtVFpKbU/hDN8z8Jx4oIUnq0PTZbgvsqeOSP+01SaW0jlaueDYAX48TmtXTybTEV
	 aElv6Y6p/+S3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D0FCAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877879359.21938.3384484639729131095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf887d2d6371cefc60ee5898c95122965768565c07aafce3720ab0aa2e3b3bd
Date: Thu, 25 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758778793
