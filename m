Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2031D30BB93
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768191834; cv=none; b=c2bQlVfInUQMZ/rgOnjIf24voOnB1jWl6Qz4y5Q6c+sH+L+AZnqXGvecYAcdvVzVPm4ViB8T+foQYuYxwyUBQowxJyB0KzskUROdcNmx9JLrIbFtYfFBzgT6mf3nyR//qEAJOa0pbnxRrZ9zXDlygl94PxXK/DedV1GfoIMYDIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768191834; c=relaxed/simple;
	bh=5RwDt9C65CYjEVv5D79doU7/UZBjMKruQqfba8dpIzc=;
	h=To:Subject:From:Message-Id:Date; b=OurSzds+6qHKLkSLVoaVtNbINkgt048Xpo389UyrUoJI2thOAJkzXyy7Xk1IxjpOMUb2kKezdJJMJlliznCFvRcOQEuCtUZbLNAVjSvL8DKEbxt1y5VHnzL1Y44Iqm4Ou8atnczK1mx2SVmnsoi7RiWt+0ppLIC3AG2o8cC8MIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUcY7SqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUcY7SqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768191833;
	bh=5RwDt9C65CYjEVv5D79doU7/UZBjMKruQqfba8dpIzc=;
	h=To:Subject:From:Date:From;
	b=JUcY7SqCZEeVHvnzt1clR0zvS9LRkNFAOrtNAC5kVi5n6X8py0P7SSPKzDEtN2irg
	 3VPcVjTualCe5QUbc90MWbYijUduSC7qLb84xSBbg3a+4SK0LlXNscRrjYDglWU6W3
	 BjH22LkrU7/NVZsE+Z0rLKsu8jTNAciRJ78u2azs1KazVLlXdqg4b8TA+yc8gzAEZs
	 HpVtFDXjs3/q+9uZPq5DM5d4CjzgEYOVkg/v0tygvpYwZoaTfgS2REtIEZcrw+KAki
	 1vc3ZcZFd2kaCY4jH/RWLQtXuydw1e+WMMMQSc0smiZW36LOzeHi6net/lD+ZTYHOW
	 jq3sZWD4Jh9OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C4D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819183358.8895.2050670437938666014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f1962bb25823e4b48333c3d1f4f6669918f99aafa8ae2f2e75d3ed862bb641
Date: Mon, 12 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768191833
