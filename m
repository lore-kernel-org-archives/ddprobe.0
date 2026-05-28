Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361F22FB969
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779936154; cv=none; b=BAKn2JZYPJmkG6Wt5jF7ZyEVMb+/IDOaL7L5kYxbryHikKnpc23mMrYn7OBefpSZ0PFizL5+qAi4ydJmGgD+DisaB3B5Lxoye2p7ZSyFt0CEs+O+ueAl8AySntdlUAB8iawlvGwlnvG/pyUD2Oqc6USmltYbOpApczvvVsTYnc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779936154; c=relaxed/simple;
	bh=TdfPFiuiGUD+nRwc7aMGYyzMFQOS5uzfaQx11PB+tXc=;
	h=To:Subject:From:Message-Id:Date; b=E9Zfl8eFfCfy+Jsty0KaAXXKmx1Z5s9oBdsJWMq/gGel21FRdqtrrF+tBqzgUC3yebgb2jHjAlp3aGxo1l5SwhETptrQTNlF1TtUYzwnvG8F1Ut3/UHcT7VSN809p51zfHO4+kMo66uNJ4OS7+0lpxHoaIpY37uvt3eO8yubUKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXlBh0uc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXlBh0uc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57B3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779936153;
	bh=TdfPFiuiGUD+nRwc7aMGYyzMFQOS5uzfaQx11PB+tXc=;
	h=To:Subject:From:Date:From;
	b=NXlBh0ucNtOhuYPX736a04UCsvZtTHo1dYoWI11pPkCgj1tWauH29FGbMgkyptHoF
	 kfe6osXVdyz2UX1n19gK00vUr313A35PBrKhexpnIRcDB6KGIf/psG8tRJtydqty9u
	 c1PwbRuHPedmfSHQcoVkIFnzwDO/1iawFwJ30jfb0lXHsiiP2uXrUzX0e4abMvpp/z
	 KOQQjdf3yDqOsTJyOBirHBh2b/f4gfn//tcdtB2eZwsSbi7IrBOHqRHTYOOXelujRo
	 guibNCS94Ad6r/OkGzx4Ntok0wBOdHNsQQDmXtBKiXIk4GozF4/n0ZMgUx6PMqInxf
	 JIVdcRFswhxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC0ECD5BC9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993615368.29888.9408060371155729083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8c5da97a34d2becb40c4c39fa463ac83f3d7442020be88dee77cc9c5184354
Date: Thu, 28 May 2026 02:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779936153
