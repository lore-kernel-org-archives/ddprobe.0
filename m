Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EE1168BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729198554; cv=none; b=UxfnRg5S9ylL6yIYUKQXWomOfL8aZbeYzIdli5mLhwn3if9iSkHeHFXqk5U7iqAwGe7aKnEyJ54R2eBh/MSh/SKhAJeao9fHDOuYJBOx9iiERfsS/3K2NC7T59WTI1d4k7V9LZZdZfVGj8CTnF7qnj064tKPHxgfd1zUojXGG3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729198554; c=relaxed/simple;
	bh=+XUJViki7x8gExihZ963IqHheqQUateSbT+P3ik/bSA=;
	h=To:Subject:From:Message-Id:Date; b=EuORvdVeU+A3ihb9YU6v07y/MFEzMKa81U+q4+MY8CNA00PMYVpYrGxHNc3YDWtG8BCH8SrhDJJGqGKwYH0ClrH+0LlIA0Svw0uP8T6SAzsh3ak/vKvlrCnobPz+oW43S+qOXo4n0f34vfEvzuIAh26uQEWAIe166JLBM42HB2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUApOnvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUApOnvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A410AC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729198553;
	bh=+XUJViki7x8gExihZ963IqHheqQUateSbT+P3ik/bSA=;
	h=To:Subject:From:Date:From;
	b=BUApOnvYnZ5PRXDBFw6pUK6En52jzeOh7dwRAkzGsizO16aiE1sMiVuYuPm0A/80p
	 ucObwPFxH9kvRkYvkVvW2aClY4mxxJM4z9eGQQVcgi4RLnLX7BcNzqJZxn4Pc7u1vZ
	 2Va/ZaiVEH1xppK0EHLiUGCE+2L7vhh6uU18hozeIRRYmsGXj8C9J56lENhPXHgoYR
	 +2dSyMNPeZNaQCt5TR38yvQ+pKSi2VW1eWiwOA/+SgDzuIWqq/MrOwA+3hYGQJJhOo
	 oYZO5pD0Ok4BjgU6nwDOAdgjnYW6EIyUVUNg49Pu0elpEI/LJyG/Q/206Rr7jC98rJ
	 g7+hX10TOd7Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9316FD3C532
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172919855359.32044.10142014555974366332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9223faf6f68433b7dd197d18f90d57bf5ee65ab409be923a2043619a1a50e176
Date: Thu, 17 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729198553
