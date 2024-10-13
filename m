Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D9628379
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728803154; cv=none; b=m2r7q2RlcvJy98BMaBsSncXvve9lNN0LDArpi4tvxAu3fxBv4vjoI9zMVPwZpHoVmRaootTtd7tnE6J/ttXVKp5btsBeTQeGTwhCC8vRJEcRWL3yLjOJdti9ZHgIR+hd8IElYfa2znbibXBTB261VsQOHmPyyA33fJkXFMUUx98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728803154; c=relaxed/simple;
	bh=CPKfVxGIvk0EEKRqsmVQcDhWQycL1dMBf0BB9XeKAfc=;
	h=To:Subject:From:Message-Id:Date; b=HLkLYvU8SmQrcQY7asRkeCZ2t3JBufgL28sF1f8KZbBxDoaL7/IQpVBEu41OXQ4Bv0pjEAu4z+1yDH9NLXfC/zPkZRxjMAF3Y3E7g70Kxn+MH/c0GYTuJJdOn9VfxtPxeZ/V/Bh7eZTewKn2PjhBP+T6HVaRu+8rvVVWDR1LrvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxTYirD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxTYirD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A980BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728803153;
	bh=CPKfVxGIvk0EEKRqsmVQcDhWQycL1dMBf0BB9XeKAfc=;
	h=To:Subject:From:Date:From;
	b=ZxTYirD9Rkvokl3BMUnIvu1EllmzTydRsm2SWmRBwrgqRP3cGxw260iHIrEJQ9yub
	 Zeybn8/ijNZGzDmMD7Qc9AJEo4XMaMb98QaYQRFNkfcRWrIEHVsH6Gae2yl+xfFHr+
	 LabystyqkUKLtDBPtNGjjtA/E72z3vGXlDzM9xYZ5rDxowxMfFrFur56qQOXvc212i
	 QTVNnuITe34XOVV0htK6/F7ie6F/Cds5fZQVb97LEKE3EIwz0e6QE/G8tTDjFN35vU
	 7UQ+CCKGVAKWZtAAnYcKkIhvkLG4nc6i23XPsW/anZewm+dLgDp1T30Z2HfO+gpbYl
	 D/uxrDn11UnIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969ECCF258D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880315359.20065.13791292634735191417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e323202ac5aeff686bff3eb94b3c4e811bb4d3d77711d91ad22f216aed84c2
Date: Sun, 13 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728803153
