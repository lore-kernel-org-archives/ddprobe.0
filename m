Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFE71B4F0F
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743419994; cv=none; b=oW+oYRKl3YNxiVltBnOB4X9+a7qnnWEpzV7ajTX/gflUSkQqmTKnZ5jFfcVzS5UY/XpPyU0Ao/+mj1v/3J9c/8UkNfV9ZW1SYXqtjjP7jIG+3SJGC1RBPWcvVciZVeXmydXHLzN3rpW+G+gxYGSrS45XAfvN/6YcrRHnEed6nbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743419994; c=relaxed/simple;
	bh=7xxturA5jD5qlIxhRK4ddPfrWfkJr+3tvUO3dnfenUs=;
	h=To:Subject:From:Message-Id:Date; b=evtYjZ/kGf9EB8G9RmhWPozsPgxZ4AAMxeRwK7qnTIuHCYOkOmqwx5ph6W8TMiPTtTB0kS1IgS0ZetkX1LKN+ScPUHPhzCQ3pCZsHjQuIh4LGeJvgT0DnRfGPPXPMIhQp1XGYtJX8NeAVRCSmE5JDE7Yjm3DWyBjRKquqwg5w84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUI3f4WD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUI3f4WD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF281C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743419993;
	bh=7xxturA5jD5qlIxhRK4ddPfrWfkJr+3tvUO3dnfenUs=;
	h=To:Subject:From:Date:From;
	b=XUI3f4WDWFuYdAHLDjYn+VKF2FqsBrG5oZlI96K5YUM5gqm9AHU7dnIb7CeS/+8h3
	 4ERRsvuJsaGsEPSI7gX3nnAEHvPChIul5AGPZyLMLAm3n8tFPAH4frcPUquiCh4+sU
	 kVgpu7nOSobGA5YzluCVO/lF+V7m744fvfb8L0yxNl+HAupiIBSHoW80tu6EvHBhVD
	 NwF0MkuAQnyl40j69AudhmdaXSEHEWv6ejDPn/tNGnWAwpTPQZWMx6SGpmmbofAlPM
	 UCBwJmggb35se3DkHauuNs6o425u38/EOA+rINsVEKW3bqJY2PAwxHY0EYzgz81vaG
	 2iDCC04iHki7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990E8C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341999361.15948.17679161450432194013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9249f28ae53e00283a36487765f3e922878f35f4c3794ea33ae8f93ed27a326a
Date: Mon, 31 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743419993
