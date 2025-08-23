Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277221917D6
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755986394; cv=none; b=Fu0SXX3mMo0w3xRq4maSqkfNWam643eFHLg55hK2pa2fsTksftHjk+zgDDhJHtIuHXb0Y6KSVaFTRSu+zWaJMUCwJkoUw3rMbBgQv/bsY/BtRIMFpB82AJq2khkc1Cxuae+M1Ayt4LnJHAkWGvDICursK5h/lvEo3xEVw4gkOZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755986394; c=relaxed/simple;
	bh=CWTfBusOeXw9g9SqtYFum7yXc59O5YKgrhhxIuCOAKk=;
	h=To:Subject:From:Message-Id:Date; b=AYdp44wk6VB4+EI/XFBiGg1pMaJ6yiUU1cbzvawbxwn22EoM+hI7+doY5/h8rbX7VIX4h33Dt5ln/5dwIw2ZO57swXm4Tx149XSds3VwuT+/Y7Fbr9QZ0Q56iM4veqZLtY4RjjgdUM5ZuQJjuuCmbM4rXgaQSswVeWb6zE7lJjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5YC4eTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5YC4eTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52B0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755986393;
	bh=CWTfBusOeXw9g9SqtYFum7yXc59O5YKgrhhxIuCOAKk=;
	h=To:Subject:From:Date:From;
	b=Q5YC4eTVs/RlLf8N8ou1nC9Urqxp5sM76M8nvgO3laX1YiaPCdYgNvnUhA1FN5FBl
	 6AFtYBXMIOqvugeywEUtMHTvlt12HTnzX0oUofsr7wvlaZEUq/evwedw9+deoNu83E
	 jRkGCV6vam7/fLKuFL/ieg81pUrc7TVbBv+4fVdzsXOPBF1pvAur3ksNfCPOPphj3k
	 MTqb5E/XhheocNKiCYsewHgfhA3le67QWT4Lh6dtKaZwHX/RrajqOLzk/N4q/rRCzB
	 bJS/bB0hosqMKMHSX2VhXhvXKHza0t6EWUMT7rzaUvO/KJJ8c2UTPEEDfkRWdQNd8l
	 KO/PFYjcfDJzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92256CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598639357.19133.3849614247286011084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d2ae2766e7253dbbf42d866e5476214929b1554d63dbcddd565d59606a582b
Date: Sat, 23 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755986393
