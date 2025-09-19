Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406DC2C3261
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758315594; cv=none; b=FLKy9UNUchDkwGkNI4dS4iJU5hOEeoX+kqnTkMy+0cRUgAka7ZhMWCn5zXxj0om2yjyDGWSHlOJYDwHJ26pVUO3eR61N9mxinZKnWuxw8pJY3JugCkolvB/aPzhGGht8GAOVzTwe21eYsCjYBGKiDgvCRbK8Bci2mCIYrSrMH94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758315594; c=relaxed/simple;
	bh=OFfpNai3JwXZDNCRjnSCBNvdrSS1Jn8bifu9vco22Ic=;
	h=To:Subject:From:Message-Id:Date; b=Hfeytl7rLUCVavxXdtwHqykUXV/X95nupazPK+bUO9zK1b5pvhjpb32sdoRpVz3rRkQW+4cLQ34oo1yQ+oz4newx2ri16r5+TjfIrVuPrQsYwn1EKf4CqRx3KFIO/EFyBLnmC3IJvHJKrOgLgOuTZ1r5keKD3YtnLbVAGOzE3kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMsc6pTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMsc6pTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F38C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758315593;
	bh=OFfpNai3JwXZDNCRjnSCBNvdrSS1Jn8bifu9vco22Ic=;
	h=To:Subject:From:Date:From;
	b=XMsc6pTZ2IFjfT9us+bPX9BYsqiLg899LdapAikc4fyQ4l0lUQPYhYtgeLBuzYfK0
	 mT17iUesl8/QUyuNo6km4kH2TQ2nPdBM4wUNyEUmuwpEIpIi9mMTo/OMBU8J5yjvAi
	 FvBVe8QHZ9s2biYiM9RY6nNx5SlpM2hDndusuVDcs0HLB+LtowMuhW/odKK77MB9hD
	 mROl3w9Bpi8t/4OFHpNsN2SMaazy6j4KCZUde9SorSuIgqc9QcPtJhCjxlQa+ohFao
	 pZyZS8OAUyWSwN4qGdOZNbOQFyP5OUVMcCDL/DA+XSA0Z4RTDxVs0CfrpzPXiWlKH6
	 MHPycJNc5CeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93280CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831559359.21000.17965314445964986873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48330e37913ad6d2e2ca41e129bcf852be135c9d4ea30b94f8da126e9d09ab67
Date: Fri, 19 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758315593
