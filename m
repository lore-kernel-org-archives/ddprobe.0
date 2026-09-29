Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309315540A9
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790695236; cv=none; b=HPxfAz0nCX7gO+hvAu+qOlTf9xaNHTJdhuHoAVDMZjAQvBPFgWdVWRkJp1OtK57F6jPZ/gJl3JAEos/zZAgTsJezgD556RIj64lYuA6jPDQD4IdQFFDTE/u+IDfIZA/lrGAJHiw2ody3HQWW2bk+HuOUrKC5pnX5QWiPHVicWRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790695236; c=relaxed/simple;
	bh=Jadr64eUow9KiJ/wTepAGy1R3MzziB7edQ3cc7z6Q2Q=;
	h=To:Subject:From:Message-Id:Date; b=CppwOyhxVBkL4D3CXUAaAtLTK64BrkcxgYRULRcOQzlR2AXoDSn6CzrKh9oOcPS2EpwAacKeMVFZux6Qx1ZHwJC0NCTHVR2MViuyygW/IN5dXsmUmM1dhK8oLSj9Xf0LQ9s3uC2KXPU/mlRPwiXw6vkOibM89z/S9dQT/sJ0s+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQbc2tKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQbc2tKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEABDC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790695233;
	bh=Jadr64eUow9KiJ/wTepAGy1R3MzziB7edQ3cc7z6Q2Q=;
	h=To:Subject:From:Date:From;
	b=fQbc2tKFQBZ/Icl4Lr731adwUToCVrZIiLSkynpyw/HhIyV5NKc50v/1nZe/ftBXa
	 A3iOgcK+T3np8DH+nohU0ou+aBsrFhIBPKiAgHqs9jfBHS6Lzhr6/jhypXZC8kJ5mP
	 V1smnUuwIAvLUmxlzf5gecdZCGJ6Z/QzWUAkC8ARKl0uc5oo7+iwvxWoYV6W6xo+qr
	 fXzdMjQQ24U4JFKdCkbtWhiTXI88On9Gkh4/iH1rW4FbCthFa0RAHMZsjZMG3V1J9+
	 dDwUFogY2c7fJe5T0MnL6e8ywe9H+Mp1Vk8qHadqQJRjquH/zGOr1rOZVbSmiSZXDy
	 3gXvmrGlRHuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD894C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179069523368.30332.8639222994449115562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb2ee841a09e0ecedb79a9b6f6052f343855be039c0f8043b6be75c9422afde
Date: Tue, 29 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790695233
