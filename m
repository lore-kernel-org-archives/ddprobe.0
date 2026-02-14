Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C79726A08F
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771061694; cv=none; b=jaERoYdTRMhhLxl2qFtOVxcbc7aU0JEB8/CERRxe0drDMtwKPjoiiyOwQCBNEWBReykgmPXq9vv/K2vqPrLkqCL8hfsqFgZYZBAA6yB88yu58nGsWvzHOZQcrTSysRKlEH1chVfxj6gesABtbqD1VyGuS3SsFtfQFVokzAbGGRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771061694; c=relaxed/simple;
	bh=xKKCMetskJP+zDfSK92G8pedka4/wYc+Pgmj7i+RmTw=;
	h=To:Subject:From:Message-Id:Date; b=MgfaSxqPbdD7VblF/Pegfp91ohIwWrQ4eX/pzMdciyH19XsPp2JFGclfrxVOQNsgMnrszCy9tmTwmVstabzMoykOsCRfijrMVxres+mKAs9v7oGvCORT/SSfzjcxI1lvQ7fMaOR97ir0ICt4h2e3lqsg3ajvVc07X4zFRmx1Tag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9JS3dFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9JS3dFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F17C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771061693;
	bh=xKKCMetskJP+zDfSK92G8pedka4/wYc+Pgmj7i+RmTw=;
	h=To:Subject:From:Date:From;
	b=H9JS3dFEx7yWi+EtqyivhEXw9d4fdTEnKLzXMw/rKRm3n0ycIxoLqcw230Af0h4cd
	 LSgsoljfPyOLCQawUX5ujABPEqtE+czvmXasbqAXHkGx4peCTA6RHt5FEUal/hpbq0
	 59SNKq9rHtpQjyorjcfSJcAziAVO1s7bbBi5CtrdjBnkTvLPztuT15/e3JlGMD9wDq
	 RSS2ga3jhKGYqV8Y+qeQZo1FiClTzaTfmgeoI20b4zUVSbY9Nl6gQYlHjRtvuHk0lh
	 W31VZug+qp3H/nq4yJgmoSlHgm0xhmYjFWWt1Lm8+MDPoymJwmvK0jkEgDPUcFM/gT
	 +ATOZC9m3gz3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A743EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106169359.16023.9603388674595809100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6a2715f593f12640f90411f53d4d3f922415cade2fd526d250f05f009e0112
Date: Sat, 14 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771061693
