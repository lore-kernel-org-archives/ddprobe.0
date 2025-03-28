Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5861865E5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743201594; cv=none; b=AIYqOP2CV3wdQwnbbwERpGZI3ardxK/KKV0PAj5rqJl0LnV/9Nfazo/AskBWic7hkLTPpg0FRnDp9bXaLQpBHl/d6k8M3jjpzimP6dFaGyZttkQeZ24UfNehYLhjmn5MWU8fwRv9kzwrerbUk7NC5n6219pwwJKEImf5HaH+TC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743201594; c=relaxed/simple;
	bh=CMBI8E5uijmfQz0heRWiZsyJMOt/a1V2bGuDpU1pLyQ=;
	h=To:Subject:From:Message-Id:Date; b=WcE3GNgIXIxzJmiuWF4y+AQdATVrI8lbS3IGbjOcC0TOOVZ2MleYi4vkGkLLX3HZJrj0amBM8Th4OKcOi9slm4EF8yqTn1ImA3MMJLrZBactczUjPGbppoSMIj11XEFMz7N/pvXyWPQky0xwAd301V3RZ53s4s2V9vQau7LgYVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sg5ji38u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sg5ji38u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9673C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743201593;
	bh=CMBI8E5uijmfQz0heRWiZsyJMOt/a1V2bGuDpU1pLyQ=;
	h=To:Subject:From:Date:From;
	b=sg5ji38uDhIs1MIMOJ7IgOoRfisR9slqA0KvzSHY+K0Q+vhwL2FZjdyCtkyDUp1sh
	 +sPgSDzdooaevLGsbcb6vrEObAsEljFxHk2C40SflKGKU0JgiO8KUCx/AZZqRCuShi
	 Af1q4NvrD3jeotdJF4ssM9lznN7Vjf2OH2KYNFG1KCXgJ9T3BESpcqnLbHDhWoiH6w
	 /LT206DltNBpVO6LTJ/QUtSIXbMC7H+xct4GAbARIg0NHEuMCHsg/yxRAnttVVejyw
	 03jm51uF7FztllaLovw1Zs0g67HA8FKDFaR28LKQC8Q0qr7fFPynnUmBwuUPknf/MJ
	 /WBqK/er8qkyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A1AC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320159360.29359.2587503528732678241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628f4f29a58586dbe3f0f21ccedc1c893975c78d5d195e120ee6cc64c370a318
Date: Fri, 28 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743201593
