Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1061A683A
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786225234; cv=none; b=M/DTmbIi8DVsAOHeoarI29RQD7thnNFW5/C70xewABeqxRzvzD2ljjZJlgG8eerFmIEAhOeArm6IWvArlkDe0oVIolDF2FzShyBz/+W2/ILS0p4kjobFY31pOdnd6Wdrmo7y3sRDYGv56tBcnawvWSUVUaGbkDUFqTW2l9ZiJKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786225234; c=relaxed/simple;
	bh=pMlsidvPTambP8K4jP4XJy1cZYGOzG32y++pJqi/ZOg=;
	h=To:Subject:From:Message-Id:Date; b=Be+f5ms/GMwOlbIZEUaQFKnP0P1YXD/a/ZIzzvi+yyEE5dEG8Oh0YEaRFFt94W0vukgdH/u8r3QBmd8OyBC8gXtxB9Rb2HR+Rb3U9jispW7mxMutflIz95uANMgROmCLJW0xy92QQI0ClvbR0WMeLCku+2zYU5RFK6nsf0LCVvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9GEQvfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9GEQvfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1E3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786225233;
	bh=pMlsidvPTambP8K4jP4XJy1cZYGOzG32y++pJqi/ZOg=;
	h=To:Subject:From:Date:From;
	b=D9GEQvfoQotH3baZs9a+7ePmtb1jqW2aNmvHBluW6Ul5oNPf8UY/lXniRlh6iKCbB
	 xpCDku4vvRK3aYgpSY4WLGFYH3T99/CJTxrMnBVQ1I15u5givEl878lQg1+ueBsJSz
	 cMSLWUO3s+laGVTwW2XXmCfvzaNDRODm1MQy6qS4PVCPD2uU0L//3GYHIEtXCHauuW
	 SX5hv9cJh0um+KwgVts+Wx0VmjeIJO6t4D9Bc3lvwgLOES0Mk7ebaVBpY5v+/Ox4sp
	 Tk87XLPV72zw+sWCni7k+rNDXeoZlDxp+yiNta0frlp+Z76gD3jNh4AgeEiQsEv1FG
	 BWva38YuEpxvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B441FC5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622523370.29636.2219346359072629466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee2bda9b4f29c3039c4083e1eb96e70e50bb0b65f98717811412644f14e41111
Date: Sat, 08 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786225233
