Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCDA12FF9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718249303; cv=none; b=lux2PGA5F6z36DRZfEIsWFkskxcUs1VxTVxcg+XIQ/RtsjvZLk+ZVa492ncmXBjujMWonsbT6eH3dG4tOnlf4CU3lMzzH0n0GagkKwrZcGj0UtrFhBtNHV9G2Q/9t7Oe16pNrRL7Asy/TWENe5bk7J53ZfOIIynapOQ24gsRKTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718249303; c=relaxed/simple;
	bh=/Q62F4eXHqB2tYGef0tx5dcoWq87kQc/sIshzCl5mqA=;
	h=To:Subject:From:Message-Id:Date; b=q/0CYDXbz7g/D4FKjx87VHbvJQKQwlCNEWZNMZbnrWaYBlu0jDhQY+DjTckiFKgat4ysAMN0HYGR/SixY+CAi+1dodM03/vVYxzWVk2qSAF91CT2ODehazvJwbGsiYG3rvjhiyb5+/7Rpxq9R8DqYdws7n94G/blYZkw1GgqYTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGFpD3n+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGFpD3n+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6466C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718249302;
	bh=/Q62F4eXHqB2tYGef0tx5dcoWq87kQc/sIshzCl5mqA=;
	h=To:Subject:From:Date:From;
	b=pGFpD3n+afozX8xFnmwUgsWzXLQT79oTuf3K+JbVs161H1p8HbNSWedhXbMIrvIAu
	 Ui9cO9OJR+d/zcL675K/bMkdlCjIdbvAKLMPY2VnuxzLAvj0wtXkaRNwcFvel5krLB
	 EbD0Yoz1QXPc0+H0IOck/xIKMzEAnNS+nWj+dz9IjshCKutHcZNh56Z1SOVwum9KW3
	 /PhMMQLLjoz7YvLVXNmckId5ZDU84CQtDlLjdoEU8KVkDDBWRmIqx2CQ7GyStG0Mhe
	 +RLBuKHCddSfRwPuUETdSjBJ1/2Vm+ZwB1mVUbKlhWYpwqgPBQxAOGkulpcz35G1JI
	 rHyQwj7SPa4ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08D5C27C6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 03:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824930276.24347.16562120721389922170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42afb2bee9ca8b82223bb570bf266b3b7bbaf8c78810be776824430bb067ccc5
Date: Thu, 13 Jun 2024 03:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718249302
