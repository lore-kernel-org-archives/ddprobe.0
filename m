Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFF0340285
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775854054; cv=none; b=P4VFn1jIjXPN9MRo615suqoIh+Wy0NKF6r5ynpJ7KpEDjXjRWKlQtKUWAKmoYjPjZaHQ8awXzg2qZoCNy58cAcAAoLiEekDThG/NOwXqJnszIQqiT4v2+Zl2pyOkCJ+xK5ranR+Au1deq6aGRFAyhZTJv9QfVSfpxSKus5au2D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775854054; c=relaxed/simple;
	bh=BYrFmnNk8Y/5F5t9k+UeKmjufY1XcWQoHjqXKTueOr0=;
	h=To:Subject:From:Message-Id:Date; b=S2c6t9dUqadQTnbf6JlgXuSWUThAIRKAqIvbQ6GxQnvV8KYaYaymWcKixbVxeigPn6BubKKTxyCSEf+EFPRp+AAh1rZRJklCib+nllMHZHKh95YWHJ3TS5BVotTn+n83h+3bStxLJIURuGXGKQetp/4fNA3WD8zba2hs1U2HBik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfRoVptu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfRoVptu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD12C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775854053;
	bh=BYrFmnNk8Y/5F5t9k+UeKmjufY1XcWQoHjqXKTueOr0=;
	h=To:Subject:From:Date:From;
	b=WfRoVptuQ9A+8yXB2Cz18PFiMyvqfuTZ6IC4NsENNc7lOja4djI/4nQk5duDSoUB/
	 YTkaTq1xyH/EUX9kud5Kfi+0xkkedFcml9PjU1jvgMr3Yuv+K38OWiBl+3xfbYbiP/
	 kx2Kt9sf3cJ8AV15kiH7B0j0iH4Wa/LueFZFtD3ylqGb6bTxzWSdVuoIfXImwfBEdX
	 uLmaAS+kb7d5VnzaAHGRNgaVemCGNgBGEhDWc54H0uvov37L3AgaiFgs7Igo8KoQsr
	 xMmN0ldAmnE43T54dN5X5dk+xVik3soc+A66UlUh5BFLhAyWx37lFQO01Hczgpr6jX
	 4PuyO+PLypDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA1DF45A0C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585405369.28910.4965335909630284133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df641ca68130b8e3b75e59589e76aac41d1aa9a9fda26b43233f27f079f2bc9
Date: Fri, 10 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775854053
