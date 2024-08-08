Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C5184526
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723112754; cv=none; b=Rd1S62B7hY2QsR/KTF/NUyykj/KLnMHZKBUpiIwiac+ReOQoZrJy7HfUDQT6hdosLnHtNKaZw357i8hUearUJoDCvpxjHpkxn8KGHg4v31bY9jaOLJdLadX5C/ygJENh9NwpWn0uQPkO3Z28EZbqW0/RGqCYiCPWYUzvGhH5lak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723112754; c=relaxed/simple;
	bh=2Ld/GcNSwD0XakURagjXhk1lAfZPVid7y7UrGW7TbTw=;
	h=To:Subject:From:Message-Id:Date; b=AJe1KzASRHp/kD+bLQeYnz1Btylfi0gCkr/ZVfKgxM90jnO6B6PD/mxQQbad1KdGJIX/qCrK5uZVei6X0VWg41Zq97bcOoAEjAKVnQl1HnxN+PaWNx9JNtwYguHVF6z5eSYpCSAQotvjLHTLyJvnFQaO5qEWGmhDLXVedRNBDwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSfWwuKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSfWwuKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CAFC32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723112753;
	bh=2Ld/GcNSwD0XakURagjXhk1lAfZPVid7y7UrGW7TbTw=;
	h=To:Subject:From:Date:From;
	b=cSfWwuKATiPo0ZhczqPQUCTk61nMhRsVAEDPssSmx+BslbmAJVS0SlgNUvJiyz8FH
	 9wU63jP7Clm9sjOBwxrpolQ2X5oVEaw5aOxLLETi8HAlq6w5WKkcqMvcr7XveN27bU
	 hjlFTHAMOWZaCNmTG0s+u6Vl/k/VQ4tCpD9upbRwCbd6W7jwNvT2GpmGHKU/OCP7EZ
	 QXE8XzW9ldACaUlYqVJk3WObUqh/VTG+qDFuvBMa1rukBpwxD+1QEwWJNK4mFRBfxc
	 dV6mNG5xY0flVMJOrMsGN7I9VjPe0HF9AnN/5A7SrnCVDnL0loXg9REkSmqZBTvAnr
	 fEwp7VK8KvjcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9223EC52D71
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172311275359.15828.17871973546853715501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178cac0d5d7ae461f9038910642c99ef1793ef619cdfe469e4b83de2c5fc1742
Date: Thu, 08 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723112753
