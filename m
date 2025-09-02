Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427D92F83D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756841394; cv=none; b=ATAqhUmemPWz3DKCF5QnUVwZ0Rsmie354qcGKfGUtEjRaC0RbhHg+FyBxHr1nNQCBg05F9wpch+KJMRzG95q4qTZzXFVcJcr+5rXYeex5mesY2ozikig+fj8PUuArYR6UA/9Utq8D9ahBUVVMoFZmfvyojOAlwfKfAfeVboEFLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756841394; c=relaxed/simple;
	bh=Wc5oTPWybZ6BlwQv2Bhd4UGxJhRTmyH5kM7CXSFC/Xk=;
	h=To:Subject:From:Message-Id:Date; b=BYVIVrjmtswfpgY63pQ2BrSgm3AFDpjyCT63dsBWrS4evLRZU6j63zfRmL6lfj0KgoHzJWIcJoJHP/HjN5GbbbiEoIUnWGyuihjRsvuXsGmvhvDuat5FdCncf5D/Bm9SFdR2eyJwuHtTsNrn3FPE0omlL+MKP3h3dyZKA5AboHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaBnXhbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaBnXhbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ACCC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756841393;
	bh=Wc5oTPWybZ6BlwQv2Bhd4UGxJhRTmyH5kM7CXSFC/Xk=;
	h=To:Subject:From:Date:From;
	b=AaBnXhbrMpRUkYpAlgUiHGT6ehouKQM5ZYM6MrTwVdVUSVDRjshVEW+UNwp/PsCTs
	 YZ25pnygPuLBpS7nPeD3omi4wWmYep9Kr5bgctYNNDWuXGuc/ApaTKl2S/naJxnEtr
	 JJCvlz1I8onBSKhUDs35NvPT5tsWe1LQ8BO22ZftqZHpdW9Si/W2Y1HGJuZKRg0qhR
	 5i2F2kCX4EFR8DGEgsg3RCIcCapS9SJgJiKB83ukhMO2kPW5+0JA5ATN4EJNjR7948
	 gQZXl6fd6nyA8ALtJhYM53a8jjK5Pcd5s/7XjLtoC5CSCC/n7NIYNhmKDAyB0NXlFW
	 iyKm6C4LWQN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF5CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684139357.17439.14849451045706754098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139da2e1d882692475fa006acdbb7fae66913e741f6ce055db32a5e34abc2f18
Date: Tue, 02 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756841393
