Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC212D1F6B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770024234; cv=none; b=V1B+BLIj6c8kZtBiWhJUep8BT/xS/RgRIeucWqeurqYu45FSbdqQitsXzTu93r25YgG2IQhRRhe0APLTGuHB9/KPeNlZb8Lg3qitZDZNnjyWtdL3sKrgPWLXsNQ5+QouCMtiU9F5eoBpm5gNMeVDgPfpm8Af8AP2rFsCIumN4+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770024234; c=relaxed/simple;
	bh=N1w8MJpwdmXD2ci5PJfR2ptSDtFy3Iu9bUh5kg3I2OY=;
	h=To:Subject:From:Message-Id:Date; b=qahvqhcgDEYpOQcnzFd9yho9bLRCY/j8GUPRoXZTpD9EikdqHEmZMD3opwgltWcMrA+Wbu+Xt7B3QRHC9VXiEX5UTyPRHcFI7vJS4/akrGFlWOUnLQ/Y1C6zuQz/dXO7PRGaFObK6G/4tp5qidRndeQCnDmRiZhdU19Xqam2JrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhmCmNog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhmCmNog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD2BC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770024233;
	bh=N1w8MJpwdmXD2ci5PJfR2ptSDtFy3Iu9bUh5kg3I2OY=;
	h=To:Subject:From:Date:From;
	b=dhmCmNogtcwx/vcdLL/5JJUbipWlBtB8mbL1pWhou1/NfItzBxtEkutQPWf12X29V
	 W/pxXEg2BqbMvwJCIar5c1bFx+9EHy2SUnXfXeXd5CCNc6NZfFMdojPR0l2Gcgw89d
	 cp/i0Q2/X9uCoyK1uOQHyhCm3gO2H5w5Yn1V0XU+GJH53Cutx32vNeLZVj4NktXAA0
	 9ruLo89RhN6OkpgHRuU+gZf0rmRQAwiEWBVSsNT6nJ+xWqJ68O/cdD21+sRzux2o45
	 L1ULdfcWT0TGxyPkvcn7zEF2lRO20A6YD/L1viju6IeuRv5VNmuWP8RcQwAqruEHs5
	 U+BoBRgx2OdnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D8E7314F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002423361.18562.9774946603465727716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11eec1df62dcb6c4852b016c9a1f0583adaba621ef0d3b34af0e71c314233c7
Date: Mon, 02 Feb 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770024233
