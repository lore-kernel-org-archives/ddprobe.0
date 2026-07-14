Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3388430C60D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784006314; cv=none; b=dGt7VQg4OzqWGXMuRalZTzYqHFxqxFH8xzB9iw87bz4LRVtfZRQXRJ05mLLMtwls5SFgJxa6UswQI4pWDGGcb8wv1/1cU2ZLRvVx5mNgqbTEhxmPF41ZrtdKTx2ItonEw4j5LRYXD98cJkygxobuJidcTUBOagJpyE+4NX24GtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784006314; c=relaxed/simple;
	bh=CyJD9DxfGU2KpxE9njHYapifwlB+hW4jHjtuuM8h7z0=;
	h=To:Subject:From:Message-Id:Date; b=ogE+fkUBoTYQ9c03PztVTyhSMrGHwl8eLwm9RCRrNG8l66styo3alxNWzmlf75StWQ+hHYy7YYssA5RDg1YvTVuAzGACStU96/zXp7i8+r8qYuLLFeJ0GjXjuNQNzZyp/UwF9yzOacYwjYcn7zbdZkDwq7QgViFrJSKL+glTQ6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2M51HNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2M51HNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC9BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784006313;
	bh=CyJD9DxfGU2KpxE9njHYapifwlB+hW4jHjtuuM8h7z0=;
	h=To:Subject:From:Date:From;
	b=o2M51HNJR5p+T0ZuFVPqVXP+lE7Ksva/ksRSh/+7EmRK+9knclHpJrKik54du/ba/
	 8JnX6lJiznWoFmTBsVK2YBPtDfUiQbSxbor4Ql5MZVfISBkxBaoyjgxxCzq8CUuyvf
	 U2EvRWM84Ntr6EgESjRjvPsAoLzzLpv7CqlNcbFBvPTvFmWpH6Ve/twWCv9mE8VWci
	 TM21tICp26trYW00tOZPJKFkxzErEaWQXLpl17civao5/FIPukwVlvq74uaPlYJjAT
	 mzs9wB9NC2IbWA0U1LOBA2Kwvre6+mhXq7ENGaQjBwr9DLLmCQ0CoR7BN/ZFjRp1kY
	 nEIndZn8NwJlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9810C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400631368.17938.2231653125405250343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ae89dea3b0a7384ff5717dcb10a09c5411d0818423ed5a88fb35e8496c04b7
Date: Tue, 14 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784006313
