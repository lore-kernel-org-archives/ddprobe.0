Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAF5214236
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755232194; cv=none; b=Bio2AzxgsWyMcwZJyGcw9dd4eY2cVj5PolhNMDkaWRUFSK0pl8AsFhWL08XWRs9g/wH99FcKKSMBlLvMdYfoAMp3TXiencixLuktUBTo54o8u9OAOTIYOJQ8n5EFIEvG+zIeQjvf5bksgPkX3f8/QDTbe5K1tXSxr/UmDW2ixIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755232194; c=relaxed/simple;
	bh=DVULm05upUu/wJLao7zIOUL97W0KVet5e0Md4oDWlCw=;
	h=To:Subject:From:Message-Id:Date; b=OVxTFyL5le8Qu7dgrvdtv5oTLGxsysVqmHeoEYuDIQiLZSw6tMm16ll6/MWqVcEFEurXkU+dbSRDtAyeGEYMmi3iEcoROncnNr4K8H/t3a3j5DZK/7MPsHHuYJkCCvIFTtPu74EgJHoBHltS234EAv1cDN6LfN57kLOnrdKxdyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nr9hp/KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nr9hp/KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EF3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755232193;
	bh=DVULm05upUu/wJLao7zIOUL97W0KVet5e0Md4oDWlCw=;
	h=To:Subject:From:Date:From;
	b=Nr9hp/KWM4OaaWr0nQ7exSWip1pZaQ8sUvsjj7UG7d+IkzrK1U25sGiI8AjCQh50C
	 mCMWV3cGTIreNrRx7NMtBZCMpGXCuyCArxlbBXKsudl8gBjoh7t/tpfmCo6zWwKiys
	 yuHi629LgDHlzYgtlR1dsUDW8Foev/d3UB0sbfGF0f0lbEAqGcT+mpWezgzefb/rWi
	 3wJAnBCX84ESu4nUPeYUPH7J/p66L/hgy7zmlPrkdzMwToH1462hkVvyV3fviUa6MR
	 yvxhOx3qBdAql53KaEkfXA1vb1EcRPGyDPBba+ceJq6ki88WxQ4w8K169ymeeoVOw+
	 obY7SZd6VGYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF9CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175523219359.16040.15950081380671221737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7844fc3e89ef5d2802eb16a8c8bfd392f0a9c3bbda59b2ee3a3affc75c32052
Date: Fri, 15 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755232193
