Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5591A1836F9
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719414803; cv=none; b=XoK/KwOjhKFneCCI4WSlek6cR+057ubfiJtGg2ZdOE+ha0aTg6QM/Zw9wLZWUMQvG0t//DH+vmncifVBFUkyW+8la9LzqnO960DlkaUOwgzuWtnNg4Z8Qg0wEcZJBH4uQnQmWWquAMh/SGWRCmpuRrTLrih+PtYG05M0zsXYjag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719414803; c=relaxed/simple;
	bh=bLwZS5OPExEWJzkvUU32+rUGqrPRVGsL41TTnIredvw=;
	h=To:Subject:From:Message-Id:Date; b=h33vsnGUP1AlGdaUVyb2uJc0DelvI5PjqHYvWgflvZwL/gik5jHsYgphe/QPRBDvtwlfhoBXDn2RhQX/oJWB9foSOoqHbehFgAh142EIBYr60lMCxJEEZbXqWKpwBBmFxoHmlGjzBbH0Et5ES6/BuumbiCWEUb3ZIHti3d4rBzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prPSYQDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prPSYQDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAE4C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719414802;
	bh=bLwZS5OPExEWJzkvUU32+rUGqrPRVGsL41TTnIredvw=;
	h=To:Subject:From:Date:From;
	b=prPSYQDNcZrCqQolv0Q3fmc7EivrdJH92TL69nPLP4YcmnDD00rFlkHVI3bQFII16
	 lt2IrBA86RiBpYdjxfeeSuRnGhy55WYctnIGwdbby9NeNJbdypQzSb+QULUG0iHtHj
	 b+cQhJNtb95hKhSw6d04mmn/Sg+uTNdr5J6xNLAIjmmBsXOX674oCF9nQSO0d9VXCS
	 M+RYOV/A1L0VFfyy7pCFJ3J7VPsFcD0wwC2xZW5fFOqqs9zQ/CpKJ7PymemF0sD2U8
	 R21ueuoKBLJVZBusiWvZqGH+Bv3qKB2m/5peNWJNj5WAL/QpqQAdTaJS6RSUVt/16z
	 v+vVRoQDkt++Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2982C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941480278.13858.6555450447419850050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603b93a3605ef012f8609c9845abe634d5b99f3f9ba7f0bc11873db15d14f2fb
Date: Wed, 26 Jun 2024 15:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719414802
