Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BAF1E2843
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746596395; cv=none; b=adT+W5XMO92sWjPoJDcH7kIUW3Z/0h+TZeCzLc2daG/WrgrvYvpr2WeXxpjbO296xLrmSf4KYIp1yUKpgR2h3LihqLCEZ/C3s47oyxFIn+47ZT9PgemCwYNFa6xQ0yJVP/xHi6gBphv4pkYWmwts7cZT+EsciJ0HVt1n3MnTa4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746596395; c=relaxed/simple;
	bh=sfyS0/1jab1Fk5S9maWOBYEv4r+98TNls/VGi0M9FBo=;
	h=To:Subject:From:Message-Id:Date; b=SrCoSS+2Ink3ekXNA6uZ90zv/BCcS26YK6GFW3bH0zQUAgdDExfRmF9ebPdS8Os7cKMsZCKFPgyTubCkvuuZq+3VKG/PRj29qn1YtAmH36oM4zp+ptrDF/vwrgUTqZdQ/R54bSYvlnf2jtRTX4VJwm29oS5zK8K5ZDPews7g2lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb/hFjCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb/hFjCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE476C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746596393;
	bh=sfyS0/1jab1Fk5S9maWOBYEv4r+98TNls/VGi0M9FBo=;
	h=To:Subject:From:Date:From;
	b=Pb/hFjCAcTRD+5pdP64WgT+z/1h2Wkg8wwrv6pnkRnZLEGt9iFcYgH8PKW77Z/WBK
	 lB9473MXpIjTRFBOKTIzNSAeXVQ7QXbBh9hjxRG9F22ohaHTh8/m4eAPXMN+BpcqfU
	 Ogaph5rRI2xabLTotxqvSagMKBK5KGMXAxtu3Ejhf26f8J+Di5vM5PS6kbBro/n7f0
	 8qKMrHq5U1oxWPYkIpEe7rdIBBgWMw9YMCLizxNqqnHeFFbJpHhuy50r6lK6QdCbQw
	 FsmGjg/4rsyNpsgqln+kCv6H+SWQzgbbdIqi6fLje2n6ciXyTTZiaSmMJz9HppKCNB
	 bEmqUS4xlgW4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983F8C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659639361.14763.17141816429337099664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30efd3c3837f6c18a02c6f87e314913a65a541494c374376d26e643e5b4a5420
Date: Wed, 07 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746596393
