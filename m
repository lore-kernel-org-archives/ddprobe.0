Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3395822256F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775163334; cv=none; b=iD/HlrKLGf1v8nOqBZeSexW2bPNt7ppWDwcuY6WLAfS8OwIClWe7IG7w2k1gBnKYoQz2N4w499XjeyMtv7Uf3wtrwzwCQPqP4MnaHxzv0ykxiaWyn/975Eknt/Lf/4vPRMY/FsLJXGDwVpvhKxBI9Fx5ObS8buMeAriLaWoe7tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775163334; c=relaxed/simple;
	bh=yhki7so6QnVmOMNM9bqrLL4sEVH+Xa7hsjw48o22c8k=;
	h=To:Subject:From:Message-Id:Date; b=fJ4Sydcec7vsJPDEJUnK0ozHJJI/XdCPka3wW6keSBNZ1QtHpuTP3IUUdTFgEWYGbydppxeSTu55u5O33z1ErAXx8CrS5QtGnlBqWp3lBK5mAwuKhJz77NwKrO55oOkMmJL/wvsn1PQzmEwFZ/1U30ka3QUNote2uXoQol/dGeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZbWbhsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZbWbhsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A25C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775163333;
	bh=yhki7so6QnVmOMNM9bqrLL4sEVH+Xa7hsjw48o22c8k=;
	h=To:Subject:From:Date:From;
	b=RZbWbhsAHsMT3Wc5OoQmssjUVIlyhUgdJpxbEZD5/aw76zmPZaxkHSbDPZ0QVDvWL
	 fkJ7GhC+jcZav+HlB4MWBqigCfJiWbLR6ITCEkLEYx3mqaF+/FS+A1CwSVpt08DMoE
	 QoXfWoDrkWMyTcm4Kxq5NsY2k/h9KozEt27YzAmqkPl526tChIOYeKpD7XKO4ictAh
	 G4TCn/aeRELQUPR//CnWx7LZDRWJF4MLIYmmberh7H8KTFPsQ/G3sm2C6WmMUYj5xW
	 yt2aXh8Q+Q7+v4bbk7O7nETVZXLcHHYu6b6PHs2gY1+pQ0+pBDXJzOvo76z0Llf69M
	 FAqvs7+Kgeazw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0962D6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516333368.13294.5940080293773029686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a269c11c54753194fc8348b74e3b6f875aa352c946be84815c3d0f85b053e54c
Date: Thu, 02 Apr 2026 20:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775163333
