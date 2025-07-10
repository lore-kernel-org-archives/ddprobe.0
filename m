Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110AE2222D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752184194; cv=none; b=oQ5rcKIcMV0TLXNOkuNnQI6d01yScAGzxaXEjgWUUkKvbKk8B7p9TV8zk8IUZL5QMivqkbURe0DfU9mMxKvuVkz4rJOtwORoL3q8e4wFmTlDIe/7cXC+JXoCqo28RjynXNy+UeapAR7OB7yilelVG6vQ5zCetK21F0lXL7Y2k/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752184194; c=relaxed/simple;
	bh=OOxQjqencln/IfOEmVF7l4UBgFzTscrnA3jDgxImGV4=;
	h=To:Subject:From:Message-Id:Date; b=f7j109jO04XRvyn4hZDFojHjpNoL2k63jEi6Z1fvXzGng8ifq6Ym9cQWPmqzvboL3KesSMRhPjlVg+G5uCnev3HPG6kA60glyc/JM+ruJVvcQG+qpVtVYSq3V+SlDg+40p7a+ogeDjOXnyN10xYHEoWDYSJ+mufnyxzOzsD+cN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnIReCaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnIReCaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D45EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752184193;
	bh=OOxQjqencln/IfOEmVF7l4UBgFzTscrnA3jDgxImGV4=;
	h=To:Subject:From:Date:From;
	b=dnIReCaC/6+NQ9u5PlyK03sbyY9+lPSEKUWDEyC/dTNmjmkM7MPMKtSVRkd3dZZ4K
	 QIKUI6C2gzhgjVHKKYPypeXUMKHuFxZvhd6PbfGk/YnjaJ9Al171/MwAHBOkCmNkF1
	 ivEImwtkA7idvgPUloOq+JsmAA1HjWxZklSVu+MlxpFtbExwaiHXrtKNvKiNBZ8RFs
	 sCFmiHSALHUmHF+5ZrHrdDUSrRnUu3X8X7nlngV1J+yyfUN7kA8F75TJUr4VGjypFj
	 V2vf2C0D6MlmwQGRmp6y7nFYc0Kp4Ea5LxCloTyeBg0tpF2/xhZrNu2DjoV65CUlH9
	 qZRV9QdthAj1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E937C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218419357.3993.18435608483632226417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8e8b2fc2d54edd701ade48289f9e570f57f317b3724b529bb6085a4b26664b
Date: Thu, 10 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752184193
