Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861F32FB97B
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789659634; cv=none; b=bUDegNZDMV3H62cM6kSi1KuRKpnYaXxtVmatfPzfM+SM0sy+PqR9yJzQ1zhwU9c6kwUms4G3PyTVhAEJhoX2B4bdIiNXcVehhKXL4UXddybk9pe+IrBYXLwVolJQvrp7j6pGQ6fkWvtHuj45jUjYdSV9vUmuXWLDAR6uYomv7PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789659634; c=relaxed/simple;
	bh=UwAtrdv3tQleAJIC9yAzeIqncxrH10Bg5yzPvOuME0k=;
	h=To:Subject:From:Message-Id:Date; b=M1K06OVmKK+Nc/+2VbVbkGKJ0ghtL6c4uNm+rbqGGSqCDoD0ASLtbC9shbRqZfBhr/93dw10qfoX1S+zxcm0G0PCn5cZxObvTMcEf9u0OKHrAosflMUcjXGAYZ+HwwWhGhESr2Zvh5snrBeQouDVOm88aDbh+rgadSDmuBfU5VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFDDtK1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFDDtK1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1281C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789659633;
	bh=UwAtrdv3tQleAJIC9yAzeIqncxrH10Bg5yzPvOuME0k=;
	h=To:Subject:From:Date:From;
	b=kFDDtK1MaxZd4zlCOpfYWs9FuQZh32BW8J5GngiwFEbrPnBRz0LU0ZwP56WWggVau
	 4fWH54zLJaegLd5SH+83mpWJc+AuQFgAgfJhhRdx4XzBMu1rQc9Hyy/ezHf4hJNqIW
	 TmcPM38PnEYLKv5Sd12E1Q3/U4fjw+/hoZKMoG0XWutn4p1im7wKEucck4/E+jAp2Y
	 aWmlxkv7MbQDcmrZ7GAQakRjdG09OApRrYUrfMbyNMuajE4Sb7Jbsg46fvCEKWOX3G
	 CY5rfuCLPG9+P/XMfEKi3mXOt19RtxwIAh/UtTAXrUFhBKhbN4TDDy2hzR75F2HK6l
	 tLZ3FQf8nXfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDF9C982D7
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965963370.26122.3065300036428739337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e845db945fcc685d1847040eab54d9703123bfadc91c6a1e80580f536a8c10
Date: Thu, 17 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789659633
