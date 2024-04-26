Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C38C2230C
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714166543; cv=none; b=l4EXm5J0WYW0DxaWMEf1g88fiDMIPh2QjRRcZ5yCNPpc0wPL2ZhZLZcVEubY5o/8lByHV5LQaXI3STQ52G1uNAo+XJbnHAVX9+mfgg9uYzjbOAJUchi5F31EvjlK5EQ5W+DpuEIF85sP/7SlI3SE11CGAYjHIURAEgCKbvMvEEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714166543; c=relaxed/simple;
	bh=ekDFDCnybP0mzhJSfvlCGxX8RCJh4KiLdYGlowYAxH8=;
	h=To:Subject:From:Message-Id:Date; b=kJmM+ybew5NdY+84agf0AKd8fdG4uXSAslLbAk2suCu+wHgekJWP1yEWTZ2ZQtWjWU8MTldzfaDE99Qouft4cPvqfnYVmGERdkB2hwcuqaY/K+9E75VAjF1phauFL4yTeIjxzFyxgWULrj4R73PSSPd+dDyEDRmkSuoJVPysADY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt3Cr8ay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt3Cr8ay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DFFC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714166542;
	bh=ekDFDCnybP0mzhJSfvlCGxX8RCJh4KiLdYGlowYAxH8=;
	h=To:Subject:From:Date:From;
	b=bt3Cr8ayoRpcC3FuQNjDN3IesW0lCKlVZIgcqZN54KyigJQGug4+xtolNFppnRwJ9
	 CSjDq0gYVMiQdfNHfflmUTriNmy6NQWQky/fjITkLmYkx7QOLMT27x77p29Ku/HK+K
	 SeRklo/ErbTN5R/z+CYDQnpM6fBJa2Jyp7aQ79bNnTxr9c/wqJNQiysuUWty7LYJF/
	 D6IiakNksrTIsInADI0fkDz7MbT4JO9iIB6lB0jWx3vuvxQ5JeqsuiTHyQwPTzIwZ4
	 yRtEvdcodZqkyQRVI41GmLKihsLxFHM0WBFQj5NG3rMwhtY145keRd0z8KcQa7CSO8
	 s+HTP0U3yW+zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC784C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416654276.25762.2216087503552532324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2967e529a3c17bba95c852121f20ad449a3acffff38bcb1c4433ed639c7ea089
Date: Fri, 26 Apr 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714166542
