Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F12283FE6
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752055194; cv=none; b=FE/q5mNHQRXmglEEVKpd0h9VeDIr1sqs7HeTXnvsBhXm2xFyvhFo2tZ5LrqxzhjqcYZ3GSHnki+h+A7ClQliBadeH2p/o2O4/BdeKTj1daqBV2N8ACTkUUtcOUcekGCuu58481UbhbKVj0zm9uyOjysgGZAQOmeQ6OvCOXx2hwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752055194; c=relaxed/simple;
	bh=4eX3r9rQvTmtGwIdvDEdrUUbKFgruxlpjREC+NDkF3Q=;
	h=To:Subject:From:Message-Id:Date; b=YhSnSmD9ANYpKQGHTkot1ZiLicz6FLd4EMdU+qA89+AXnWMcb+8syvGnrxkMLgWlUgxIRqeuoWg3YS/NIN1MskPJEk6AvuO3I3/H+F2VvqV73AVMXys5BVGhWVqFNExgLgvhHiXy2jOfsXjBj5GER3bvya6OrFLQYLuciSbLt3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANlBWNFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANlBWNFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBF1C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752055193;
	bh=4eX3r9rQvTmtGwIdvDEdrUUbKFgruxlpjREC+NDkF3Q=;
	h=To:Subject:From:Date:From;
	b=ANlBWNFZwpwZMEDC02FYoXwwQ/gf+8ZygUvpeaXAuUXqOlnoycdes8DXNY5cIFDiv
	 M2UQuq48JSe6Z7+yyMYQ+RzKrfIui/eb78OQseBGkRKcRa01SHZO2nxmcg2QhFpIc4
	 +hkIv2fwagybsfUZzemZmEpSJgY2FxwuLg+Z4NU3qmV0OSDpgpBab2jcjThj6fG030
	 R6O2pvgG5SJIhsn+ZXo1A0FgViZx6KbGmL39ejoOB5DDLLRtwJBuQ7H/XIKZl/WMpE
	 6o+m9f/yxY2qY4H4ynZ4isZcYKUQXbX6io2DfBRynLPwF5Z4nrn+WCIWWtaTU80JyT
	 YqQ38d+Mz/DbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E216C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205519357.6551.13764907365798081544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc46a8c3619c6848ad0b1a1886bd85b8573825d34d9e058ce92fb8e5f1dffc53
Date: Wed, 09 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752055193
