Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1415421B9F6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777240654; cv=none; b=a/TSaCFEnbFh7sVfxufuuvOhdQVrumDlh7BTethLWFgTniTtLydyI41rdjeE21+hxjKGscn42W6G0h7tD0BwKgFEuQQMMGwFZwbAvV6N+YrMk2NLcPpMeHSP3B+Rlh9pHW9NyTesIOOtBxjZkBtYCzFUO5lH/2rp1cyC/6yzazg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777240654; c=relaxed/simple;
	bh=sMDps062KlSxJ6840K537kRZpou6nVD1+dhqFNVDVbc=;
	h=To:Subject:From:Message-Id:Date; b=NIOeM+U6PLgmrpXd4E+9EVkRlzGVcSzpl6WLcz5iF7qioNe2QaDgvzmlMr+I/mvQUCXkvSJ37xJzZdx5UFEi6BPnKxNdvllzJKTE9LzajaIFQXeUtSQRqM/NxqOx8p/5UKYCh8Zv2BikVN1dJwWEsVgfHgXbEmNUIfeuuJJvXik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfq+fheY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfq+fheY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8576C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777240653;
	bh=sMDps062KlSxJ6840K537kRZpou6nVD1+dhqFNVDVbc=;
	h=To:Subject:From:Date:From;
	b=hfq+fheYYWynRiTsmucCpBRVmuwyiUQCbv89nZdHgGHktMvFqFYtjhugnjJ7kfdk0
	 m0EGciEJ7CzJPFzn3I+iAFbkukBc4Y378UvhRsXkNDZnCJuhuFlqeT2g+sHo5ynV01
	 fMEuc5Ey0gGAYMYT9DXffnpVriUKcFlEyvSfJ5l/HTWMB2gFWcnNL4QdKHDLGFHfG1
	 Gl7EzFwYLky+Arj6+3J50H7nnJZq9ssolAd5KXxIgLUiCUuJeIdu67aTETM3W9oE0z
	 fgxEhi2+UraSmoPXKPoDVfi4SuJnxbp2YCNa5FIikXjJUoN7OlsWFJFrXJ8EM9WU7r
	 SJphVPDQVUpiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C2FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724065368.1002.8902332972539921944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0f7ed5327acfac0a693b9f285282f3947a8740f7ddf4873f3eae0b09ee4e21
Date: Sun, 26 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777240653
