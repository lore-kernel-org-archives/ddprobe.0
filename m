Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492AE3B2FDD
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790882434; cv=none; b=RXwjeVBzg2EdDwtsHBLvIqsqOyIMc13koH6kLkeOTc9MafVLiqFrFMgzNlpvWEf27E7MA2YD9QczEXbKO1Td7o/Hezs+gO0RU3csWqNj4vO4eLsXCrvuacsOtZcHAAdpBgS23kCXIhGq4meJWMSQaiUNQlyiHXNe+2uAlMAFC50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790882434; c=relaxed/simple;
	bh=bIk5j/TjgOItvB0PTwSBfPb6tzol67tikHpTe/W6M/A=;
	h=To:Subject:From:Message-Id:Date; b=UwJeNDKKKWWToXwHAcE6k3EK2nl17joPJfzEgUyNwuO5J+0vEZX0s48+Gl+gp2CBLVsDKLlG7byF3Uu948PvuEKfGxqnExy5ynHKgPJa9HC4+uucd3Rxh8qid5JRDZlwHt8V5dS9cbdRFHU+7E6AvZxbQDh6ncOrSi+yFG2IubI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nh3B+j/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nh3B+j/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D060DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790882433;
	bh=bIk5j/TjgOItvB0PTwSBfPb6tzol67tikHpTe/W6M/A=;
	h=To:Subject:From:Date:From;
	b=Nh3B+j/VjyKErbQ+uZro8nnYDefPy0kytZU677to65kLOdKgg5xCHPwUMHLXEt34I
	 fTAK4gb7yHls0YcFO9xlZOpyL1QUO1p4/oxhCq83LMYCxs2L13l/xs04jO3r+ypYoB
	 j/+H7KyYDekJHS+8SovOyUOzVcH4fY0wJu10mXm+CvlFJaohMuJQvkiYzaugccneAK
	 75xKz0vHhPFLAJWi8PFx4ZY+0TV44goKS4aGQtsKRGKKyYQqPwA22+wCGoNtZocifQ
	 jgZHu+tjJS13MEHddd3KW8xWPekVLtU4Ns3FNkU1WqUErGgmFYNjscMo7PmS+vGFqD
	 /tE6YnBu80Ckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA571CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088243368.13304.17390984579088604904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf3e48d3a081287778ee7068b9cc4e5321377878374f710b8ba92bea6040a4b
Date: Thu, 01 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790882433
