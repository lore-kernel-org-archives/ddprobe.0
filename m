Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B237811FB
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 10:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716375203; cv=none; b=JTPC1NFnhmfbkyrKinnk/qCqQM28m1o9qsz2nHDXoSfw66PexmluD1rAIu4X23dxpGl3c92dNcJ0REuZo3AjhLWL5fpcq7nnHWItEEVAY6SyGzLmRIYGvEQOtsUrz0iUPgaIFOpjFHaebvi1+W8hyvWz86RfxtKzLh9Bfa7zfQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716375203; c=relaxed/simple;
	bh=Jn6KvSTRJSm5QQHkbYi/wmEX0rhQDSOSgM0F88+Kj1U=;
	h=To:Subject:From:Message-Id:Date; b=afqZ1ONreOMzoPcp88oaRPX4I8W48C9LuerWYcVandnqcXIARYPo9HZCARTtGPEe3y1kABsBu4J16hj6Qa0u2h4TMnuyqDAdC30e2fblfDgKMxe/IBSQ8nWErhMeXAhIvTrNwYgmqtVebVYNg57J4GPqu0vgYsxMIpiM9Tl/fOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/hlZHMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/hlZHMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E95D4C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 10:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716375202;
	bh=Jn6KvSTRJSm5QQHkbYi/wmEX0rhQDSOSgM0F88+Kj1U=;
	h=To:Subject:From:Date:From;
	b=B/hlZHMwhaxnGJcsWYIggUEAmNDZVnul6rDSGGXR9fZr/S00IP0xJJNKzaR8SJ5e3
	 Hk3WjkB5DwNF7gZFSont7y11PG+L8l69z3eYUkISgSbpf9+SwART3n4UwdU5Rh+WIQ
	 3c1uJnag495nqvc/qwWEWjso0Yjpx01deRC0RI0y6pJkIJrkv7dryVfUFtzxli7/e/
	 fpQ5/eTGl81Q89UyMHWHFCpmhMdv0pyD3Hz/THZTVnnKzDLf2AvFlJXslZ06Q+qDOl
	 nEQCCjTdSSsfGh8oPpfU2AT5UfYx9qbCE0memDx9amBM45R7aBcFiD76SAF2HBw5oe
	 WBogU6sXCIJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C87C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 10:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171637520284.30909.16656754393798608457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3ec7ace49ab013d9622db5349dd2d84a313c9b6fa3c2d14c3ba9cc0a9474b9
Date: Wed, 22 May 2024 10:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716375202
