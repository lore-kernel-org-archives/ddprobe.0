Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CA91E9B3D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761928194; cv=none; b=m82FTpwcmFXBv+cfuIKj2i13Youg0/N8gRP6M/T/AVgQANcAA9P/dsMXzlgM/CSJhBfjnqj0MFr9zpHI8r+cM3hqwFGd3JxAAV/OaEgxYlKaLH2pxHwf6xllakablO64NwEY9LKeW1Etu7sDv37gFHexePghejZOB1k3DreVg5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761928194; c=relaxed/simple;
	bh=x+Mo+q/TqIKbE5fqnGJrZ4tIOJjYD5/u9wgXPwoD9mA=;
	h=To:Subject:From:Message-Id:Date; b=bml1XuPYyhdCC/SHapAlrzMge1oiUGPpEgdGQy5zL/FVHz79662PJM4rQHSmoYzpUFufgxNJNCY/fbo1hly9Und9yVZY52bDuYeFKfLXg50a9EHkdtOuRtpom+lmdk0wjb+nmgAc8AiaoaQCHMHfR8X5IYBc1QjPWoSkuZrZmeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Od+3KmUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Od+3KmUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8875C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761928193;
	bh=x+Mo+q/TqIKbE5fqnGJrZ4tIOJjYD5/u9wgXPwoD9mA=;
	h=To:Subject:From:Date:From;
	b=Od+3KmUaHr8zPZNawkbtazMv01MNL7F0SXcsxcVxbDvHlaVD5agcU10BX1o/0ccI4
	 jlyMHrqiiWH0Muu18o8hbP+/bjwIi4Xw5T8t9BvDWfSzC4Cdb/VuaTrrH5bparX2tc
	 36nSGh6DNQh5eXdcbJxADwdR9mtH3BFRDt9pC2xcfPjUH0W0WFWHc/sUqyUCxDwyI0
	 iKxHdNpVP+1qcKIB4TayvVdhmPkW2oHHWXxZ4iL7fmt0tN9RA063EVtEQ+MxtDL7Zr
	 94oqQ4wHYKkNOtN70Pl/iALv/3Zm1MHI5NKfDP1COSyudc/5VtQ/WAUNx3B6Tl7raQ
	 WXNNXMcS56bnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B1FCCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192819360.17050.2466070307389358429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c800c91e8101b32cdc8e7aa10c4989acb7cad0efc4374d6de80470c262b85a
Date: Fri, 31 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761928193
