Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAEC20311
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742987394; cv=none; b=aMNLnATWSsiRcn+DXNqIhEhkXflv/5hCU6jRs8dnYo+7cKJEKI2Xx03HaA53pc91knV08bb/DMp0/yjRymzFb899IouMhIjJJ5spwD/0thRsGcKbT0IFY5JAyBzHY4Xl0OZ1VE4BL6ruE9zNwH4Zov1MOFICQ6d5Bm/eza9v1T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742987394; c=relaxed/simple;
	bh=tQSFr5+ZaloBQFMic4ElR2tGIr947HQmHXK0LS3xc1E=;
	h=To:Subject:From:Message-Id:Date; b=HcMuJOLXo71JWxxt800+q454MfNI0s+a/IRqRMkUA2KjDZdNRImwcg+i9YcX5Y7UXvP+weDuprmt+v5QG0Q0kHIQlfaxXR4fOIYan3ql0VpHsYAHS0PsMvzUBrblAzEXRd0TboNvxEWMemNWPe17/yICWkYIdRZrjasgU6rOJTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gj0+bHqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gj0+bHqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B53C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742987393;
	bh=tQSFr5+ZaloBQFMic4ElR2tGIr947HQmHXK0LS3xc1E=;
	h=To:Subject:From:Date:From;
	b=gj0+bHqkfMpiScLTFkt4+NO9t5sJIiDiuXZnbxaC/pz/iCvtPp7k+3+2XucRs3fuc
	 NbQu6DzHSWEm/FMUP5jxlsTlCDt9hkoZlrAGeTjU+nRHB1/texXpMFe3Rxow9KAwLg
	 Mh/xdnfgZG/qqVFYmZCuNdioz7MUooCnbf0AGb0PxplBtx4pryN04O4V8DsddS2jRg
	 U7ATtVYN5sm7NcJQtUDe7F/sOkA8LB3JSkYtUPn/4DDO7yPssTyQFlfCciLCynfyTr
	 4vI1gccLnaPr3MMn30BxQKFMrnLxHkRzIeC+Ccf4+WkKuEaO8Z/XhNYST/LEiWBQpP
	 YrJENnEx6Q3Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC7BC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298739363.22019.7333140005279484102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1c73c18f1878f0687c2f3d956290d6272a4559dcf3ebcacfa7fbc12118deae
Date: Wed, 26 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742987393
