Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6D316AFA1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711366697; cv=none; b=X3VyQng7GZBP6qrZMEKXNZ9AnaGGLvJTjSMiixXinl5DtnDnUlQmPA5VYf/gyliWiMTGKaHyVSwD5HvJJVFPQHbyPR/LB9rBsZD+VVykqJuhdQgHCo6yCHoyRqAOO8nJRNFjd1ibeuj6vjf5QcF5t/0kOeV0Yh3j/zQrEYqV/PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711366697; c=relaxed/simple;
	bh=druDWHpDh+DiCfJ8lgF+cg6yXXsjDTOp+yYeEZxp+9Y=;
	h=To:Subject:From:Message-Id:Date; b=jiuCu5JlvDJPobiZeQiTF3u+pd1j0NomuAYPeOalRETn0Q3ZFuK+fgumrUkGDiI72R+K04WuT5KuGkrS2IxoaCQZs+mQ6vCZOMyo7f3KP4mmOJogr7cd7p46Ax8kfp7k+uRNCwePbqkCd6qeQhR/m+OGllNBmoXjGUnwKzKJCBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNeiooy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNeiooy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83651C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711366696;
	bh=druDWHpDh+DiCfJ8lgF+cg6yXXsjDTOp+yYeEZxp+9Y=;
	h=To:Subject:From:Date:From;
	b=GNeiooy3OS3cJvyXQJNCx3IigjQOfPOKjNF/IP0gF7vp7xDFHs/tzhgbpgf1GDJNt
	 wnHptzEj5p8onRsUx5WS1hBZ7beOb+Q2hDEBNkK1sprKxnu0QA8tR6E58v+3EiwndO
	 NZwhi1/IPoMGz8ogmCF010N5KvUQ4c2wYjlyQjFRYvnHw7iROaekmR/i4CEQNHxKgz
	 GX/mThs6Y2Y3QFe0LjfAxfJkHd84ghCh9CnLLRus5l9Pgdn+uX5EZlnkMqAXoZ9buU
	 GUcWrkJ0WZ65y2PxgDG8y8UozyaefZQF0fwbI/fcMJdl2au5nhkZVlXS/HNf7jzo45
	 wNGe0NR45kQ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F06CC54E58
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171136669644.23633.8027562177824364792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f957565a5d1128e52dc4b9af7cbe73c7e7ff08b3fe3a5b4456feff785d4c122c
Date: Mon, 25 Mar 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711366696
