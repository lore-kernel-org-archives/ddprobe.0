Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C5614F9E2
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738996554; cv=none; b=czUfPcPmVsdVHKrYKxJHpPeeSHnTx9m8ZUXauJpoD6/78L6k22jVuuHA028QnQcNrxqi5iPkhradBAzYMsqSRx2osuPMLkOWitN3mzHDgsVBEdLPqBYusPUC6o3ia7B4+pyxg61YhcECy11NDX2eiFagyEGAVJUap/NInvXjivQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738996554; c=relaxed/simple;
	bh=ao9mRAd/ThB0yIU47pl9W3hAq5fIzqw//Tb2gYPtiVc=;
	h=To:Subject:From:Message-Id:Date; b=Rp+5tS6pFw2qcX78jL1ph/fa9uL7vnyKAIszGvzF3U6j3u1BAAOOi/K772pB9tOz1g9/hy8R03RZ1Npu5c2M/lj32lEoSy1VGSQXGz1tSqkHahQKLVAgEl7KD8pXg1N2A2Iru8N0m/Fzv0y81tG+R1t7+KqvYjpM4yuP59pv5JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ+3Hc3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQ+3Hc3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F29C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738996553;
	bh=ao9mRAd/ThB0yIU47pl9W3hAq5fIzqw//Tb2gYPtiVc=;
	h=To:Subject:From:Date:From;
	b=jQ+3Hc3bN4oVsNi/FirLX0kpv2qmrQvFbrHbbOzdbPK00IRb9EVCuro01y/SmxNFQ
	 eTzpPnMBmW7iseQje/PCkDggYEFBrNs9q1DtCypY7C42dWt/qLBNFKdTUGSLLe+BJ8
	 rQ1dTwb/tpde9uHjVlDTfD8jPVjKrrziqIbM+GsC4BDf5ISj1YjNadASdG6GYW2PYs
	 8tmtv2G7myqvXrBs6+fEf25GSeRsQUKKRw+SfNUWC9KMXGOyVx0e0wyqXb66tqv5VA
	 NJ6kcsAJG6zv0MglYkOevKo/Cl/FNDv0Io60goxMt+VJWvmAcKUhjLPUdAZXgK4SlU
	 /PAGvt6dLXyQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CF2C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173899655361.30093.11529146276482929421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1693876bbdb2a98d0fe43d15003d22acf15a39b9fd0661aeaacd575b1b9cb34
Date: Sat, 08 Feb 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738996553
