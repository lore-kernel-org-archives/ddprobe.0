Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AD12749D6
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777499254; cv=none; b=FClv9l7zOk9ki+W+4uSDgNgFJkgXOT/OKavFXR1wLwGrqQ2O1HqCLQJYoLJGFkZ86G6bposKX/NkJFFkSmIoQ1tP1DBirxfCztzN9NZ/NKWuY6JP31YVovI3eJRPzvXn9SKxAq7KQXSXdu2h2AmAlUTpOv4pyWuLbf/YqQ8wN7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777499254; c=relaxed/simple;
	bh=ac/knCYBkfkpdFRYA2G6bPPeRQkyYwGJy8E3J56Zi8I=;
	h=To:Subject:From:Message-Id:Date; b=diYhEeuwi4szzMFveWen2MS9Kx5LQfyKpVkF9Ie/paAFYEffv3GZvir13Ub87f3RE4BDkoX2VMdIm9PY/RdjqHbOFfHqdviQp42L6tZbjdpND4BSVYWlN3YLM1FmSLiITcYtfouK0TWaXKPJA9qG2I46nXeqidAmtrm8xKbJHIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKzfLnze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKzfLnze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9667C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777499253;
	bh=ac/knCYBkfkpdFRYA2G6bPPeRQkyYwGJy8E3J56Zi8I=;
	h=To:Subject:From:Date:From;
	b=GKzfLnzesUf73Wx6Hsq8NvoMYBvODpHL0Rh87nasJHSdtQ6UStHyf8sYf2Gz3xMLe
	 PRXgviYxQ0dz20g6UNAXNs2llrL/cxovLerUiwPPbSX/GXdqKfvaauN0wpX9AIa/sH
	 bAS7hjJPmjr/x8wf6tfG/Xas4kc9asaVn2l8MwMnm4/0FtuFbYXq5VoHQPV2RrpZ7Z
	 bwVpMAuD3l470uZ+H9fUmAISfW4fHLt8ML+Ik99r5TLfOm8WXKjXKOVmFBtQ+aKAZq
	 Y/jGWWUHssNApoEB9hWz0JDMj6t1M/Y/gmwKosxSRcYZ9VDqRzsnjWAzXnYMWf6nVf
	 tNVc9cLL3BDfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F35FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749925368.26428.755506626552281267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270ed2459729fe57357d586fd42829e22b83dd6eaebe88a2fff3f9a5c91c74d1
Date: Wed, 29 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777499253
