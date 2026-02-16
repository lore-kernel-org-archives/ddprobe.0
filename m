Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189DD228CA9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771247694; cv=none; b=mgm7i/wxTILndRjlmRfJVzdIcL8kmMsw90iXnypRV5wxW9ML5SmbkuJ2SkuMiV2VmH8NhBYsASHzdu24MZZdrcjBZKMXzzk/KlcxvUI/J1vS0ggiplWpkwxxlAukZyHFIqkyXFaY/HEeiyApADLEZ+QHtV8ueV7vUqdbgmCJqw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771247694; c=relaxed/simple;
	bh=Aqm9vaMTR32FxLMHnWmGQeGlaszd1qN73R/BddjcyD0=;
	h=To:Subject:From:Message-Id:Date; b=hGNe/p4U2zFjyQENv0wxCNK5VUbIjRMlSfC+ngPltRQKXs0A7cGymgcblH/Fpo1dIt0ss68wnqsey6IAJT1tr35mBtdFWEB1p2Xz+Fw8nqx13P/xunbwxFojZfY+4tmgITiIzazOsMVKVfQZLbcSb0ba7qN/RMKDHhz8l1gwLUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9mwiyaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9mwiyaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771247693;
	bh=Aqm9vaMTR32FxLMHnWmGQeGlaszd1qN73R/BddjcyD0=;
	h=To:Subject:From:Date:From;
	b=E9mwiyaUvcNEQWTuiiklzqL2uv5FZYe2DhyMXQmrxamq1K1v1YJDef66zQD8l/hSb
	 0uHet/uq3W3F0kfairxeAVJxw8ZJ+DLmaPAKS4lyV/QfDIf3H+WrAPVcmA79F6DZJU
	 YAyiAOcoLE/HuoFP54k//L3k0f83MGcfCJoLAB+t/e32wk+41xdNHL8sJXSM9JbcSc
	 hiKIzmsspqXCagIAjtnqhz6qypTPU+esB98BkN89lDnLtGZS38IV9Z7Y+tKemoLnFR
	 GbN175XrMfjUD0NXq/1Q7uScSoyAWdMb4VUsi96nRqKQd4dIhHskfw0NXoxlrIaCga
	 6KUD6c6NST7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995ECE7BDBB
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124769361.10435.9797578646035561412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de29a6e5619ab569ac88cead801a0c2ef380d5d43748b20de9915c22b112ca3e
Date: Mon, 16 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771247693
