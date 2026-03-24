Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C323E1215
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774347294; cv=none; b=EvUQtVq+zKQ2HwR59ylXGZwG+sae8h5eEz/pgTGmMjyNGmf7wbASb4GIi919GhHmZgxUWYYAJ5RjV3wa9BPlhvaotLGQoJNW50ENm8brMdsNTPQVrnDMGlqUJ8a263H7HAsQwHCMDdee6WEVwoktLEQ196J75Mr7YDtdIZbEGNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774347294; c=relaxed/simple;
	bh=vVf06MCmu0IneJLSTdp+PZcVSiFg4VRjRY/xdHHVFME=;
	h=To:Subject:From:Message-Id:Date; b=pt/HzA+ACLjz1PIXwaBW4dWqYGQArM7DLEOlF/jFaGl5pMWeXNHbKdpVL7xEKFafYAFz5LnAzbGK/xSZ4BpNrFQFEkFsqiv6TFt58f8e2vNDfKzyu+3DstBpbdXEu/aikdkWGMQAmz8Ljycn0E5zidFJKVHuxwXliKylwA0gGZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luYXAFIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luYXAFIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB5C2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774347293;
	bh=vVf06MCmu0IneJLSTdp+PZcVSiFg4VRjRY/xdHHVFME=;
	h=To:Subject:From:Date:From;
	b=luYXAFImlf0d0LAiF7JTOC7Dq4Wo/AR2fWO39xPIsVuQglw4fXlNKhgGgLmKWD604
	 N+q22Coycn/PXVZBTK1Euhv2WPBh3B/NphShhEl3F0ELlwbZ8mz8ksVmJ05n5hD0+k
	 e6/4dHujhfVn+SadOBn30aeFAuDSGUaDfzZv9u6MVumHjIla5DASJLN8dCNpMaowxu
	 HkAqET0jo/B60a27yx5IHVo6GWY8HLN7/lnwX+y5fajK67ZI31XCkBvT3Z/Lzzfofh
	 C1OE/F5B10kIZ7+q4H8dLuAjv2VpTTFEXkGyTmtpBD3MWIMH3QekTVaPv8GxfVz0LD
	 rpN/nPRyR88vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BACE9A75E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434729358.7993.8472282881430214270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65af1530888bcc2c590275af06f1f368963ff4f7286cfee9a309bbd9c637cd56
Date: Tue, 24 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774347293
