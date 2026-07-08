Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B07A438026
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783522714; cv=none; b=gg73aVNiYp49KvhTAR4fsHmN9WgMk8/NiNEWYwegzk1BuC+iEtCnnoR0VQsf8cuLIuUQBOJBWV1y1xojhQ355HDGcCoV3VlG1LtNwsBBTRXZgcGNVpuI8kdY6U3KEqxoX8sguY7muKpPLerkcOkO6oID/R3OswLE6mlaiQ3FaK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783522714; c=relaxed/simple;
	bh=O5TFrbz7BAnKHqmnJvg4oAjYPe6IOKuVnsJhD5NXyMg=;
	h=To:Subject:From:Message-Id:Date; b=dKdr2j+Iedywgk0P3kGkqoEc5BXpOrcOPtJU9M72Mixyt1cBpaMsAZf1hkqfY7smFto8XgcPEetS0KwFpQWnVyeHQpdR7tXEvtxPgBl3ROotJbYepfYjNO0s0nM5dHhLXyw2dcOr03nq+Ecu+wEAy+iWKj+2bxLOihE8vko+vWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RctYXPCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RctYXPCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D054FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783522713;
	bh=O5TFrbz7BAnKHqmnJvg4oAjYPe6IOKuVnsJhD5NXyMg=;
	h=To:Subject:From:Date:From;
	b=RctYXPCVKJFLaN+1lvn/JoF+raSe/UgJhHxgzswIZzJHxlC5MiubM903TpxsX2F/a
	 5p/q/TTi5e7EeGJ8GwwV0Ct5OW6zHywjmUJV0iXlXj2jZKMGE9c+K/z4Nrmw8NvHne
	 Ulji/HyP5/4SL7XqiszM8kt41R9aS2brujJB8o87hR+CvPO20PhhkNFQaHkORapZll
	 Sf34QxevBQn1n52p4renrbl8q5zs9AAdg1nzMzwxDQgJmVIfB41pr3QcKYk3F5+Rir
	 HEo8wBcJIlDyt5bdsDA5jrWv7NHBFDE7qEgvepv5Ni+yks3gPpRX5K+0KeKIcN3BnG
	 rg5xV/+21yAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9E5C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352271370.8760.10559016894879937160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0685d1c4695eb3cccf295aa85210bed8fc6931a91ed0a768014bfdcfe76d6f00
Date: Wed, 08 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783522713
