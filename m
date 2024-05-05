Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C9723B0
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714891943; cv=none; b=fi21qgp5kHS5WA6e4+B9JQZpYBVfZdr2Cr6UOlUT2WcrTOdZJ7n1cMiNBCIWTwGSA0PIu7WqTvpfobBmsK9/1axm2YswzbyX0QmOnmiiwppkQRC9l2Wr1Y74YNSyyRI2FPFa5zz8w0XWqKE9GnjvoClYN6mIxCEGcl6eOmrc5Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714891943; c=relaxed/simple;
	bh=JNx0kSoisyDC6iOUH+rErSuK9/kZKhpP/FMuPzqafBY=;
	h=To:Subject:From:Message-Id:Date; b=WFiBR8DzbmPBSaSRDjhtKChA7RmZpB9vAXp9wjP0WY6i4gItiJINyMRb7j55t8FwCaQljiuwhy9vquhuY34udI6PNuhPHzLBJJs/Xg0o9dwGbzC8Bl34MQg9In8BXJUc12xCQgC3qKRRhZM9TfOypG2Ga4y2gqYt51M4MDp1JPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et2rqLlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et2rqLlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D809AC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714891942;
	bh=JNx0kSoisyDC6iOUH+rErSuK9/kZKhpP/FMuPzqafBY=;
	h=To:Subject:From:Date:From;
	b=Et2rqLlOwNzaMoa7SSK4/YG3eVhjhCfloF9IATBOV3Ocoa5Z7tSX+xYPthF0S0jy/
	 yqlBuOs60lLQvkxX6L6T+YkR+eS2XlyPppqL82OcXFUHdtabzob304x4HnOq5WfJLL
	 /9q98GIyrKNQvIwyi5/poM98OCZn6IwW8m9BGnNFuKRkZN58QodoSA25loqEMGnvJs
	 edI4DikeNr85gVzzclv0pYhbN9gCIaKC/1r0UtTbnV07bSSvtA5AXRmzhKDsq68KFZ
	 Hky/hr3pgkAq+8B8iF1UyZp/6DHjacpjdyeG9irH8Azc+5RrkNHPMc1Kbl+oCPiO4J
	 or7nmKfLL9jXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB65C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171489194275.29880.11203002237434212651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b476c2cdd1f74c16e8c52f0968e8197712b35a1eb976e834d8444ff5210e28
Date: Sun, 05 May 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714891942
