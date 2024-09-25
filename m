Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF9F1459FA
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727275554; cv=none; b=KErgItMmL9kpDKvsRy4QazyOBJTsOpUIHcxnvAzKFusdwaGSx3Nq75nQ8OPCk0Xso3zY0x7trsyNmxG1VcFOL7KbCvTyk+T18NhfcFbsuYvf1silVR03IxTImAzhtIPFG9yS5s6u4m39zAQCvm9wZm4Y+LZ/aLAvvsgyOUux1bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727275554; c=relaxed/simple;
	bh=ZJcCwndpfb0b89lm46l5Xsi+Lwiz6zJgIKtOAPo4NOM=;
	h=To:Subject:From:Message-Id:Date; b=hSTId7ie93wqU2elgXIi7WnlPHnwUbY9/wWbanEuZyfaM3L/Msj5UDLJwa9tFxDlMb0HcnZ8PGupun1M8heM0VnmI5KvNhBkUPVnZVXxNC25ZxRGJmTG2B/jsGe0Q+4HnUXKXIBhNMgl22U1l6V4bixKRwpT7DQRj1ALx6clnEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1Qu4lKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1Qu4lKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C4FC4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727275553;
	bh=ZJcCwndpfb0b89lm46l5Xsi+Lwiz6zJgIKtOAPo4NOM=;
	h=To:Subject:From:Date:From;
	b=f1Qu4lKHZA9+GMr5TPlodC+MzcsdI1nIHEiPyHLSLDv/XrCq9sgKHI53mASLyN7x8
	 DwSWJULzH1LHXh36zDmiKYMc9adNRWqmRgHKtTFQxVi6y0OsAGAkltSQ5MQGiXs581
	 CsjS4dTRjRH3H2em9bJ6N4VU8/LAXST7CngVs9Cfy1OB4e9GC/weJv5MlwsiG/bpNh
	 Mu96iw9Y9X6wZIiUWhvAAIHWxHEKRFnHRNVz6864qAgQlqln7AAyC6NTJpUQh0PDJ+
	 Sr2hA9A9GWSAr31J9puSA3EGm5dndom7aDEzNLVfXrDk1G6pVeyRE8utiWiL9C7eLQ
	 ceWpD3GZ2q68g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D8CF9C77
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727555360.15247.3089070666416666073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e4eb2cefda07336c9c391f249dcb3bb6a35fd2b52244e851b20f5c8e67c68b
Date: Wed, 25 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727275553
