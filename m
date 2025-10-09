Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4AE34BA3F
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999194; cv=none; b=PI8SJFnOSz3cYRb5R4xNtaYUu6v6IrYJcwOyoN0ngdaFS0H0DsOBvPLzljgXrSJTDEz5mTlRJHQ9TtXcgVMNoFoutLFT50+ZRPCo5xUBq9dlQxDz12qh6Go7wAa50M3OG1EsT60+nz79ctWcn/X3GUBct2oxWM4b/M4KAE7rq44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999194; c=relaxed/simple;
	bh=R7U5XhLlusNzZ3Qp8oM9YR30JamM2zli5guIJPFCqj0=;
	h=To:Subject:From:Message-Id:Date; b=gJh33mGCD7g3uyuyLgbboj8mjpXnyT5mpOvf/UHTImfclADYlgm/EwLoUUD4zWayTkABRTEmYIoloN4VxW67LAbUvxJZftPs8M5KJJCEc7S91LVUeySVGthy5gpLc4iXPi1t+n2KQ2FPpG05Y5IjQJfwNZ0x5wFyADh4H92Oyfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEBfozH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEBfozH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5633C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759999193;
	bh=R7U5XhLlusNzZ3Qp8oM9YR30JamM2zli5guIJPFCqj0=;
	h=To:Subject:From:Date:From;
	b=SEBfozH8hIwScYbPmt0xv7puAKz/E8Drnuy3pVFhMg8LSNToPgwp4r/kAwlQXdHBE
	 Eq5zzAPIkl7vWSCRrjQGUfGT/XXzlAuoTNraC0eUP0J/ysUI/odSXrdl8MDMvH2lbs
	 2QbYY4b6w+EuspZCbmSQghhuMLwUKbjPxmdJ3ixBr6VaQJMkqsYuh+Ob2esapCZUKO
	 goOZ1s6GnAdWxP48aJd9yZe8r8Ucd/ecbaRinDw6Tb8K60LRPIqZbhPBTzjx4FjDkj
	 ySdPomWTidpdbtirSOV3MKxDekulmlmjxbJdDZr/OsB+9LH6hhM+mwmV3Q5OkesUny
	 oSnjiiV/zH5MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A55CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999919358.28847.11633838618563695370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa688b117dadf0f36342d7da3cca9615d38c2ce49f148be702a0b6c6c7a7b1e
Date: Thu, 09 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759999193
