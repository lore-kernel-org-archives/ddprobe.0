Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F14329E44
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781418394; cv=none; b=JQrwkrorMyLyLWerjeCdHrcRO8dsOu10zXkXhoka2qsbgaXLmC9XXlW/wuJLRhJpTs0hTYFNvHexPEffsnzfPy2r9FGxSfJUfDalPE7ACBysoMVh7hf2OXW8HxJEAzBTyPNRdjDqhkJfWfKKd9Zolf9vBwbB6g+i4PSTbzvaUPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781418394; c=relaxed/simple;
	bh=V92NbQZa866XVtayJsg881L7O3mfw2Dq+HBvkCtyZsU=;
	h=To:Subject:From:Message-Id:Date; b=BkvaO8m7wZLZF1nE8/wRtZghSqAmedOkuDhdYxgrsLhDPnsaHU8NxcuFsDzfiEWJKAMhkOGHZwKTXuwmYP95zSXZMd/bQS9CGrW0mFBeBzcfSmyos2usfktU6QfwgpgILfbEZrMM/bw0Znm5W9OOyHTR499EJylDlOWEMJn1ZxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cv1xYk5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cv1xYk5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F71C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781418393;
	bh=V92NbQZa866XVtayJsg881L7O3mfw2Dq+HBvkCtyZsU=;
	h=To:Subject:From:Date:From;
	b=cv1xYk5e+rBJwStYuIAyNwERXTsrSRegfL9bvNaoJ9dPEMzViLyQpwrVHRMy5GF0M
	 hm4Xtqw67/1k88dpmfyvb5R/fx+xf9locQ494/ptOqH1tTJC4i4iBIX3eH9KGTC/Do
	 NFT2//jmKm2xh98WJT3A0oiYwPNTFQw+EJ6o1LfFz1AuTt4AsIF5SYs0np6qC4RMfw
	 YSnv3jiLgNd6OFLitvz6wjuPhTqVaNjPCipRBFN5ICKQn/kUodOKFGghVkonFtL9Bi
	 gh9j0FtYIV4hPDZD4BodHCLJ7DQwwOnU7UlPyZgSUHC27kWbzKjhr2v7zODJNMoC52
	 00oeRfbNdKPzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33FDCD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141839369.14190.10334378723219165801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589e8b2f1de7cbabb07a53701f09f482fe721022623c1290ac84f65c328bf1ce
Date: Sun, 14 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781418393
