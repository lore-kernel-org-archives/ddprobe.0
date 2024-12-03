Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCF52500A8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733187354; cv=none; b=DUwk3dAo5Zl/BxcdntINBY4Vrfr+RnCBxMwK3+kPl1dK75qB5YdjTNVDRrUGPeigl66zNe0UuvJejKZuptTMiLu3ZmlJG5TJ/SILGApwejXgHWj9LhvvCg+l4q+72/AMKZ0s2X969uXSx/mQYUK7/pwlwVLS4DE3TZizWD5vJH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733187354; c=relaxed/simple;
	bh=srwD05zF7x/PhK9oTG0RvUi9AevuEXrWQ+Qd8FfcTsI=;
	h=To:Subject:From:Message-Id:Date; b=rdIjhT/bO11yE8IK/im5kEmaLbY3mERY3qM+5i9UEp/YJ6VfRvohgzMr+WhCH2/aAkfwUNcjEc3pnX5ftpGexcGeNiX8uXrB2CId5CS7ail3Rv5UuuX3pZKTEPChkNZd8tXYC/qtk7bzITlDa6HslIUSEemJlPq2qm/O5pgC0ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPceU7vw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPceU7vw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8F8C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733187353;
	bh=srwD05zF7x/PhK9oTG0RvUi9AevuEXrWQ+Qd8FfcTsI=;
	h=To:Subject:From:Date:From;
	b=WPceU7vwz1KNW6+0icT708erRUMapnOttFHMWsJ7lBtonyQwuZspG7JFwsbMW4btH
	 /GMarNBtbRJMFqF0cDZ4ISjW92imgflf4ch+/CniWAwrPVspTkx2U88M0LRy6J5Y99
	 iOwQDHibbf+YGizOLuVoMuoDBfBgyVemCw+ucNgwGXaz80++hOuYTvnvPvxdbcBVGg
	 itxXfRmK7D8M1y28jcwjwORnM32OTKN6gdEitLnuLerwrdDg3bOrRPUaCdrKNSon3U
	 d82cwzI2vHJSlTb1Uuwb9SWhz8GI6VWOMvSjCgSk0d4zFuBwZ8Kt0HtgfODVJrIjoJ
	 HF55E5MxpnxHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA90E6C5E4
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318735362.25298.7287710147255204279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a118b515e13a90867185caf645e99991fa1d6c765c9157ab0e9dcf29fd5c8bf
Date: Tue, 03 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733187353
