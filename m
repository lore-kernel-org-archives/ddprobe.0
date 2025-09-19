Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E7721ABC9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758319796; cv=none; b=gl5kc+2u86F+k3G2amcEhX4ik6ngwxR2m+pdqS/TiMuO6BDaMrP+OAWrBSAmF4E3ZKULfJQaJYHo9Q0dCBIGNjbfAl7+dEOAqIdzDZzWmO4YDTBgkEpNnpVv6mxoHNDFuAfWxmabhjWXupCU3aZ9hpfiMMiI2xRj0amKKB1fF2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758319796; c=relaxed/simple;
	bh=qSfm0Mr/BrCLOzMxh7iaZuRilog6aji7S3ZnX5+H0BM=;
	h=To:Subject:From:Message-Id:Date; b=PZXSuk9d3azPHRPpYoxfvue6Pe6rBT3AcUvgTERh27L04uDCfzeMoYtdMwV+npBSDNRGHACL5j9vNP95d7ihXkNY3nG50x0ZNtCUieVn4CAXEt9fVDKC+1/86Fuy4CfFrQCAM3qHnqlXnlO6ZtKZrXi9AwMj+WWrExbVxqnr60M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKVzCjpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKVzCjpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD53DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758319793;
	bh=qSfm0Mr/BrCLOzMxh7iaZuRilog6aji7S3ZnX5+H0BM=;
	h=To:Subject:From:Date:From;
	b=sKVzCjprgk+vfh6emthfRZLyGT4xlUpUHj9q3nGXrRVqtRZA7SjqLGXWQqU4g1HjE
	 Go0DERu/lv+Mqty6LUOsWbT1RO3NkLvXxVy3oqfynbUp9oQ4TxumDCtp9ZGa0/DIgq
	 jTrtZYcX8/1+QxvZEmrN+RCF/LQXCfEEioviv0ddgTq1pgm79cLcyCIRlzRtLdIXKh
	 u21yZ416l7YRwe56m/urBSb1rsniG6b6XQK5XM7FVM7vlL9IkO7gmuH85OToAFGgUO
	 1vzsnmx1pzt0fsQ3DYJxvFriRJya+aWbVFBQXR+/u3j88jEgXC7yti+5Biv5PFc8Z8
	 76gzOwea5KDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98554CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831979358.7551.14953218171095044805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212bcc851f92c67b765db48d2b535e3443a196684f84541cac351c2da96c517a
Date: Fri, 19 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758319793
