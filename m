Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAA4481640
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787859634; cv=none; b=Wv3GvOHrbwVLYPRRL8ikBkOpfznL2lMcama7O5xLsMvJIKbypOLky6F+ntccZJF6xHMVKouPU1k9eZOkA1TBwV4M+cZQxq8Dgz9O0gSnGOJT1pkaiv/G1Ez7jNkLv7M0Ihjr5783BvhudikpB4Vmrz2uBZTQuGrECL+7mz3uDHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787859634; c=relaxed/simple;
	bh=Wjl+OF9mzIhf18/J470jI+h7IXwVPSqPvcjds4IpBRc=;
	h=To:Subject:From:Message-Id:Date; b=jl5Ix7ITvQZLjBADEmOpQ9Gt+oPTnD9A3x7o0m7NNAF7xQA6IDgEWlssbVIfCjxlOV3r9AD3wmakMXm6nBt6Jpud4bLLdg0rGH0bjZjFtAvH22c+hzy9GvtpLOH2BksbWayXMYXN83+lKIHy9hZrwoDjRuNfpl5BRXnut2vAKOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNfg/dy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNfg/dy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DD4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787859633;
	bh=Wjl+OF9mzIhf18/J470jI+h7IXwVPSqPvcjds4IpBRc=;
	h=To:Subject:From:Date:From;
	b=lNfg/dy7sdvO7U/vDqR+6HCG7NXE4yeEuNpMDn2RapIalhbUUGnRRL6upH4I8ydB7
	 ma+6+PPizijUUzWL+VbBJp/ogzTt+D+dSAKmd18P5o/sRn9WVl2YFhU439kH0Cv7GV
	 QkQGIPIAJrZkngNu7tT06RPlxiQi9yJLwfoYcWRvRj3nHFUwUH6prZrtsWQUgnSIZn
	 9EwokcD2zGB9ByCQrzgKcgi4CUaSpnDznDDfnYoNUsrIgxNwP5elY9gQAqBtm/BsQD
	 bW8da5JuA3ZhW0vcXlls2B9soCTiWltsJrzhtpC1lydwi85z+cWjArOE+xqyssDIA1
	 kD5HsmFbfqqTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9B2C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785963368.3970.1432361151039429610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78275dd0eed6bd106eb14d8d20fe2e4443bd1f268cb182862a961f300fdad347
Date: Thu, 27 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787859633
