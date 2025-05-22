Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93FF846F
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747897193; cv=none; b=jGg8Y8in6JlACRd86F33Smma3F2zAX4IFw0hoqGGLdt1PLBz9eVwEPO/JkMCeMtgtA3WgnhcjwgbnidmkNRTebMFWWHo8M4rfx+MB5INGjZieAptdwGd8LotDLufLV3hkVFCKaZByVyMIbfRGftLa33yNrUIKWa/ngyhD+zjWIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747897193; c=relaxed/simple;
	bh=03JCrxj7SWtx1t9UpywL7GK8tOVBvx+EooyH+uTFqsY=;
	h=To:Subject:From:Message-Id:Date; b=IkE5dGYDLgRI2OL0MmoqucUMiHuBmxamx6OKOp1Zgels9odgbWL2YPn2nvmWcY15JWqm6gkw0r0Of0wMW+BsGWrnjuTv1faPVjm+dqHv6vl1/6fW1hQVG4xwXrcxsrmIWrvqXxwttRqrs9MLlU9K0KUXZpH2SaUW5Yeg0tYBJkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CG6wK7YT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CG6wK7YT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7D9C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747897193;
	bh=03JCrxj7SWtx1t9UpywL7GK8tOVBvx+EooyH+uTFqsY=;
	h=To:Subject:From:Date:From;
	b=CG6wK7YTrXJ0zjG8fUtCj0pI1sbh1/pq4FTpjs7yTA7ydCwnsfmR92DdJzUuTMzSt
	 oo/SDrAaERmVo91wmYNfPy06eooi6vW8gSJACXfElCaNWlIdYZ8SBpmje2ca2/7+Fc
	 q16qRDIS4ukj4ShJlCt3dqajUdmbDQnrfoDwfKP0ZePGMpPq9pyA2fLdoUZACmObx2
	 jxqZpzenNNm7B8K9e2qZz10OVZ1u1RGfISB8uqbFAxTFJDBfTfBUGh+E2Zc0atY1G/
	 vsGEipVx5F38LLHzOL6d8aLcFicncuIj3rUoTOTbPdh4HO0H0Ydk/EZBIIaol2yOJh
	 AlPrxObH0Y1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E442C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789719357.26335.2496496246664952257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510a9881396402dc30eacf828cc92866ac18c89356b24879fa389fba41ed38ba
Date: Thu, 22 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747897193
