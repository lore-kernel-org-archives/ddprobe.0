Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5D63D4137
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776927454; cv=none; b=Xifj4R8K/jSKbg+u4MZZM9UfOXE+Dd5WUsoeTBmuOp0JUji624nJiHLxvbNY3FoWESsviwSM0cnFkIAg/4Dapt/u7iLgbpxlQPbxHsbg8xdLHSDDQXUgKVYyy/FAdxv1akpWZ3Ynd+6NvF6/GDKSqiPf+jHBJ4d5vnech5Utipc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776927454; c=relaxed/simple;
	bh=EYGkbasUPqz0CfpE2vObCHzGoa/5Qat6PHP6IqPSXks=;
	h=To:Subject:From:Message-Id:Date; b=qmGQ3/3Kyy3B5W4ZIprU8wZ0Aux7Y+SpOHasIvnIEqC4qljDFJ8KwE6eBIb0QbzXX92WH+VFWYkjCCqKDDxD6I3cgBbeYHxXvKMq+hw5F0nDXuvmUb5+MIUdnx5E/cSbvHt10fOUVunotUJQ+ewJUI6EEMLwrkJwDId5oswbxn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHAYXqtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHAYXqtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3E9C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776927453;
	bh=EYGkbasUPqz0CfpE2vObCHzGoa/5Qat6PHP6IqPSXks=;
	h=To:Subject:From:Date:From;
	b=sHAYXqtblayitLv935ShXv/MGSbMIsxfEZAyINde5hx+VqbVSHvR+OE8C43Sbnf9v
	 lNyi+0lbZ2gBjl6HNG+2+ArYM2w6r6kGfNx7K9Mps7+4MpcG32EkU7nReZUOi4RnUt
	 ++qrZFkSDAIkP3yWaVbLgjHoIW4hlhyGIxK8+r04wmLkmgTFFzKI/t6BGuRYZZyOIu
	 Ifi3G6lv+VuFVqDO8bxhPnY/+Qb50PXlWVpWcJzzmxN/Kc3R2SS0bYNfo4tEYQ0NFW
	 TBCVpQk+N/AObacj13G1pNdPYG7g8TWsmgsLhM6OksFQdIz+4VTNmAUgNnBMDGoj3x
	 HnbsOc8iuqSMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD2CFAD41B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692745369.26843.3430136631930952806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7fb7d2dbe0c64a975249a7402b9799719ed13c07ea123e36d7f5fb1a9e61e0
Date: Thu, 23 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776927453
