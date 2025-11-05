Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2907F2DCC1C
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762332594; cv=none; b=Vs/DCb419awqiq0uO/8c5YK/M2VLN+npN5cTwlGgpwXAsUqWWNqe8bqFy5+bHOItgfUOmx39dLcMrMg03jLc50Mw/C5V38cXepk8crTioQdHHF/T708l1l5NeaV9RO48p2tXexj4UeG/3GjbMkTWo3GsKy/CnIkJFG6aYmpHLg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762332594; c=relaxed/simple;
	bh=s3FdWFdxXYbMOqDQY9eVox7OvbMptCPboau7TcO5Fsw=;
	h=To:Subject:From:Message-Id:Date; b=r3JGChmtXJHgcsuCZ0mD8r7wRRqatDGYUHRJqGAdKSzUsfkp7Lg4lzMGGG6onOCobYPycGkKTmsxQKWpaRHygW/TVsJLXD8v4nspDXSMv+FHj7EH1leYVXBUHfPYcM0bhxD22k2A6ourp1aAlpDXH9sLnBb2i8PTQMeby6f59r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW0Xabgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW0Xabgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B041AC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762332593;
	bh=s3FdWFdxXYbMOqDQY9eVox7OvbMptCPboau7TcO5Fsw=;
	h=To:Subject:From:Date:From;
	b=QW0Xabgliow5x9+RUqlsB0Ao3hI14Kv0Tnyyg+uzr3VJpwXxdNS6pB/CdOeM/00eh
	 evZ/BNJfF8rMNN/JOV4Y+G2PCU6B9saxe4JXbight81vWZdJABq6j26zfUOU7anms+
	 TaIwrqaLlZJp38y40w6TceRfWVwF50LU6r4b+5TLiouURs/IXtBz9ROh1OZYsL2t/F
	 qthobKpPbgMOOVzBRKfB5rQQpnP807FPx/4gdOLyuiQMfZZnKNye2mQPDJAMvxYjPX
	 +teyS3AEs7BherEn0iUq4Oen1tQyiWWrtyDfqI4LYcDaV0y68f2v3L3jCYRk6amPD7
	 78sSeZ+BFFeeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F299CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233259363.6851.15432292311557055755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6154886f15a5b2d1ebeff5307de16681ec19f64ad1eb2fe062cb911f6345e043
Date: Wed, 05 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762332593
