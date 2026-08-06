Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5043B287246
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786009234; cv=none; b=Z7w7sbQtoaDuiQzVKV9plA9owFJiXXcu2CM0JxSdloFHoYxnBBwUBHR/iqRvVsNrS+T/yu1oRyU3phE+rn8ViIdqgY+TsETo+w14jdWkLfzuAN1HF2nzn54MvkfsOH4locOjp1KbI8o4zpJIU+XotJclgCRE0Dl/HZ7LfslgJDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786009234; c=relaxed/simple;
	bh=qjyYEgs/17L3nVNRK0Xk1PzoEKbXBZgau6M0MkOH+uo=;
	h=To:Subject:From:Message-Id:Date; b=PzmIhGire5LMmhuVQV94ZFSF5P9N8k7lahMKUhdghFBAiMw2QH5GHNZS3FdeN0oG7xoT+nl5aSaOt+Me237iIbgIU0qlVi4ARiN4lLsTFvR6xVWpDASrXUo1472IRTKKIDKaBUos5JVF6eNtTkxKtf+pQeR6WIk8j+GyRknrXyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKO9DSbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKO9DSbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95C3C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786009233;
	bh=qjyYEgs/17L3nVNRK0Xk1PzoEKbXBZgau6M0MkOH+uo=;
	h=To:Subject:From:Date:From;
	b=cKO9DSbSBDKYml6tBCXdxl1dmXVcm+VICSsRLwo2yS07vN9r9i24LH7pXMyDk6paJ
	 dwPq6Scc72HFM/Z7Bo8SzGJCJXRH30zKlYze4BPFxlvb5bbVad7VbNNsy2njoVByD9
	 aabxCyrrwVixOxNGlfGffXBtRP8qdbF5zKJTxTVQPOmiGLORVuC/avn6yRPXoe/Uvb
	 Toihx5F7Qz73u+LuQ7IKgyknHZnnFDWDlMupHN+aRbj2MBF1O1V3WFylAO5ir6n2PJ
	 KaeHsi7y4LY5En9S+LXAvcOpO6r4wKT0Vxuad6hBi5RZYFT5Rc8bWBS4PKkKLA6CtC
	 D0mA+nMm/vnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A81C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600923371.15486.16091852873063818657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66ae9d9063f537055f891547d65ae9f3a144b7fc1c7c6e6830b6f6b2dc751f5
Date: Thu, 06 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786009233
