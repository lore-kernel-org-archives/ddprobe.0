Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F72C221DB4
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756629594; cv=none; b=byGKv6McW8DSCxgHRtLAg7mrHIKHb0IDs8WuFLfTsjkrzhGp0a0T/oNiNiTg1I+5e5qsay65lrrIWqPj2g7JLr9H4IIy4731VeMTthsC8sxL8q+T5il0QAYgcInr/O7mQ8fEcH0Ntq8m6FRlapoLWjCwEJ4VCJGegQVAK1yW6b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756629594; c=relaxed/simple;
	bh=g+yOLp+LIrSaffc5loheNycztpYYcoYBavt2nEig42M=;
	h=To:Subject:From:Message-Id:Date; b=NjyzP+UFMgWNwKpxKLX28wBEmbS1s/i0QDNAOwy7lwVoc5g3JHua6dHASsqWvo1goqLViZAJ80kHVzm8SQmNfbX+8SaJ+7ywyYe4m392ewqXRTdkQ+rcvSuylIcaFocmWuRWvpIkBIiVES7rmaMhwGqzMNe8WbDq0FwgxhK7CRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIjq8ih2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIjq8ih2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79E5C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756629593;
	bh=g+yOLp+LIrSaffc5loheNycztpYYcoYBavt2nEig42M=;
	h=To:Subject:From:Date:From;
	b=BIjq8ih2Xwj7I4JfB5+QJXEgxDgvNdDyjfDzo2YkenePPD85xnDk3qwyG4dS7Gu1Z
	 sNcu99SpBi3PiHnaOawm61DznNpeNm2syDeekiMZ5ojXzpOXB9cwqgUhdEevIOVQ7m
	 wlQobu5Hh63bbfzsqlu9ZkfEHxNssey0nCQFBtMmFNKioLF728r+rjasnba1UI7NKC
	 LzoZ3ZZU5EkzwnlkCTJOcDZvvbcZV2HbvxAU5mZnz030kjlgzYVaCUP22araiK1ROD
	 Kui2U6qtDBHXqTbs/ehHfw9TZypDLIn13cz46guvjOn3tlI1M6fHBa1oQSlv7rI8NO
	 SLrAQBld1XEJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E8CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662959357.31355.8862498152681238958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17543bd8c325ed4e33d218618830366dd698a94480e21c06a0ccf62670b09b63
Date: Sun, 31 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756629593
