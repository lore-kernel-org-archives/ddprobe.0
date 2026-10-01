Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A7A4AEBCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790845834; cv=none; b=QZThB/e6UO8/qObambpMg/FFllZa6VkcIiTWBt0PmBvjPT12X6A7KiGdOBfkxdpTSwUUmNhfWIJrlzret0Bj/X/33UVP9lVjZE7h+pHroruMNjmsip+WXCKMoVgYFLUDymvho2pMw8yBGHi9xKMUOvi3Qk0Q6dpRRNChfosP0mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790845834; c=relaxed/simple;
	bh=0VD50MOC6jF+BEvuUaFLd7mziZt6l4AiP3Xe58oScqM=;
	h=To:Subject:From:Message-Id:Date; b=eFHcy8uBBGGfMHQqP8anD0m5xidaTNi7PLKODa6fwQclsBHizkwHPExAOFj9r7cUnMBi/lGkWv32N9Fjxd+YRMeUS7ar7aUCm38Y7+PIWQ2XPPm+SNhMgnBFkgw0c4GYBIZFvKCLjHNFyePu3YjJ+8eSYZ9RvhInI9+dqckKMkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwuMAtVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwuMAtVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D084BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790845833;
	bh=0VD50MOC6jF+BEvuUaFLd7mziZt6l4AiP3Xe58oScqM=;
	h=To:Subject:From:Date:From;
	b=WwuMAtVyNOKyDWrUgHjwkf+TxlzELahAalVH3wr696XlFfSESo4eQvwX+RHZWkL+e
	 s5GtRpOCyKKggIlQ/inng4GB4eQW9gcdanO4UqTjX1wJXw4NcS2zSh60VntOxN1OBX
	 A13YSqwbwMTbRSgi0F+ZT+ZLlkHIkkIkli6eSacCLMth+Z9C8Rik19I+1KssgUZSuT
	 cr9zxTUWU1D0byodoHgeNmVu4Q8e+Fa2kejFZoG73/tDHAEToZ9dIZoaGiw2QXDzSB
	 KUaAPZhWljCYJZROzASwIXPE+kZ+N2Wk2XAwVr2SgfFdiuMiy7LGgR4L0CCfIkqKwI
	 VL3imbDLvu0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAC0CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084583375.5073.10742395868980160435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e664aba65c98aa58b6165c44bf8a0991d9b44ddd9dc27d0500b2b90c98b09e49
Date: Thu, 01 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790845833
