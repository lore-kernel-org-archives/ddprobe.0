Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD6526FD9B
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767025434; cv=none; b=TkR4xq69KS+qcHA5+W4QXn9cN/f0trzb3UAnZ4Ny1x6mQ+tMDrCyW9wYq/O6YRVBFHGqS1PHYRLYbgLTk0x3TBY3Nqr2drLO0iNP8aMMgvGyUEQZabGYU86IDbLMiIZhiyMIV18AG3JJw4ddVV/cKdUEQAOlhtc/PjjQ84qq7ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767025434; c=relaxed/simple;
	bh=x33hwUZpHdTLSO+y3FUWid7VRpUMQMI/OyBrSgJupzk=;
	h=To:Subject:From:Message-Id:Date; b=OrwhPwlTouIflmBwLSIOH4X4vtd4T79RHcMYrqHj5SrngliwdqGfMNxlUwA4UUzJL+yYepKrSLk80PTc5fjxy0TnYS9G793k0zGMydPaL6fcSIz3SaGcpPtbAKk0p/wjTYsqolWT/SJhjOBYpmd3H/9VPQfuj9pU92joRyL0I4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7R4ubyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7R4ubyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4509C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767025433;
	bh=x33hwUZpHdTLSO+y3FUWid7VRpUMQMI/OyBrSgJupzk=;
	h=To:Subject:From:Date:From;
	b=G7R4ubyHcDor/xzjsSaETmRs3TF6UNqIpYa0Y+6DrjWPQN76mIADoZ9JvHgliNXJI
	 iZnvAVYSpWgKFZ7DwOiNyTVsufDIE/PX8xhfSHqoRQ2NOttkdxRYlQZrQSCccAEUR0
	 NTOePB8CUG/j/ifitwRYn2GwLVN0NLKHpIhyYpkpnu+PowVNK23LJC3m/GT3eBz8MH
	 97pCe5US2VNZWS3xfIqbd/92XOi203dtdbnGhTU87Gqsimo10OivkS/sFI+HpDJmTe
	 YedxNzF2+oXv2nleQO3FVbdro84GlygqNFEGFvhswmHZSrhc6VaoMW445qwZqIzezO
	 AfscupW++a49g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8EE92733
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702543359.15573.14972843390232405556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643555a21e84d06c14f538bb50341c973e9ff3d22bd8cd7b767fa625a76d9f2a
Date: Mon, 29 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767025433
