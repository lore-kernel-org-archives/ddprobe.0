Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2610B3B05B0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791622834; cv=none; b=A/dLg0Z80CJFWmbciK9k3kkJ09v7zh6h++xWTitPPJIsVOAwjUNe6/qH8twWEprjup0zQlqL6Ch6b4sCPBx2vuRAkv3E6ZSXmueo2donRHuHdpJOSOGzBjvREj0iF569exqWlVw6rb+IzEIswKA8Fq7J+rTq47K/ESdph8NxQBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791622834; c=relaxed/simple;
	bh=8f2/LSAXnwFCsnE4mGiCPnfsCaq2mgJvpVvVaed8T+k=;
	h=To:Subject:From:Message-Id:Date; b=HCVkvU2jTN5CF71/Ik6d4s8j03qfElxI4mm8WIDwgmofO90jY6w6TH47NA83hRvn2Qzb6c+H3ByAzvta9Ju5zumsxPV2HECIeelT3G8dyiiQuXKAQpDMqvDD1T/en/DHADBnPSkVd/br2RLT1bgjmXQi/ECuFT/M2YGWnOwQ8ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsSBWS/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsSBWS/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0732C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791622833;
	bh=8f2/LSAXnwFCsnE4mGiCPnfsCaq2mgJvpVvVaed8T+k=;
	h=To:Subject:From:Date:From;
	b=RsSBWS/HDiFZ0Lbd4/I0jBK1jaxr7V6bde/Vl1WeXhXVCkpHJReNBcK1Vb+CNVahp
	 HPXCszMP5y2yOw5lTjpPbxdBQoeSlPjVespTDyIjuw1cJ9DuKAkr9Tebq0IUz79gwY
	 EAbMj+dYdj2kGpNbjPqQNLju3VkGjI0p1xTiCSg0qU6gewzjGK7CsvNKKi0ZEde5Mi
	 Ab2jFhX6pnEFG+Ry5QWgfAqZl57yAdoDF7tihag4wpK3pMDw8tglGzUGukSVSaMXYk
	 fQ+WRLIwcvWwl/2pCj5qILQVmxVd2Of1htrdfYaagMPP6YBck25onPbWZ1uNNIpni8
	 8Ceyi1o+LwPpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF48CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162283369.29395.6296315670870721169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7b8dd0488f6701daf6dc7ee243ecb5c197372195811a679f31548d8b8ae4c1
Date: Sat, 10 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791622833
