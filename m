Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED31288D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764045773; cv=none; b=E3ND6CPs/G1G/rJaocACJg23WdfobQ0ZzyyJ1jdv7WcqFLN4bmEy0cUeo6u2exEwGBKTfVNnidXlekymitcCOF2a2bqj+Cpo5a/lyauK2zc41b9Qea2K2rVYhR9oH0NnURA28fd53dx/Gt7sNgLpZ1MVWy8Yt16sMLYEQoCVedM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764045773; c=relaxed/simple;
	bh=yh61Jz0CJrlu9af7my7EWlLub3IfMBu5UOQi3LMVIKw=;
	h=To:Subject:From:Message-Id:Date; b=HmVtYbRRE9b96J2hOFY1aLifEtAcbYYk2BT713nJg9jEbOCoRMxrOcS4csizmIi7obutn6XHz0EZ6U67QNs1cpMNBoptZlMbRT5fHTHNdQFiZr3wfV7o7av3u1fmBzD8y8Q2VEymR92jTdZBLfz5osraBciSe4CgS2z8HT4ps4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6Ya96JZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6Ya96JZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764045773;
	bh=yh61Jz0CJrlu9af7my7EWlLub3IfMBu5UOQi3LMVIKw=;
	h=To:Subject:From:Date:From;
	b=J6Ya96JZYP6qOTQb4blbWUCfQz5MFbpoZAU99j7zSP7zJiAI41YK2iGfs5YM9Ubbm
	 ymlcp81I3fUU5clCZN0bdzLGrnJ1dpEhVhBuR8TvDEbjIsP7M/3HLSGj87Xac7k58L
	 J0RCVYF5fQF/zS1xOPCqSbSpkrvdA0M8Zc3dF7Ev9ABITFmPEhsR4y6nnu+IDazpu7
	 ST3nq2Mnv9IuiGzC1d6iWxe2MOeJvC1bKhcv9gCOtQelxLDS7rrmQmTh1pcg+NQIDJ
	 R6+kL1x1dhYx/JJvJIBlLr0+7mQaRctSL8wezZHuOiHgZypvUXPQl7TaVoJEHycoPI
	 KKnzYZQGM18bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059ACFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404577358.6578.2922077290476782173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf3f4e8b69133a323785725aa38d3d69c88e8b59329b9735b463d45806e11cb
Date: Tue, 25 Nov 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764045773
