Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151E8330B28
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772730894; cv=none; b=c/IW7sOvZfERPYFnuz3BlNo3PDRFi34x+DZMNUknZ5BAueKmZe3p//Ab8jOqY0ng3Fez1t5kwIYJjRmVtjuN1o57pZ11DYXger4oegrdgP9z9xRHjaSwoppOS6hYIXeJ3ySdR11YpQRrFNR5MJBE7EfsUN0mhMxA4NK6bJ05Y10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772730894; c=relaxed/simple;
	bh=XiHGOnz65bQ1NvrEIDLifwoweuwyOE/qApVobLYt8SA=;
	h=To:Subject:From:Message-Id:Date; b=Um8NgQ91GpN1SdwdbBm7B8Pn9W8avIxcado1LiOjlIQKsXM/+SYBTKRzRw+PNfP5GA1LaliL/76IYWVnKoXlJiFZ2psFtu6Dx8mEak7Tpo0RUMi8Z1GAHzW9rdKivOXg5mjNHIoirBs+8VVTilHTnlD56EbDJ37TDZNE89bcb9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3b27Ruh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3b27Ruh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F95C19425
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772730893;
	bh=XiHGOnz65bQ1NvrEIDLifwoweuwyOE/qApVobLYt8SA=;
	h=To:Subject:From:Date:From;
	b=L3b27RuhVuGHRlX/hgjmFKCSENGt7w29s//EVRgm6XjqVbfiG/la7LhzUCrFSYu/T
	 KqZI4oi3tqIlBq+oF6WNkYsJCfwRELFuhJBe2kd478J+nCIc66DoVZTnZdFNN+YaQJ
	 a0TcMxQ/k3Cd00/7hjyWDcntEbyXLNllw0fBTutQVCTqwZ+GVWJLIYHoIhvYdD1x/p
	 omcaJ1CdAZaHHPdfc3Frggp1IO/XiypVve8J64dH+UKB0xxII6YqgSu07yZAGq+lff
	 do11KvpvWVX5I0uNUTCiBOmNajPYSRtycs3mSlKSS8VD9VSH7tzWgWhRNaSyXM9KMH
	 Fn9vmgh3CcRDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979F3F3D33D
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273089360.15226.8595144822245335578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18fd402ea17b2e1c18b2e8e1a88db1f62fe664874055252c918c9921f2177188
Date: Thu, 05 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772730893
