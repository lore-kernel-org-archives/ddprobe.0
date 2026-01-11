Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B171EFF93
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768107234; cv=none; b=T6QscTATWdZ9ToxGh3HzWt0x2/8MGRY6ykYsPQWcEvFJ81VliU0pBL28cfYSP5ERjue3DKXdHHTgNWVIM28oJKgei3L3DrLwEe9plK0i/m0CBrQgY+PATmSkdThJjxmIX5zIN9LdzMX85dJeJeybNw94+Xu1j7WaSDso/naZ+HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768107234; c=relaxed/simple;
	bh=P5sNZHQZBGr2cAtecjVfEyTuUrabYNdI1C8hbtRJYdc=;
	h=To:Subject:From:Message-Id:Date; b=m/GB99KB26CDtQ2nLBBNI6tM/f/snxFpV6tju+2WItlpkXCa80v0EAvAKICHeEdtwtCmMtkzLlJRXrYrY39m19UTLe45JG7GVeucLLJ3p3Ub0Xnx6hlaGPqSc3YxIWQMzXS/+H5XyP32JbcylHzipK4sRk4Umu/r1ZfKaLnoHTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnM7UEQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnM7UEQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5383C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768107233;
	bh=P5sNZHQZBGr2cAtecjVfEyTuUrabYNdI1C8hbtRJYdc=;
	h=To:Subject:From:Date:From;
	b=CnM7UEQs+fFnqFY9FQWgrIBt0h/KABJqgNUJBV+Wh6zRDDvWJL5CQBl3Nd9Inkgzx
	 bfeoBDlm5hkWwNZviifQHxAPiYZdoTVeW2XOTtKRcXsxdLP6sAbCHenx+fldRTKwAb
	 LVncC4gytHvuifVsg5y6HKm3JmDU58uvs+YbN2pqT6MDPtCcWl8H8Y8wpJdGjeiHYQ
	 FR8QLIKp9gm9RmREq9/holVr/eKL3vmAcVqZGvYfb2Glhnni+v5TH8ggn0lPSa8af8
	 7ManBuHCc09jgwW0XudRsioTJQnPWo1u6PMr+UBpgmvSpde4fp7WpLoxW2e6IHP6fh
	 x/9SF7Fq1gl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE3D25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810723357.3299.17698285638023918669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d933cadb9042c3b684829a0c13d3c11064404528e4dfc00137805f86920e00
Date: Sun, 11 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768107233
