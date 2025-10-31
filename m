Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B8334B43A
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761919794; cv=none; b=YxYZ8/I40NEQMJvAFhygoFwMCGwXqtcLzL5U0lRLWhMbNjzRdYMMkAhCaRUI3Q87cfVWw0JFJoabJbz3zBKYpqc897ylPBSyjh52t7IxrMcP5jZ+NKf1X+0Mi3vrZ0OzxSNVCig4eHvtVcOWomvMHIiYABoGG2Dw0T7y4Ix+MDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761919794; c=relaxed/simple;
	bh=Kd1SxYBi0Q9Wj6NwmBai9uzNJyiUe4kOmpJg5wwXnB4=;
	h=To:Subject:From:Message-Id:Date; b=a+azuxwDN8qpw7b9lHXbGC3tS7Ek+mDzUgRpjEM35U+jyXw19rPwWBSgkvQGfrpHa9N3VCiR1vB5Vx3Z8C4Zr0yhUGc1q5QLTS+6L4nIoh45GNAPxRoBlH9ubGy47sIg5FAnOMoum8loUllxWD7iTI+guUMC/xFDBebw+jS0Q70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnRbIH/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnRbIH/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D73CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761919793;
	bh=Kd1SxYBi0Q9Wj6NwmBai9uzNJyiUe4kOmpJg5wwXnB4=;
	h=To:Subject:From:Date:From;
	b=mnRbIH/5NQmJk5EVgyXSYD/BFc/U02YFAUxluv7JwY2IU/amz4pOTGe4cDLklnlJn
	 JfHFJdOXtpdR7AwrthhYj+NuZZ/+eME6/bPPjn4UsFZItOjtWH57YBdgJYORWOxlJS
	 k4x5SNId7cNUVCMSoN5akkCnq3Zth9FFw3sTYqzLT/PEuakibbJR/9fdksS+dpqdrY
	 6PdUayyrXkm2zgVjVTeYbk0ePxp/Mli4sTi9vt/t34NzejslbPNCBmpKbyjyBz95Mc
	 088Veb1uO/7zeo2tdZcBQwuy+DrsgooX+UKfBvLz8lccATtupcarAELDFQ1Mjs3A+o
	 Z9AsMYUaex/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F754CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191979357.31919.11368164214879998444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d75147b33d1614fcb94e4916a079a8f1780019175ce4d02f0256ec2dd81bf91
Date: Fri, 31 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761919793
