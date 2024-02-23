Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C9F81ACB
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708698497; cv=none; b=gAJm2KvwET+f2Fs/yugSY9n+mcPyjLHwjJHmqXP+dP5+qz/Eo/OBPukapNFyQcFB2MW7WFL0vGDRFhYLsesWuDkj2h23yPXb97TpmJbmUGCFMhsM2TQR9a2rDNhsz2pxvMmD43cmyrCKNQnIm46vuQN9UTRHB4OXTiBoOpi+dV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708698497; c=relaxed/simple;
	bh=gKuBbwtlHshG8jColdXph2l5Zu6ijaTY8bkYzGwDH1E=;
	h=To:Subject:From:Message-Id:Date; b=eIn80VLOrst7ei1QaUSHomoyAIQEH3mAdg3D0OTl4xL/2/cQpJuiy5VY9CbToe6iHRrGU09dt+zxQTt/P8IiTHwDfhcmggzQVxPJqUrpmzXnD7HTZJuzF61lw/Ax6kZ7WBlVIc1EwvhUHNMxBqJ0x/LO16TEl2Us/jJqyaVXBcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfF96bmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfF96bmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A959C433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708698496;
	bh=gKuBbwtlHshG8jColdXph2l5Zu6ijaTY8bkYzGwDH1E=;
	h=To:Subject:From:Date:From;
	b=KfF96bmz0tYFILwhXTeCau51mWzcB9eHzJTGt3363QekZ3qw2L66T4QxcCa97XENh
	 1LPNpQobO2uQsmFcpqStJaTl36oIQ2C4lgCB1kJRUm52vy6YFbViqS3XHnSBt/51P1
	 hVZQ+N8oI7+d6ODA6ZrVNNfrQLqrDYiU52FjFysuH0qKjTwJLT9W4d+EhTHMvEbw9Q
	 FV4i3WCudLsVnKeHJIp7hrRxdana4scWHPdWXwgkFleQpEUnOQOQVKUqL9XdVJZeT9
	 d/zxzLVTZ51CkhkP/PZ+1pjijD3jab+OIc/IdEB3fYEUZbwglHx5DQiFIkNKuWCvyQ
	 /yyKsQ9cnjIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6349CC54798
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170869849639.23819.15600341722717469853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf1a3c82976aa6e6413afe000f954ef3d9e29489ae1d87f79d6cbb68c85f54e
Date: Fri, 23 Feb 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708698496
