Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E83D238D3A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750455595; cv=none; b=ZOGuZdhJzOv1xz/IccTCAOlb/j+bn/sEwARBd6kgJcRwniVUJZdHVLdVz1Z85E/L9g2h6lIozTtEOgyvuxxWluq2MMCrfIiPwkw0h9yFz9rTxslHu/1G7xVmNbxvhDgwyJ3j9Up6ftEMVSMzLgS961iqw0And4oBHTqSr0MiuCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750455595; c=relaxed/simple;
	bh=QISVlNqR9zFccYOY0S65NKbBK/c5+k5pA2Rb4rjauJA=;
	h=To:Subject:From:Message-Id:Date; b=WfRhUPVPe526870mjHQ29Fr4GdtphyK9mNi7pCD5R9UhcjGGepbgzx/SxJAvvSfZ/r6o/BDVBKPGFWKCBeuh3Q1sH6S0VBaCtUpe0DFt2Am9ww0CCON50b0MQlj8zpJu7x67RN90xI7hbjJ4/UqzQZFEc63Q41cVqHUR2VaCsws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daLw5mDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daLw5mDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8605C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750455593;
	bh=QISVlNqR9zFccYOY0S65NKbBK/c5+k5pA2Rb4rjauJA=;
	h=To:Subject:From:Date:From;
	b=daLw5mDlUAiEXl1BRqRxqfxpZa5P0c3FuH9cyP1Eqsv0K/HPbMMUD8UAidPhBRASx
	 qfGiW7O/Mx1hpKTXnrZtJYDh+k2HIBg+FVQicEKdxEfpow1XzRJQqpuNw1cBeuneSY
	 ICXIW6gSQAbUkga7/0Xydz8Outlpq0CKNRaZEHucLj9E7ZExuiSJqtsHyRC30l3Kc1
	 d0uNbuPZGWfGhhI68e/bwg5KODl7owolhn/twmV9+E30Z0iIUtLwB7dFB2DhLklUbf
	 0JNVBZIGUL5ML4sPlh1JMGOS0N+p5em3eBC+d2FkLdzgtDDaE6dnx+h9L5cJ2CEQUs
	 4qGeoGd9dvT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94266C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045559359.15320.10374035402595753307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4347b99c2921fb32be246b0ee7c98fd265aa7079dfe21fa5a06ae9b66d5709d
Date: Fri, 20 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750455593
