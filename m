Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61ADF11CA0
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719327203; cv=none; b=aKkVHn3hUoxPJ8+Z3ImOSFq5TU0/Gw9hcAN3BCJbW322nF2B4Pg06cw1tWVoTPPfSi2yAQa+is4Og17aYMrOMk3VvRCugLAhRBEtECJiZzbbC7v6MhEGO3nDY4D93js3UOgZSz+evVCFUruwEcZVpMhriMVZt2DfEsQYVqpS9ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719327203; c=relaxed/simple;
	bh=5rLLuJEzO8S7T05HHKZow/wgIR4LyDOaeo8V3D3Oxag=;
	h=To:Subject:From:Message-Id:Date; b=mb77w4DVskfwq0hI966qmqqIsURu0FVbqA2r3DmeH8riHDv9o5ihzK6Lx9I1ymq1yEhikjMym3pTKCgpKbq4yEPnkFD03fqJGJ3XM4A+l8b9keI2EGaVMf0oIt+I/TA/bFuQShx9P7FhuZsFVILOpL42FTeplK8+8zv7/BIhtso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iyg/w0l9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iyg/w0l9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE26FC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719327202;
	bh=5rLLuJEzO8S7T05HHKZow/wgIR4LyDOaeo8V3D3Oxag=;
	h=To:Subject:From:Date:From;
	b=Iyg/w0l94303EDdHA1Yk9T8fmUTVwCyzdYroZQ05uF80N/OaYPO43hSbbh8ezNYhJ
	 +WVVXu7V15Ac5ZLfi3YF1oeMno2vJxY3EIXTrCGGUk6D9LU/B80JDBZFBhNeavUQrQ
	 KAUrrzWPogQGnZWPbZLQg8dEbogVXDTg+Zxsp0r3GPQg4/ER1MjkWtZNSji9q4ex7V
	 hMyrr3b3iGdyWmQTX/eG4G0nJftysFxBe8PVImNCGRGofAstiLc/znVm/asZhhgLDV
	 pfKgcVwAMIxDN1L+vEdxEdcaGpqEMaWbpnZ3QEI9lPs1lJxjbuhC1hfctJPcoqdryx
	 MsVioGMmMTAgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD446C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 14:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932720276.394.1800781558521889166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d02428460a0d2abc2fb1c46ad30d1931d12af65883b4abdb36b399df55b6d5a
Date: Tue, 25 Jun 2024 14:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719327202
