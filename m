Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D60038E5C5
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777961854; cv=none; b=l0g204CoNA5whyzPxK/NOAtpWjAlDim/en9PN2dToiIu+Eetc7gZMbfXLEx/0fTDJ9quQk4/T2jPQnYCr2WpIjZmmIGHcdGIVNMExIJH/vL1cxFTmWD68NuPpr6hfXp75k7NiZSAPs+oq4DTOhgptEyCMNChgcFW3ULyaoo2QoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777961854; c=relaxed/simple;
	bh=gzBqh/ufBdg3+wBM8hMo4mjMKnOsIOz6v4/0fB9F66E=;
	h=To:Subject:From:Message-Id:Date; b=P9xIiG60Eu1rWoV6HAuQO2kMWOwXDJ4X+Unf4FkjWhV1//Dgcfn/snGJQhrvT5/FbiuYIUA54Rfi/kajImscMEYVuV3IuH0HvPuZsVB8viP26YvtMx8wZ0GPYUGQz1+nBspkCXZlQfOtEiYM2dTd+qrS5j9UCDowyPKQJ4EzFhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh7GjOWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh7GjOWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6571C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777961853;
	bh=gzBqh/ufBdg3+wBM8hMo4mjMKnOsIOz6v4/0fB9F66E=;
	h=To:Subject:From:Date:From;
	b=sh7GjOWQzJR8bArhUWph7EsRytn4hpeHX8+M0NVzpJH7wrsHHMEGvjkPH4XOIiJ9I
	 5N3gA9xqE4VX8oqqGgtYDQ3XRn68y8ZFPdRq9N3jFC8U/JpAn6qiGkwEiNFzL8wvaO
	 cuV1zJ6Z61WlkVvypks5BvN/oHWZcxGvpn2sgiSShJCXoAqdA3EFmQ50qIPLRs9LzN
	 RxAhRQ55VVBCGY+8RMEz4UEY5ON7YFU1mz5pF/KdzajuzHdlnuBLfJW6siQYP8wgIO
	 7HEWTA7Nr4C8xW3ml8U/ouEfy+2B0HLO1RPxoq6bQkEZ2aWQH4bpUe/fsG1//uqNAu
	 z2FPKGJKe89Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DC6FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796185368.18895.6329283883983771267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1c6af5e773a0eb1c1dd82ed0bff4fd664ed4bcac1a47d2679934f33fe5588f
Date: Tue, 05 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777961853
