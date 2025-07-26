Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21810207A0B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753562994; cv=none; b=R0/FgmM655OYvGryWtEFFGGGl3TMIcAgdiBYHM1aC2BbgBgvaGmnjVTWMOPDFDgc8hUu1Yb1iLF80Pc2b/hyQb3mMaILGv8NNFmEEE9OvBPOGmqNlFxOVZFOufvXs6bpYcm+sc5LmQEFdU/Xp5UrdnglqolvscVzJExgLADmR+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753562994; c=relaxed/simple;
	bh=N2H5vCEtd/8R2j95v1H0w52hnmme0UbF9G/hh2LGdUA=;
	h=To:Subject:From:Message-Id:Date; b=dkMp1WK0/MqStF16HBPsoeoN7I6/zkqpU3nHptVEPrbuoATdPE9yvXHTw5l0JmMUicikatdlVCzmgv9UHMeA2aDqByHDsaZsQYTC2l+i8NjGZyAVjWBhblXH+L27dBAgpKI9Q+fNjXGnRzza3cDiODDnJ0NGpjj2VpeYYsYDoMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5HTZOMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5HTZOMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FC1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753562993;
	bh=N2H5vCEtd/8R2j95v1H0w52hnmme0UbF9G/hh2LGdUA=;
	h=To:Subject:From:Date:From;
	b=D5HTZOMwN3jFY66sQiPi4lDS4Slfwc29hROd/H3TKWFHmVQaLJEJ63iVc8humnwki
	 g/wDbn2MOZrf3lGLll63RCNnSRO03bAtQXd34KZzXJcGlPhcbQJUFDrUnY658rpPCo
	 /LpOGhmyOzjMlqL/xztrN7I5418FiuPOCDidnZxrFU0aMuaczRBchzQ75VwDp1gIXv
	 n2uBPdaUYDSkTRTaJyeoszyKhlebwuy3jLa2HxOGUgP92bul1a48HEjHrjoZBVLrL8
	 +3Ate4nv/xQB7cFOCL16hb7059+pi20UM89+6/ic78ms5iH5Usw6SI+3NfYoiX0XJs
	 512ezXCy3hEJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB0C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356299358.23866.5714348553786106340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0987372532ff0a6d2d8d9512e296fc84158096fc212c93f22d3a2deb7fcde324
Date: Sat, 26 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753562993
