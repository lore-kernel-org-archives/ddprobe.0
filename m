Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EEC20102D
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745485195; cv=none; b=pU/DOoTryvOXXCLttLMQSEgzqPHY2vqvhMAbriP5Z56Or/mJlsLfCbxpQwzHUhUDfTWvw9nqMM2AI6hYDdcsMo9+2avz4rk/sWn9TQBT1qmBHJraV84toy2OMZokYw/+xezpKURaMjaKH28fEo5rVn0EmXVLJYxtaT5CSDtAbDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745485195; c=relaxed/simple;
	bh=p9G+IJfCAysVZzh5v7GhsIDiC0Zha6oCyswv5CkYxIU=;
	h=To:Subject:From:Message-Id:Date; b=QYxE1rsowz9n8cZxq8mE++65kds5TERfMqmTDqiDG4Kxsd4IPBpWMs4kp7+l0idNgaETH9RLzz5bM1PaKhIQ3mF/otByVMpREaqRwyX5jzWaWB/SMnDuOJm/BRoXZ3BjLEH1eeLDHnICy3Eyx2iNVfr+vEp4lUePaC0vTKdsOsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxxZ8Uer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxxZ8Uer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F94C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745485193;
	bh=p9G+IJfCAysVZzh5v7GhsIDiC0Zha6oCyswv5CkYxIU=;
	h=To:Subject:From:Date:From;
	b=lxxZ8UerkOu3iqPJYoAC48/ZPE60ipn9XP8G2YrObLydEDIW4S6w9IOOkcU52unZ4
	 3O2erMzg+qaduxQCNBKKpqp7nInLPnxTrp1NkicCevK4U1qMjhZK8CvWonkdLWYB6j
	 ZU79hvEqUmDzIANwXD47fgf5wLI6UkWSm8MWXXAL3Ppg52sAPmT8uHWoyyWgSvMBKo
	 XlwAmCQKzNQMfBaDHeJEOf+mKTJDp7k2QB8ICRH4Z7heacddAbZBFoIEzasmxcZudd
	 9adRbhozwWqLWO82+qnG6j9RVSGHuxtEOPsi8ese5Af1lpS/hrIL+bG3Vf1Xs+qAux
	 S2YQoD3on8iqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E816C369D8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548519357.17828.3002297235283913714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4119f21b9745616e8d07af5719d384167885f5590fb8e20db795216f6da257b
Date: Thu, 24 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745485193
