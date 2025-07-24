Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A87C1853
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753357794; cv=none; b=BhUPMDQAtXYjP3MiY6o8MgjYAV8P1/jjSu1uOCXov1nQ1yyfWtGeYxTl5TEN2K0IjQAYHESQrb8xbBQaGsOTxYQI2ekLP/7aLU3p19qhxzx7E5vcyBD9LTeXkjogSWkgMirDWqRmLtyMaxdMgpTwRMT4hfB1u0kilRHOUd0JDTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753357794; c=relaxed/simple;
	bh=RKPJBOaoY4P0qAEpw5aWeZhYQrFUMlb6PiW/5N/GE7M=;
	h=To:Subject:From:Message-Id:Date; b=VDfQv23P5HcLQOY2kf2cfHEz9X+B+aHfLIgikvurcZhgxBbnW3Cri1xwZQzw/nl9iQcZhRLVBUCVYu8+7mO7PwvbKBKn6clTEw7qH0MQPVdwIYC0sVUwLy6/d78xEh8HP847nmfZ52QHdDYUBH79jOwxZ8pnx18SPl9xO+4oSsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV8/mAkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV8/mAkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A4C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753357793;
	bh=RKPJBOaoY4P0qAEpw5aWeZhYQrFUMlb6PiW/5N/GE7M=;
	h=To:Subject:From:Date:From;
	b=mV8/mAkG5nM9k+Y0d0H2CC+IIf/JX+0KNy2WCmVLLHlvvbYymPacMwLEnzP5W2ope
	 PWN6ACRcTvWxP3X2/VrJOdt3niEeEAJgMgIprZPJdOsFox+3j7W3xW9vNN88KNNjBy
	 cVq9SnwgwpITK7Oo3eBAx+VYJgw2vALqu7bD1H6j8Y0Pp1CJDHWrBEN4KOJuoC6feK
	 sEVcUF5JdsMvU73c5MNO0kiF0yfpeXgshUdZq6A7MQExeCGjT7Sst63hz8Q4Lx3TOr
	 NI3QKNBFyZba0kWwker4dmHwzNV3+4lLNyXWrjF7OMn9NPdae3ejUlqRFxCRy5wZUZ
	 oGovx4jQMVsnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF17C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335779357.27595.2805881071236503248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd09ba1144e24c72cd4d487d5ede8dc2ac647385a75973413613ff2026f9978
Date: Thu, 24 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753357793
