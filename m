Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F8F1DDCE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720374383; cv=none; b=Jc85rjzTk80af94nx7nuLJSnnFIk2hpCgTb16f7DLbq/LIQyEbJV62u6wKJvBFlgJ93XritDK/uEFifbRPcpsVgV77wSQiYZndcmtTnFuD7a1juphAxJ/h7RPStlhrJXkw30tGtE6bfiD4IUTDRgQKimgemoxJqNUuKejwL6x3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720374383; c=relaxed/simple;
	bh=JbWWKrS4r/74Rw8a/iiC9BOtzNa0AydvGtIOFunWuCo=;
	h=To:Subject:From:Message-Id:Date; b=sDua+13ORSKyo0DG6BO9uKqYzhzNi34xJFurpRgqqCRBKZprJwxS+flW+vklhLfTDSMMxtZ66VFuusYdnubNqRbqA+fXZ0wO0TW9RRVuVEsCVHr7TTgc9kUxW5wdh+35mxSIGlPFy1bXJVOVYfnDej7b4s1x6MnlXr8E0fZ7Tmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCTcVN+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCTcVN+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9448C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720374382;
	bh=JbWWKrS4r/74Rw8a/iiC9BOtzNa0AydvGtIOFunWuCo=;
	h=To:Subject:From:Date:From;
	b=KCTcVN+dX9iQ4hIlvoQXwmpYePsyJs/J/472waQH1B/gtVFAfvW6t+oEpmbW3Hh2e
	 8HYZsLXezinGDVnwAuRYJCU+0aGPjZuxSi2N5/iijC8KBThR4WJuUTycBcU5+/4uu6
	 i1bKGiDbBpHralzRuUL0cB17llKo/WfltSwWUsypQDESjbQJmRTElln883maGJQfpe
	 +hurOzZ60/mqCIEn6s1iEbecD+wAE+cV1eBV4v9gfatfknFTzfLxc35VXy4Ob0AZJX
	 visVdHgndbg+4bg53qFsFOg52nUWrbeWj0VEinO8OsK+aWCDGNeXaWQsxCIoQml7ES
	 L9Ry5gPyzMKxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A26C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 17:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037438276.13468.10483352185514437978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca1ca92bb1477774395ccdf54745c5f1c7509f2838332465f95730b58ba164a
Date: Sun, 07 Jul 2024 17:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720374382
