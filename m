Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448BE1EB36
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747198794; cv=none; b=gEd3zzUX0hjF3isgJVXyw4D4qqAn2YfKRIUpUYPdDzQOj7pB4f0ZFkdd4a+pmdDr0yNdkjGReFoq/yEISLjF/ioX8f5Vrj4+FRDbIrQALs7zhmmCdjbhMfxrE0QlKP8kF9M1tgU4SbhXZkhh4uiP6+hAdjch/4MibUscbvx5x4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747198794; c=relaxed/simple;
	bh=kp1pBkwSqEFue0fh72gQXUAH9l+DLJn9bdunTYzk6UU=;
	h=To:Subject:From:Message-Id:Date; b=FvwAUJr1fE8n0Vkkjt0Q4Tpjwzmi/uZ9jdzOxjQSxZDecriF7FJYoWkRIffkK/EnEtnxF7wGSBOjzEDmiiNLMemkZ3tOvMqruhbh3qYDu+kRkohUYmM3rs1Y7X/VdtDrmqUluHNS1ZIhfnShj+eq5IYjf4g6WflX+z6Gdcgqi2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqpYp0YC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqpYp0YC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A523CC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747198793;
	bh=kp1pBkwSqEFue0fh72gQXUAH9l+DLJn9bdunTYzk6UU=;
	h=To:Subject:From:Date:From;
	b=JqpYp0YCTVTrqDnQJg2cBSMC8LMGWaZl+oKbBCeX/hPlpCAJwjouT63ndt0g78DQU
	 y6/qM+qN0LrdX4v0KMllVEue0L8Jld70u92JLDdmhu40mldF5iJonvnHJuULSFMqWW
	 as8+3PYb/PFm6jhZx9i2Bj+WbZqrp7/8CRXe1n0ls5s0eTy/w4mK5/N2RXn2NEVPe5
	 fupNTG/wCKDZ2iC4fvvZ4zOhxzZkLqlnI0TIG3VLsfRl+W0LcwnbSKmHtXk2qotUlL
	 vOXMI4dJ4vw55TFV7SpOxx1fWizhzK/+h5bptQxdbGIPfvmugz7/JB5bICjib4hfqX
	 EyvMrxUR0Kpgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9358DC3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719879359.20189.14728080884547699041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ee9e23e91947609b1529db5e9a03f9897cef7616b3ad46d281c1bfa6fa2caa
Date: Wed, 14 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747198793
