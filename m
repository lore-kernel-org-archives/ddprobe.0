Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3437B1DC1AB
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771141494; cv=none; b=KzB2b1zW2FNvzuxXrvxNDON+9Zy/kndDU8UIrDM7qBsL9W31Nl8/XvjPd41O+ZCONCxINIRapDlGrzG2yOKix/7Sj5ueKy5Lr1wglZ0MMMFF/ZtaBz/9/MtXXXHYqREeC8g/mhPqylDMxhsQkqbwZi8Pm0rtZAGHxiJYe0Y27+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771141494; c=relaxed/simple;
	bh=fXGtZHFYV7TH1LFo0lpLJsONsItkgzjqznYGPfIrNLs=;
	h=To:Subject:From:Message-Id:Date; b=qhmhfVNvIHYSIhmr4BHAWc5TiBGdtYWt8+FRhdtbSR2iczbbw+znhwx5R0z1kTF/neVSdkibokiT93ThVyePXzjXTI0KfyCWT2212SJ7dqRptBYVWCyBWNx70aiJEQZHOB0hM2jnU9HO7xXFIfHUaMHLhjq2HqLxkVXlBb5h9Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGNDKT25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGNDKT25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB546C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771141493;
	bh=fXGtZHFYV7TH1LFo0lpLJsONsItkgzjqznYGPfIrNLs=;
	h=To:Subject:From:Date:From;
	b=IGNDKT25M/hTT16XiB0WqLhVOAu7cYphMuBZVnron2wJGJOYZ4S2fcbnyE+ZhZMOe
	 xPB6GBlhTAj5HsCbsZXJZ0+wkgkuQsfnOEHZ23LCON0Xe01lNLo/wf4yvee6cQiTzg
	 /X873kBaW20XQCn77a9Pq6pLZS0Tjy5B6Lbrx6jzzp93lPY3f7Y/iZqILACDc5H7Mx
	 aicJgDpa2Eo/8dgHic1p9VifG+mimv3vcAQHzQlyVlPIwUW68U67Q99w1Gg2zxYYWf
	 zNsCsjft/npqfFEsmk45xbMJzGQh5IhEkYPaDXCfaGbvMah1w9Ko6wTY1wAUfTiAQE
	 3s/U7tsXxibRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3779EF585E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114149361.3244.8797715052556353288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d03ca11de6bec480ed22a03986c73e58728ad2016d17fc0646552f655aab89e
Date: Sun, 15 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771141493
