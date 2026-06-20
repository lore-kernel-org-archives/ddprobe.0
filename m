Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183AB40D56E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781965594; cv=none; b=Cf3SkcuL+iYARuyygHhDcsdffHbYC6uCJswdqCumPjU4XFyLezzXqMUiNitURUsASdcq9xfufZ9Riq50c9dPLW60lneJTbvd+toNgJGs681edz5KTTwpbBvzFcxUeaxsWdp8UGGpbqw5xI3jroW1mQBqjoFh/VxdIsmy1cj9SBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781965594; c=relaxed/simple;
	bh=kfKfOKP7YVUL7FfOm9/g4eV7xyhejxMzDkcq2yys6RM=;
	h=To:Subject:From:Message-Id:Date; b=sA2oqRgHaABDlJu0T74BVHv0ZCGqr5v84m2vQ4495T+xtt1GY3FxFNU8woMHw5Cnkq0MfvfODklpzzfcmxON2AraK2i5DX4Trlzf05ri8+p23U6HlcSLlAsRmEc5MTyoYCvQlnse+ciBt3i5WIA2I6lmWkMVATOgyYDzjO0LhoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+100cBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+100cBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15E1C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781965593;
	bh=kfKfOKP7YVUL7FfOm9/g4eV7xyhejxMzDkcq2yys6RM=;
	h=To:Subject:From:Date:From;
	b=X+100cBbVOP1NUp9ALh9buRwu8XwJT6SqTLdq/V4Pzw1M9jr/q++S2xPfrthIxWk9
	 3iyBSt2YJ9VExHAWQFp+vwZzj2hl7BXdAJJ1kRRh4sEDlqTpzXRmvpB7DSVe0rzUqK
	 Jxvf/xt66+TeImDocXnT6DBx5xfFw1iWoqfYqBL3K6zPU8XY4dgVxx2NstlHcEXIMR
	 HPkNPchoAc9w2NEWKxRfgw3BF028UtFPK5UCrmapYlR6aOh4C6y+GL384hTIHTFFmb
	 NYmdccugn9ZQ2pQwJ1mYeB48cA7YwRzR7yN8O6wa6TGsCvTBpRcaltXYQOIk3M1kkL
	 kY6GeTc8kxWxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F9CCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196559370.16004.12858618922317269397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9465129b3f21b79ac216a21c3ac267908d60ccf5f58ef56e1bc7307430e9634d
Date: Sat, 20 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781965593
