Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056F9306B3E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769759634; cv=none; b=eStXilWL72wM/I4I942wuZl6PBaE54yWp9DPqWc6WVech38bkP9DJVi7TFiSU0VK1Gc5hHYk8Yg9Eyol4dTh9U30YLLXgNqjmDawJzts/dwsE5i1YtdAZW0nxGqImcvvEdkWJJTUYXXWweH/k/fj6VCCnUiU1/2n7G1OKVj9bMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769759634; c=relaxed/simple;
	bh=NSTF/wKr3mUS4sF51RGstcpZz4JvHu67npGsA6q2MYA=;
	h=To:Subject:From:Message-Id:Date; b=E62WmOMFspL6tuyFzB40nA7VOqi4o6A5pwo9iV8pdS3vxOXLK9YbAzEfxZi0Vz7mVHHrUzur9WNF2nrdlhl3HJV8A+uu0oLaGvVqS/pWDtyOP28bXVfFKkgrkshBX7fsAEuzSJ4Gpn7D5iz27bXyAKsIs4rp/bdxWRrnjMs4UtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHLOE0ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHLOE0ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F248C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769759633;
	bh=NSTF/wKr3mUS4sF51RGstcpZz4JvHu67npGsA6q2MYA=;
	h=To:Subject:From:Date:From;
	b=rHLOE0iaRTcJnlekDCM2bhO3RwhbfPCKvrCugI0DU3bzCU4iB43L7Np7Zzr5bq9bL
	 aa0Mtl0ikXHzZ99WwxqFNpKargy0pTYRlN5ibKVD5YJpuHhFNzYp255Jg9TAgQ/mua
	 P8NknYYfoNgcjbSnQfmM+3yJBVLRQRzXh/H89Heg/fEVVU6tg/juoAij+XyivsPIRz
	 BGYIYrE3HYW8K5xf1CdbZL57kXar22RFyuilFOI6N7as9EVCiFtVgQOiLebIhgPNEP
	 esAbCt0dvg9JzZgbQ9wiVbeesFJRsef86Y+9qDklzX6Nq+fl6AztCCw7Io9SxtK046
	 /eL6BWIVQ1o3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021FD49C6D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975963358.28464.11071345238831850295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1a564b4c503508d0a88c8ae88ac6ed3b678323cb03a77e28e5425433d19616
Date: Fri, 30 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769759633
