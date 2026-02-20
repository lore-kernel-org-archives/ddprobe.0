Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A948344DA4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771592094; cv=none; b=j84Qbl1JntQb5WU2FO+2hB8FacQ6/G3DIgGbiOkaIr3EmGF/CIiYz0qi6Yzv0PDq2mYF+HBX30M1Ja4ZrsfZ1+dWJiGwrdJRAw18Na3Z9LCQli/13yieZsXGRphQmyal0gNzMfcIZj8/q1HgoUJZI796MSg6fQ7YWHqPOgKcBmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771592094; c=relaxed/simple;
	bh=AMGsFGMXH0qUV0/H3A/swojV/mDd0070NrVco+hIZXM=;
	h=To:Subject:From:Message-Id:Date; b=pnmCulaCY5+c394+zWkom9G2qo9z8EnkP07Px5ZdT9chWjU/4XS8DG2ds9S6K2plBvEu1zsng1tYAJQ0lZKqH4mNJW3UFrWjsJ+tF/Bw108gQUNk38bgP7t/+RNbwnSXgqqrLwVOxK5ln1J7VCIgEwA3k9Po7tFds8+C9BCa/Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWeKawCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWeKawCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F66C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771592093;
	bh=AMGsFGMXH0qUV0/H3A/swojV/mDd0070NrVco+hIZXM=;
	h=To:Subject:From:Date:From;
	b=kWeKawCZrANAO1HqoWuFtRGxCPcL5j0QMxDrE4GwIKuZ5hqtADvUTNNvVtiFJQLiU
	 SWxEwsECifZPVA+zuDNn7P5jnhQEZ24HpuaPu46sfS+1r3xLsxtJsSD71J3ugZt/U1
	 4yS5go32/tXhlllcVkAEOk4f3Yh24o/IYZEJZ/ws7/iPAXPVO6YXonShuH6e4Wd53S
	 hipRn2fYwps6M/qbRkdEgK0cpyyKREb3GfPijEkO9OhVp9rgWk2ZVejqgZpWDDKlO0
	 6pWuKWAeZC/9E04wS4dy7phUdhpb5CEgJ5wwm/Fepdtm4UqIBcUuSs7y/hGE6D9Nvn
	 ghisHZFFR218g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CDC55AB9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159209358.14481.7197054813428819355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919b246470f540d41af2c5dcd694d4dc7bca2100b2d88df1dd3bbe49d0f89b90
Date: Fri, 20 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771592093
