Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600391A6828
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788117034; cv=none; b=BJkUnNpNOIiwwWr9xkhCO1/TU3T+NFTn0gOlJQIi4S9lItbwwZDd4hFtoGM/Q4RvD5QXhS5NiH8Jikyp75mEKTFf21R85TVSxH+1AE4JCnYFLP2MoWb3kgU/jqAVDo/mOKQFReDEyib1BO82xkzd4Vtzc5C3wiivviC7Eyc43do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788117034; c=relaxed/simple;
	bh=4otyQO3wknYRWn5gR+JXZtE/FwLSk6ji6g05JwhmNsM=;
	h=To:Subject:From:Message-Id:Date; b=q1TW+YXrBFvwSP/MlShtyJwCSGseUh8SLeN8NlqGpRsXH9M7yqoZS90ihFnRFUiLqWLAaMGkdEmOmZPaWDbJLejkrZtCo5IukemPRokYsYuz9+8kjBBuwjarH4f91UBiT+iOsS/j26Mi/2gFPlDfP5BzaIAiVkyX3dxfdWlZ/+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIwXoTTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIwXoTTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788117033;
	bh=4otyQO3wknYRWn5gR+JXZtE/FwLSk6ji6g05JwhmNsM=;
	h=To:Subject:From:Date:From;
	b=rIwXoTTCVShST0W3mIBJ5vfpKRva+myWM4TgEuQAtSfxbjyegOOABZqp4/uwkLIsW
	 gPn/mxuBPLPw8OPNEFnCroYvGxBDbcAz5XF4L7adqGU7VKJq5X/bEt/JitPpRImtEG
	 yWO/pTagTvFffZrtwsct6N1GU/n0Zct9FG6FzCMudncuCF9S3EHtsaiAezCsx+nb2V
	 meaUTETFU6TJe/Kyp0JdH45DJHNtYM1iJkOEYI8Y8M8G8dV78phFG6tRZhHXBeWAdD
	 jf31V3eiv3cJQbbFVjLOede1bawKVjo/8vdsLJi2APHu4FRgthkGS+9OitpypkrKNT
	 xEBBGmRfcDplQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F6FC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811703368.9401.10469376458925885224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439990218ff6b12ca2bea6090ec4bfd31696bd40408f2fbea3f03f698e2fa030
Date: Sun, 30 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788117033
