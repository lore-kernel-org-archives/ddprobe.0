Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50ED02C0269
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788033634; cv=none; b=I/574Tv7zLxK1J2vYNOlvoyxqeThl+jbGxwaFhxQECl4OEzHd8/mRhFAfbl0awNwDhaY9RTmOEomfsqn/RgT1OJ3/fQWx6zTMcFUUelli/6jLuTkn4OOiDvHQMfvpqfyn09cd/XGx5V1jhvf2/hWzMCb5Wgka/KWpRx6w0/3KTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788033634; c=relaxed/simple;
	bh=bclgZBHRFFOWJmNDrZQl7pV1HUcJ0aEHh514Snrr9VE=;
	h=To:Subject:From:Message-Id:Date; b=JloYeZ2B8mJWbMGPEmtJAexqdrY4+MhrSCowjFFjwG1Qh6HH1C15ehRGr2M/Yx/nfh+u+RGEZ+TdORyBRzc3t5cvjmfpiSYGx9cONgP4reLtKio0iY/Sc1NyZgKjg34PZ0RzyL+lnAd3MNgA8fIaFXe3yZtDTqFQd5/SGzSqj9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WetEBFEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WetEBFEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCF9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788033633;
	bh=bclgZBHRFFOWJmNDrZQl7pV1HUcJ0aEHh514Snrr9VE=;
	h=To:Subject:From:Date:From;
	b=WetEBFEqAKVs7nMR+tfLaBvKykpjdnnkw2dLaVAo4ml4Yz6zYdrvtLOxhnTzmZW/X
	 ZFg9GaVRZkbjrXkR8d6NLUdYYMnMkamiDNZsc8mOvrRey5braMZER2aQOX3H6h0VqS
	 EN2QV8Gx81MkoZTNLBpdev2YwJ0Eh5i33m1Qe6N6HK4mDoOzIx8PkW8kAW/9avSTRe
	 oQcYRgx/f5wpZSkDKg5ZEXDb/eTz5H0on96xmYBlJXjVoLy1ib/+CY0o8oacgxUWp+
	 USqZTz/ApSHMq3rZ2KXs82mPFVU8uMqH7hMBt3uIrTIgLsX9I4TFmOMH8a9EizyU++
	 9OjbUEZAUv3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD37AC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803363368.23638.3864610924254237023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd65980c24a6836a2971a1af5327285a9e8fc4872ee30eeffeabc3671bcc95d2
Date: Sat, 29 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788033633
