Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AAD32C85
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747806594; cv=none; b=LGQ7dNOfZ2fNScb/98Tal7ujbquAp8G88zMDtMk3z4zpWCEqR0LljURcaWUXf1M0gpdVrbUOC66UXNrRoI0eDwIvtPrjO1grURs5wXDekXA8UmoBJT9Rue/K1+IQ8wwu9qjZumzJfUmSrcxSR0/O2Ulq+OGwbIO9602Y0fA22So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747806594; c=relaxed/simple;
	bh=KC7Pex6a83DsPXRI6GndM9rZ+yT5TOUdD32gpkIBIrw=;
	h=To:Subject:From:Message-Id:Date; b=drNCTRpxvKni6HlLfVuY2+f5CTA/KSHsx0tnpOy1Ii60JK5HhemjLN4iy1bfA0lHID9NZWo8H1f+O8MgWNMlFJFipwXa3ZT16yU6L8a7l7pglp15J8S0VBIk9WHlLJzB8sfKQoeZe8z58qSzR7S7+mDemWQKwC3jnzyCXho/umk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnWBOCb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnWBOCb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A730FC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747806593;
	bh=KC7Pex6a83DsPXRI6GndM9rZ+yT5TOUdD32gpkIBIrw=;
	h=To:Subject:From:Date:From;
	b=VnWBOCb6ttlAdzRLndCGj60lxGZFzRry5rfHOrK8MWZ66Lno3kKK4Lcugwrro/jsv
	 2fhlYepL6lrTDagnQXkzDfjYxuR7tmrYBQKAf3MXD2omqxjoxRX6A8AzM4rxidOaw5
	 bs39K4jsWqBXB/6tpsGeK/X0P0bsOa0n65UNfWLOK0IEE86J63hqMuRNWstzjn5cRt
	 YA7QjEMiYO+uBrQu9wv3xh6C2VdjdQqWxrqp3rq4dme7up7JSA/c9Xbj6oUVA8qJyk
	 Z/Pq9UNkaiEMbUsz0RCxSL1Hd7NGAjiuKinKoVHGF8bxFhxWGOjrJ+qKRtwDT7M8Ms
	 CAJ9WW08EE3ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96142C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780659358.4193.9597182762228311525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda9a259d9940dd40ca6c665dad199587dc95cd9bbc92a225a6a687099c5c98c
Date: Wed, 21 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747806593
