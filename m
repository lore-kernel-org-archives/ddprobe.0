Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70982EA75E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775658933; cv=none; b=p5aFePVbTqyLpDUv9UtL3ZoZnnJF3hF+94vMtTZYAeZ7eByLaGVIiR0vo+k2ysvT72kqwsYWkMdUg6+GZPT5oROAvxtyMhAVwZAa7XrEcrNWr6W/ysS1/rD1D5sQcmIhtnn9pViX29ytiU0rhkCRU4fYJwzUoc+rEwPzBJH3VBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775658933; c=relaxed/simple;
	bh=kRv40je0le0644umF6cP4rKWdTokj0QpHEq1edsx7uY=;
	h=To:Subject:From:Message-Id:Date; b=pYOBWSwJykjxQzLPLXi3KutoTaRsu7Z3T++XiIBw00HBIJOwcx9wHz3Wkp86tfXvJXvLR52BVEOKg/FVZVg26p+H35AegP2K7HabvZQIyDje4m0TMnCO/7JcvrXMpzS5axkaDdnZcPcub5m/NhFFpv169g8g9c/Kj1FX5pghfDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGuDhp2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGuDhp2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB20C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775658933;
	bh=kRv40je0le0644umF6cP4rKWdTokj0QpHEq1edsx7uY=;
	h=To:Subject:From:Date:From;
	b=FGuDhp2tpZ/kdQfXkBr403uhmUeCWfyIPzuXLaTSqyqRqpDYnr1nUPm7AI3SpF4W1
	 5vhKCeNPknGeR97ZMWzw/wMwpAly8rPEwsiqXW0QxYnZC/g8jCI0gpEGPjHolZboyQ
	 uMH4oY6c1dlnTE2HYzvaGsJuAY/Lr8EQPWHP1mVZspSO07KOe0tL//ll4blNrBfnEb
	 43+rae+x35oDMophvtYuzbW4iFv1kmLkCIULdoo4fuAO7hYjN5Vz+xPGYm5D9rv2H8
	 cjHJOO3mN5dXDePhqOL4ZekdhbL2dm29eWJN/LSu0DsTuEAt/8R9cmtQtJ/3vzq00m
	 Q0Cf6z+PiotDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46210F9940
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565893368.3866.324569767685287134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f42ea4480c4904fe486431eda97a1ae9286f176168f9aac5ae079d97f5b5c7cc
Date: Wed, 08 Apr 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775658933
