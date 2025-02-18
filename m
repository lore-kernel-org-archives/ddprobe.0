Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A2C157E6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739852333; cv=none; b=e1v1+05SsM82rFI9/f2c0lrkN8XI+73ok6uuihIVUnI3WVbvDBeQX7VUti36z1xW7Ij9CxMu68RcDHaNq3YnMHlI824qWc6D30We9vJ58f3SVK5PHnMtai24IjW/XE4QZCr1BN3kUYe/GE7TDq3W3RiQRTvC9BwvObzOK3YiYQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739852333; c=relaxed/simple;
	bh=bRK88l67JPYGsHKfLbH8n/e2XleykR12IMWNNa6eUBA=;
	h=To:Subject:From:Message-Id:Date; b=Y27qQZCi8/BnYfkq3LbAviHAyBps+NYnUIH6SfqIi4NSZ2kHXr8m4lQQpIT0wnnzYydmK7QZNt4INH8lOYMysfOtWxbnuIXj00tDw29QyF0tAD6bob0+e8pNg5odZfu9kaayrsPQfMke6BxewwLYdWu2E0LdVH28VMF2pC4fKI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEg0DImx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEg0DImx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF27C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739852333;
	bh=bRK88l67JPYGsHKfLbH8n/e2XleykR12IMWNNa6eUBA=;
	h=To:Subject:From:Date:From;
	b=IEg0DImxJTZL0iLByttXfOZ/qbTpdg31x7F4gXqY5gD4SZ5mTqumtgzJT/vzrgqav
	 laqtur4oLUD1kalgqs74lifdOzPEB/rVa61a6/gDJnwIz1p5IxmUElQQNQhRmKX/LO
	 WCPTNy/mn2j7gmowFokjS9B/39W+xPDenlhQ/gMYbMe/ft5aIvsGDV99PG04ExS76Z
	 sVvzL64j/gSB/1uzn6twwX+x3CA/dGytsKKR+4rCn+6VUJBBmf9Btw+Y0dIYjqQHJH
	 XeVW9FgvvMDkvUe7R7QlRwI2KYD+vCf6mbb2qhE2IHDtQfpoeC2u+Nh5sSg7eVK83r
	 JzCKTiM7PhbJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0CC02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 04:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173985233361.13485.12317071824504709996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37105ab1f11a092c82922848763991df78a1dfe902fec672321108ed9c72c9d4
Date: Tue, 18 Feb 2025 04:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739852333
