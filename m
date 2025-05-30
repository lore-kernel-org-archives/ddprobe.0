Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F71E188A0E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748641794; cv=none; b=UnXMGb03kTLiDVQ2MGEn4qXUo3M24StSGFdFspVy56shdbxEtG04M3qjHl0qkij2mzg1DLWxJCvZsx4mUDf0nx2mHxAxYdYt1bqS0ETiJB0MZIE6oj0CfwLSGnUWxXJkGLZef1Xpok8aJR1iqI7KC9EmqxAp9isi2Ro8SuCyVag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748641794; c=relaxed/simple;
	bh=7U9hkPpVbc67X4/ytv8gBwk0YrNBRPoCH0ryTAGwn2w=;
	h=To:Subject:From:Message-Id:Date; b=iXettFGXg15SvTfCHk4+2SEs9uXJjNq+BzHSQ/WjwShXZo33YQ9XOh1vtQnOjsITbWxZkDQc847WUc+IQV5djyho+7Ms5ohekTEgHoCPDpXOg/NuL7dkXDrIZMV2FO7M9fvtoJ5Z7pNIB1mSJXECItxVWjbbXIVprmiVOVAGQEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhe8PNrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhe8PNrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E7C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748641793;
	bh=7U9hkPpVbc67X4/ytv8gBwk0YrNBRPoCH0ryTAGwn2w=;
	h=To:Subject:From:Date:From;
	b=Jhe8PNrrn7gk5KnvUMo3KKA5OFJzeG1LGZkdRpFI5ThTlYf51uuXpBajuBOLHBdzI
	 Qjuz+s+Pcz227HlmKsbOAn7Fr2ZTsOlITtrgrQa4h9KlBn05SWvDIoT9idY2ijG0Z6
	 hb/TxxeWU0TMOQAZ5eN7Q9wMuVYuX9OnWbB8yxPu7nK1OeG0oHAdEapPzri2FzQqI/
	 iYefFpyQhMSUA9FcGTmLWA7aNlAz1lmz+6Gd4yH99DzL+Umkm17F1sry7k4hD2HDkn
	 beFRUi7UbxcPbAiit2MXAMMFcyy0uSCemTk1arWSTptHDJK6+GTJ3vYCz7Wx2agc6Y
	 icryYJ2T51hcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7DC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864179357.25420.8986371191126767038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6021e3bdb6008329deb45460b22359bafe500d0d3764d39e7a521fd0f69b595
Date: Fri, 30 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748641793
