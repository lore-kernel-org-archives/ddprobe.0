Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF943D0914
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785954034; cv=none; b=p2VdLYuTN7Z9nKj6bzRi2XXyfffsCZtXl6nsUw6eUHeOwnfoQlfUFfrU8mNX42J9sAkYoUtxwU+zvFOxyiE0kr9629MIkR+UFSMMg3ZrqbaMZ/c5SmctYqPPcQoxPzV5YBreBJpwK3gWO4o3aPZSoFN1gph7bBHorpV7B+X0ACg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785954034; c=relaxed/simple;
	bh=Tch0dhCiTXEWLciW3OA55favd9QHrQYsiqaxeR7ahSk=;
	h=To:Subject:From:Message-Id:Date; b=B30DYFEz+8k2t7gxem8ESwu+/rxnzgNoe0F38eXrFU4nf3WdAdrZbEq6l/k05nUqZmOgNqF+LRMtLyM9UxtBWHuagv0kCXKDwf5ekytSQC2gSv8OG1eo8BT0UTVeox4G8tqTx8AgNCrXrcYd7wXiFST1Fyt/fMlNLBKhlh4s2uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvYYfY1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvYYfY1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD04C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785954033;
	bh=Tch0dhCiTXEWLciW3OA55favd9QHrQYsiqaxeR7ahSk=;
	h=To:Subject:From:Date:From;
	b=gvYYfY1TdaW/MbONy3r6W3HWjpuIFz4sHX6VHbzHkZ1KnmNUELQltOgjdeLPiPz90
	 0AXqbd1W5qoWXehwfXZg9vQ9anB/5AdNVHqejjKe/2GaOz7hKXWPjZyTxb99si+f7j
	 Blz/ajGp+ynFyPnv9F986O5RchuzJbvFejFawAnRU6j0gQcJWkWX3unpS4X4wJ6cq+
	 /aOT7vpeGAwJedXt8XMkYqzxkPe6umYCTpsShf4XzJ9vOWHdDc48ulLR5XxrLa9eEj
	 FNqlupvL8N9ZRIJeex3PM4+rpUTIMf/2POKXIJ9k6DYmFHdaGCJghyO82tIyy0WyyP
	 Q1d2cYIOEKcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF5C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595403368.1585.17023768226051398307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa1a114748e69594009a134782603e4fe33204f7f7ecf3f9e20dbd1f8fed125
Date: Wed, 05 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785954033
