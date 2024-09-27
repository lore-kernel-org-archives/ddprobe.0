Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640902C9A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727411154; cv=none; b=i9uTT2VfQBDl7qPyrr/+4ZaxvWWF+u0/ikqoo+Qp9NXYlOLYITU3VmhZ8C+k0ALasEk2D9wQZweNrd++noUVRLNXNQ4Ti51N3iJeV+aoVE5TuNmhGa7DZGuMAZNn+WfWQhZJtb2WAz6Expf+jy9vqXzoBmx/xVrkQAGJj7ds2lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727411154; c=relaxed/simple;
	bh=r7uZNYrf4xNf+E3iem1fqu7y3MdrsJLrib7sgvUgT+A=;
	h=To:Subject:From:Message-Id:Date; b=X81TAMcgAMycKD9oKdnNYt58vjA2oGq62TXp6ApRaLwM9DpigilDC/+vpA0/xJOuAE7HuvhPg9jugzeEZm+WygPqQa5DspaxICfL5vGDPOnJgWjLXUPIbNMg3EMGfp+t0IAOXo8pti+i8diEm5nwU4Szbvdn39v2IvqzBoWpGFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfJN0gie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfJN0gie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73E1C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727411153;
	bh=r7uZNYrf4xNf+E3iem1fqu7y3MdrsJLrib7sgvUgT+A=;
	h=To:Subject:From:Date:From;
	b=gfJN0giegFYjvxDu8WIvEeRKbgvXcOTQdftbu8S3hnpuBs6c1N1Gl5lDuOlRZaWZb
	 SnP3T/m4nhihc5CdJlA1rg+aiGgQDI59DFaoUMAgX1Jq5GwzERSz2RYPMd5PFEa4HA
	 xFRD8kNUygKCondGrXkAC5i2pAkTCRnL4iNFi4lCFiZ/LZbaXQFWzHS6AmDLwggLQE
	 JbHFLH1Q0+BEVXwb/fOk0xVCl1VwugzDwBtvUxQi3jwEQX4FgzkKC+ZpVDiV/jTf0w
	 b5KFarYZyZtzysBTTtt4DGDOkhpLLVxsTS/3OnFUOdet/RwrEM/nOMcyXVn1vhGwkU
	 7vD+rlm1VvxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D071CEBF69
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741115361.10527.10243383789634003283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44dde942aaaa10f25f9ee5fcca1f721a0948a9ea56a3a02e75002bc6b1e1721c
Date: Fri, 27 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727411153
