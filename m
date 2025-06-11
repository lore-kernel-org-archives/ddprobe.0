Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A96C2E613C
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749639594; cv=none; b=J3nZJCLiCKFY/rZR+2+UnYDRjShvbp01vqptwtcth2GGXcYExaWA/YkEigypG/4AO3S6I6mRwHKqibkn9fenIT1/RNDV8/+D/bK8UEouoD6VOlSG7ZAi2mpONdL9s3jw8TZxkzYgMuP84ttMqvZMiqt2En+OdH9nDs7CnOzK4VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749639594; c=relaxed/simple;
	bh=71p1LLorK8JKQ3kL2F8I/OSE2RIXPGRzoKObXkMYDWk=;
	h=To:Subject:From:Message-Id:Date; b=E+9WBLWEFRaWvg4kwoV/0dLp2teUWHEDmck+GdV/taqIcVYyC5qRbptIQloBR3pek7ASBhqCIDH46A72iI4M8sQDBlGFTrfhB9ikDUOuySDY7H1uEhEeIqUcc/5mZuFa5Hb5HCJ8pXZOXGuazVaOp0b6uGupp2cyvGmQWjSmyOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWtPAlaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWtPAlaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A335BC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749639593;
	bh=71p1LLorK8JKQ3kL2F8I/OSE2RIXPGRzoKObXkMYDWk=;
	h=To:Subject:From:Date:From;
	b=iWtPAlaOh+Wjvdvp/cr8hWgo7EX4/HHMVdNN0lX+LqjAF3kga2Bgs/bqSon0V2chx
	 tef2HMgjfxuNefvEQG4IYMpJP5ZWjt6jLjPQwd71SYcBl0pAE/BGx3JGSOSEAlbDk0
	 a1VHJXkEdBdXKNydhC0S3OX5mxgPsXZ+HdKe/LWlh1Pdf9oHaPSijB7EhP+ZtrSeOQ
	 cgp0JnAoWWfbeHu5i4Eoi2KEaxl0GhzB4pCw9D57p3WxJ0UMcjXPnJz7z1oHlVdRRF
	 y0EwyW5HvWN1Q66NOUnMPCNeKeEzksBHqhP2LM3ppM4DazvyT9v9VZkNjlVWh3SxY5
	 HQO+CEfRLW3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923EDC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963959359.26588.13949618108660513620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e876eda6a50d963ece99f7d8e30ea8dae6fe7edb9de31ad464454a18564f8bb6
Date: Wed, 11 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749639593
