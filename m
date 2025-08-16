Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2131A238C1E
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755337194; cv=none; b=UixgS4Pxd1wo0cq95Bx0Gs//v7HdYSs44iv8+kufobKL9U08p4u5tVH3/XJ96+/MY8u3KJIkfNmwPzFvMx7WF3C5e8Er2kU5sHIgqal9nsVD7iwYkBdz7mIaJpZdByOGKequnAJrwIFsQX/8mp62Dp+iBzZs0o4wVPxCBCY/F2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755337194; c=relaxed/simple;
	bh=m/rjv33cx0epeATJc18E+Mey5KqqxyJL7nVwAy8jRHc=;
	h=To:Subject:From:Message-Id:Date; b=cJKvS/wh30sIIfMMo5gixFZwBKHPziNvI0tfs1QAkhLQ4vcoyGYIDw/XzFyl4zPrHlYLam8OqFo2v2onKnpl4Nj97ttd7t609suSLLysY1mE6QcFGIirv3/46ncmbkIP/EuZIAbDtnGQ2SqwwVWgytGswASxuAOa6M3n5gq6gTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZGICVNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZGICVNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C9FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755337193;
	bh=m/rjv33cx0epeATJc18E+Mey5KqqxyJL7nVwAy8jRHc=;
	h=To:Subject:From:Date:From;
	b=NZGICVNLRmgeT7QIyMQtbxE3wwNdiKll+WR+cwJbXs6qNfc2rops43596Vq7JIaWX
	 QS+MtZwlMg5DoNkbIMvYoeyOD6UbTZH+XJUNnztoKb8fCXsjw4UxWsb7I5nrh5R95a
	 MwLMGMLs2tYivrX1rqwCtQnWMmKSz4ANBoNd7gTeftNJuTZfs4T3QURuDKyeUI2Wys
	 OXsyWa/A4QjsxTsImkcFRiGbFEU3a7GQyVqMP+WR1hw4R/EghgjWtFAX2dUwpVuLJX
	 vE/HQ4X57JPFTV/qMvt1e8Ssl5XMVJf2tFHBa7QAIeM2/lM3wICt1DuUghAqycu3w9
	 +GF83mMysHZGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB66CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533719358.5174.14335471937052455177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c67e92ffc3785c0e59b3c924c9c35fbbcadcb26447bf6095265e06eff924ea0
Date: Sat, 16 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755337193
