Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D298BEF
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719394403; cv=none; b=KRKkhpx6RKEdTvZGRAMnhzuPncL6x1MMSkykQVLG2y9OO9aDbTRSzIXN5V4vkdEqqsnunwYQcRjxERldZ3HkgKng2DDSoHx3IglG2gucQc1ZgDJU0ESkIS88TGSRTrZTxPHCl5W3Z2rT3a6zyQx7GhJ++/EcEQ9R6dsEaf7+wTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719394403; c=relaxed/simple;
	bh=EKJJhv4VncmaxiwecpuY7v1f7+8sEV7Nr+GNse3zKaw=;
	h=To:Subject:From:Message-Id:Date; b=rZHIDkK3h1mbsnoXFw9NRzFogmsGJvRnWZ43SZ90ZCy/E8QSVpOBrOb0FBIa2+lSAM9hvcAVJTGHvfJCkhHajc8OtZE6zh9/XTvOAGbQ/E2q6TusyZ7IGYBi0NEdLe0DiDW8QYp9KWGi2rZYbVp17Q6Q/QBdCACm0sv9Uth7Pn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxKhBmF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxKhBmF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D850DC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719394402;
	bh=EKJJhv4VncmaxiwecpuY7v1f7+8sEV7Nr+GNse3zKaw=;
	h=To:Subject:From:Date:From;
	b=VxKhBmF+9m/X1s10KCuJO9rqZV/qJlMKeVaGWu7YE63UdpsLD5Y3S9XmdYm2ZWL+i
	 KO3s5fxCGoIb3ROr4e+3kQ3KvipzcG5ZxeAMH2yqpa1iTbk7yQc1mMopYj9ZAszdMO
	 NMDxXhz0aw5ycrlKkCp1n+MJKL82+vTKjY7c3kwc0DRRD+CVvq0T9nX3arefE407WF
	 tFM8zP9Byy+CuVDdaQmOAQ9RpcU5Dw+JRN/+s8KROtNRNOIB+EKcwV3+UdJfmreV18
	 6Ao+h4SDkaIGp53qUiK1Pr8aTA8f2ONiflP2wYs2aezS4nas55j0gcUH8JzW/DNsaB
	 bgoOzAcnAalcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2423C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939440278.26179.8018826216028064180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebf57c9b1504b3a4a96ffb3302ca154f98077c6996487ff76084093c99ab957
Date: Wed, 26 Jun 2024 09:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719394402
