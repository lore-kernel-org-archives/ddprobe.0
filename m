Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B3937DE8D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790509234; cv=none; b=RAx0IZXpkb2x6HQXdoDiCAB2ZMGtXpRWvSktqyyAe+ZtWZD9LQ9DeKWueGdmbFW0cieCK8H4fpTlncMhd7WNFAtzAKPYcVlb3AiNrug99cCRFs9Jz8CYpQTDZkGUifWHFAaxyHdqJ3alKvlb9jsTGXz4GO3NZfDfqMa/OKaN5Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790509234; c=relaxed/simple;
	bh=PGQADQlQaG8VV2ky1wHsaGMoT6Y9KVvRE/hItZVG8Yw=;
	h=To:Subject:From:Message-Id:Date; b=HWKqxGE8zdtLtv+naWcgiguNVYdA2jng0Ik7J2i7x8BJ7Tt7BmozEgo9eenpTY3n0h9uE+HuF3D3ai2nsu7GLo2I1Zc7mY+g6lWkav45e7X1gO65Oy53cJOFVXq2bLabVjknjW8cNR4yPLk1tqDuCv42Fq07teS1XXMAdpNVcsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTrmW71d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTrmW71d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A42C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790509233;
	bh=PGQADQlQaG8VV2ky1wHsaGMoT6Y9KVvRE/hItZVG8Yw=;
	h=To:Subject:From:Date:From;
	b=lTrmW71dYdKRzDxaI5eD9i16QYu3+QI3Q93DITFGuB54UDel2MorgFEjU/dbPetL/
	 lpS9A5XBZorNlfty7hXZ67avQC1ZGIpUNd7Cqq715ZJQ9TQRwdaGi4lsZivAuud6bT
	 U2fOTbhRVTVjjHWX1kqLSvSPxcR3WnD05BBXcWaEs6oWc+DwEabqFk0mNeRv5rHTfB
	 wqztTGovM9RRLQsN+8Fi3IxtiWvnBXHcRdZ/O+Fau4/5GKWSIinWYUihzgKLV9AYf0
	 QnU06/uFaT4Vex0VI0oP29DmrwswHs86qmFXdmgvHiVfh8euX1UojmmBmA+PsQa+L8
	 WmVe8MFBq/9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF43AC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050923368.15009.5596289995187771818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9da6583fa8a92e438d2d9ce3abe6bb0d65f253dd44fdfd1a9b8f2eb367e285
Date: Sun, 27 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790509233
