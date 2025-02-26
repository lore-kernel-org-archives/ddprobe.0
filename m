Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512C6DDCD
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740577734; cv=none; b=COjvDpBSX+5tNH7yW3cVtGop72d4/ubrqN1vmZJfoSod+kmRalLbf7/3n6BpCMwF0DByz+YDfdJTjRKLdNv+ef9Eq1h5MwrpONXQlYjbsB8b/70TR9CIPkhJfo1avEJAEvsYjFfxKfYk74B1chZvVqbvnGXXMoAMsSyUTh956c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740577734; c=relaxed/simple;
	bh=1BzVmAVrNyBsCIO7vguk6dLu4ic1t/KncmByB3Erc7M=;
	h=To:Subject:From:Message-Id:Date; b=qowK88md6d32msUqLbD4GankUT+mMdI2XyusQWAwCXJAL5/4Tu9L7lSkCuEThfvDJ/ww5U4f8a8QPCrFJsqQGRDyzwOyEuNFNzMzlqufAr+i3keAYuHWi86ucnHiTO0z7HWgrY24YqnTTZ1gkaJgA4Dg9D55XsJBJA44MFymw9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZR0Nnrn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZR0Nnrn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C45C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740577733;
	bh=1BzVmAVrNyBsCIO7vguk6dLu4ic1t/KncmByB3Erc7M=;
	h=To:Subject:From:Date:From;
	b=ZR0Nnrn+ZbWGRIesvOixeaisEiYfk5rfcf+cW8N7cHfYmXNcim5sBSn+EYPNHCHpu
	 rhx1qPiHe7lyaM+NSJ7+BXnw41xQGjDdQMhuuTmMwj9NJvkd8s51W2lP9N2mhBOcaI
	 xiqexJPoJks66TNPHMyuikNPq2vxsyLIMvLT+5d7k2Py8G/k9JIuGAdWfVI25DSXXN
	 3VF4tJHumskIU3OSqMX4Fe1yS5lwbJmwkvszQE2b16yKM88iMPLP4mpBnA62jEy7pq
	 taR0x5D9FdCZyBGX4PQzt4kAExMonMNp+CgTXBIv80DWey+dCDVJsHRyTeGFoxTcR/
	 y5rb3nKgWWqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7C4C021BF
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174057773359.28958.4913573616257322436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83ff0e789dcced86fd2851e61d7e878c92e1984a8d0115adfbded87555b2d89
Date: Wed, 26 Feb 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740577733
