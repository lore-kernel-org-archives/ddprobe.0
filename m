Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B38D2D59FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771271694; cv=none; b=PbsLS5B3IDmz0YJrruY84VSHNIBhIv7qYGy6gxDg6cxkz1ldx4uHuCEZphK+eSo8//h02Qd4pYUI0G91S/dAYkLVoIM9612rCPm7uT3fAeh3ji804PZRnya3qaku9cap4atc8SbW/LC8WOmDXWalnPyFPjbEsaPkcauO66ACWeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771271694; c=relaxed/simple;
	bh=zqE+kOpD4uln2A2/I4gJelKOD1Q9XVvqcK/1XxZLXtY=;
	h=To:Subject:From:Message-Id:Date; b=WRE5mX37kfeqZTeXtPxn8Ip6iw6orHHQGRJ5RWsvVIDwuE+cMyKtm6Xj8Y5D+whesKPW+pWABsT9vJl/tfnFmpALTFzvSn83CKckDmNyN4G7BkRB1VXySTWanzN490XFVBHBgfsSx050ChXMOVID19VQ3bU3rg2rvVJkC7Z7k40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjOOQEXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjOOQEXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFD9C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771271693;
	bh=zqE+kOpD4uln2A2/I4gJelKOD1Q9XVvqcK/1XxZLXtY=;
	h=To:Subject:From:Date:From;
	b=EjOOQEXlmnQZEtwmFUoxHLMc9DanWB/7eZwqpinOS2GomYjcL2w2Arr+EZ6pzWahY
	 lPH360hFrvgqgh4Q0qIKo8aPiWpmSw8A1J7TcMbykeXwPK7TidGv2EibpyYtEuA0Ty
	 VKTpXmZEB/04LSikEpm+7G0rKf7vILX+m5U2U4XxCXw5fpl5fJufInxiQY/n+1XhNa
	 HGe5yUAdjlzeTH8RQTUlh23c9fmsogtqjmcho9ODdGtGDyryfR2GfR2ItwOrLTXOkp
	 lJP6mH09w1YaHlIO3UzhrFLAsskEQLHBMHrOAQLVE70lj8K82dZ3b+awoFbViEr2z5
	 9/QlCA9f8j4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B171AE83827
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127169362.31341.14677274838444202843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677109dce2b45d1d0e5b1e6d70f3e701e3885b6e2947b0fa820e07dee8823286
Date: Mon, 16 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771271693
