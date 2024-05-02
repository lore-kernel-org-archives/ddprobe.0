Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5D616FF3E
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714671743; cv=none; b=YxgCspIm/kGl2tr22s3U09A4DeVmZGzOFCYRh7VDGmT5LK/b1CTRRvMZHAOJJtRMVx/5MQh0/cyahmndx7sdlZlYMQKSvulzeZeoo9H+IlZkegKx237mDkgnAK8WM2jsQDmxI3PrGby+BcpI7N6MSNoij39lYuy4AXdpYoQkw3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714671743; c=relaxed/simple;
	bh=duxwW6h0WX6QkRHbp56IRNSwIxyYi2nBidNmZc0rcJs=;
	h=To:Subject:From:Message-Id:Date; b=BDPe2RvCQCPoBaBSWJQ26ea2h99KMXmKgG7xaxJr+rb2iLDFqKCfDBfpfDpw9V3+F+VqWEJSiXd/6CzOEPxwFhWcHOICvVNntUDdzAOgjv7tJH7El1WvM+KgKgPmuJIiDpHErtETcyZbcijil43nNYINtSSWMCEVgndcSWs5H2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIhoBSka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIhoBSka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3743C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714671742;
	bh=duxwW6h0WX6QkRHbp56IRNSwIxyYi2nBidNmZc0rcJs=;
	h=To:Subject:From:Date:From;
	b=lIhoBSka6LQs3oN99+2fjSEc9SngBiVfXWQN7lNrLnQBPoCH6BMmoY3w0HLdxstSq
	 HbkxMidgHtxf2cZhZlQfwLmrqdHn1aMTwrWRNTYLFfarMNC4Q3YUHWSgiQqs8Gz2QH
	 D+HfZJB3IavPUYIx/bWim+FqTVRlTVaOLy/4KlPZFifTYUogrkSRl5EUzMXIMkVd+i
	 FRUn88tCRmuPPFynEwRqB6zfO3D8EWOthlq5eNgxrLWqa+lHSAHCrv2LAmnIPUHa5r
	 yk1SOguS9veGJbMhwxAztri7ieHm/m9uKWHk6X7BRMeH+iKi4/Getxl4W7xFbM52al
	 5rhTIk1+tuA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0151C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171467174276.23238.4470418030328491510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601110a886f2253e8e1dbdb8c7460c74ed9c4c8d71e42f3d4e1b4fa0c670503a
Date: Thu, 02 May 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714671742
