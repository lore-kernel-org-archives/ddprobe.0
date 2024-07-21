Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DBE944E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721556354; cv=none; b=mCqDn7paVExmATnOXo0TBDQBo/FcC4s5gqlYNzwInSKK2tEUrWSxQLuZqC2QzMhxffHOlFj6zzE9yFMCGigfy2k4mEEi5RfCG4RU0TAPBSpSpgAiGMGwZWcnoB/MruyS91XsFTvEr1cqB4LuAxbiC6O3LbF4emWrzM//eErtbQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721556354; c=relaxed/simple;
	bh=sK+OoPZvPNwXUDDWrwEy+KmEbZ+ByuG1nDrR5QkaEwo=;
	h=To:Subject:From:Message-Id:Date; b=IX41ixHhQ9qgri/VRETEGSmPNinxTYABzTt0dwQpxVq0LItUYQs6wACa4KZ7yCtuDuyjfrJ0k2MhTJL6xtzeahVj5IgUBvT62J8oCRah6khH7A42ZkZmBSQJUO6ivSO5cWVm/4af7X50asEEMHxFWm7X1Bl09p+yIMSAGQEVNOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koG7BtXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koG7BtXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8249C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721556353;
	bh=sK+OoPZvPNwXUDDWrwEy+KmEbZ+ByuG1nDrR5QkaEwo=;
	h=To:Subject:From:Date:From;
	b=koG7BtXOL3AM+jnwjRjEytG7ygvw3ZIi/JMJMBsvbW2BDF05EjDCzq56JBlGk3KMm
	 R91/q7i5bCEJ3qtlrsBvN5fnmT9xT6lhel+Qi93iYGn1WgNMw2VVB3yfXXmstpDS+o
	 oe1GiTuvqwr+oX16unv63dqxWqjIDjBnKjEyqsVz3rN8zXVaCZIcSyg6pl6Zm2Ux6G
	 9UG/JRz62wjlmgFJ5dfRM3VRl21UfxeJsbiyKcnsS/cwAk8Q48sedeKzjrzZunFxUr
	 Nj8WJbXdOoAp/6gLvkuBCoeDfFmn+ZxDPbSLi6mMkpxT84iylxScETBh29Embzap8o
	 68bXF7ZquQcWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A711C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155635360.27565.285359329502808916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a273a5b04591dd4e0b1ffaf9b5ebe301ecdc65c82104b153b3d7b6286b2d9a
Date: Sun, 21 Jul 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721556353
