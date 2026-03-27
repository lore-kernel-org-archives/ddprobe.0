Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7466927144B
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774573494; cv=none; b=RvrP2cOqWrKu87ULnRCut7u70V9ayxkoKNxOQWT59VX9BZWCoJ5MQgfTVfqfsSSbJlFvmoHecBcH6onGbgtydTNxd3YK3d5FZ7QBqxZlJS1vX7TnXfcHr1KTImeMKrXpMQ/cjaBwmXsW8o3kkGzKRdAMSUoxtH+nLZRfeJXdz58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774573494; c=relaxed/simple;
	bh=//WFMNeGSghU9IiuHnJVmi305IHhMq/CyQH8DgjhCeg=;
	h=To:Subject:From:Message-Id:Date; b=W7o5upxX5PRW3Zsq0C8uoIIssQb8V1lfU8QBsmjrlQeKc/rPHO2i9aYj2MyKmi+GBKHrp/b3FE5hk4a57/KScRqJ8HmScVpi3Q4886q10ZG/4y4k0B+CGKxRXkplvWLubCwxzGVvpKadB/W6QUYVKUDwVkNW6e0J2ZqBoHyEaJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/qkN9at; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/qkN9at"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774573493;
	bh=//WFMNeGSghU9IiuHnJVmi305IHhMq/CyQH8DgjhCeg=;
	h=To:Subject:From:Date:From;
	b=A/qkN9atWVhzlXKSmFCbMKEfW4ggbvQdfPFGDArBmTaeUJBBWHR6se7wZD3dc2jzQ
	 6QpbAwtJGQfoJSPgrQU1oW1VzUJCEtskqnWtPcFQeuHBa0ly0MCzl4tWJJE33f/gAk
	 Rc+Z/4N68jLJYU5TP/KiBuRweDSMzD/hBPIoh2TbcEvi+wovfXJVjYufgdd7fKT7Jj
	 o+2MeF8/zBh2nGB2l7n/6f9MRBABvB/MuQm6eT2mt7kGlViXLTnygzr7q8VLE3EpnC
	 GmkN3E/ukM8Ulkcek1URN6nejG071HL8vnKKmRfYPLPezKs9c60f7UvSJmDjLYhHz5
	 9XS3wx4klUS/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA510AB836
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457349358.21884.15755366921471517871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56163e462f7f22286507e389634720c6e802e4bf3bca948504a15cbf6dd7c766
Date: Fri, 27 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774573493
