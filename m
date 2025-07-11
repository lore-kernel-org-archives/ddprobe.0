Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB3519CC11
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752265194; cv=none; b=k6v0iuUOQNmyohoo/3MEKOZwUVZm3sEJPzsMrisH+/porlNA3VFgXHY74xWxq3A+7D0nwx7zwiaxiTa8PRhcLxSUo4QLTi2H5W9HCA4r22aCAZlXG6USBY7gvGDSM6d8pA2r2ZmAOyFE7b9kbt3NIK9h9h7cDPovHQ4xL5PG7y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752265194; c=relaxed/simple;
	bh=eSL4QCWiK5h4hCFwrXFx93vtddEQ4Or5MBFwJq/lvAk=;
	h=To:Subject:From:Message-Id:Date; b=MaSLnMe4VqvMoqTm4ZV33G1Xia5QGXgNIWE8nmA3tadupY4mL8jIFAofnqdFcGZMrcv35A2sOidpulheK+F3oLqtiyVDuwTrwWDSHF3b9BptiltowDvcY9qM+/taLe5ZbfnBHc1v3MeTRYBFboqBfjbIelApxj3sfecxmazzKzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2YX1QLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2YX1QLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7D3C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752265193;
	bh=eSL4QCWiK5h4hCFwrXFx93vtddEQ4Or5MBFwJq/lvAk=;
	h=To:Subject:From:Date:From;
	b=b2YX1QLdrq4qshfCQ7JVMIvOMi/XuYKgTm7vrb9BqV0ZYoImHnnOP158EpWc0fKBB
	 KZE1yhpo3kHsQ+5Ml8OZaoE+rV3gjycozEOCoEDADyn7SV/8NpCq/R2EfZ3QKJBYSf
	 KL6pi+f+VXNytFLWNEwtfbq6xgkCX12GiVOfblIN2+hLzhgewAxP6bwFANsvVX5SC9
	 gmDHtoKSl/3Wgvm3d7GxqIdjHlJe+KnqNuD4QRE0Vv2e/0wbmDiRChimvETDLolfCv
	 jA3dz+TeTnmor3OjUEmysBN3cwpuGNd53lJ/Tqk+EHxUt240B/cUNw7oPVRkMCxO6J
	 I2tZM7OFaOI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E3C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226519358.24606.11240188383517788179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82cc9fbcc1fa25f777394b989d667ce7735a6365a5fe1551ccdadecaaaee9dac
Date: Fri, 11 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752265193
