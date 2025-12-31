Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D423320CAE
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767183234; cv=none; b=hOsKwoEPwsu5Tr32De/WhO5kdHDYNXQ/q9GKiOlTrr7mNQa50276ib1UZnxNm8sJ0mBjCbFpisN0jqOutThcaNh2MPxLDEgtuf5AWporL71sNgH8nSTTYCU2as3kU1sOxQf4/5n9r72o1KyEak3kfmzueP4Ndh8XXSGv1tbVcE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767183234; c=relaxed/simple;
	bh=zaDGQSr7oVf6IfDZ90AyXr/mLabj67R23FSa0+cNWQc=;
	h=To:Subject:From:Message-Id:Date; b=L1dfG8UujFTuQliABgUfKIKeQwyTePTIGyVRxdWZaCEN0VKewUgOzVm75OXR0RAkrMvQPaJeWdVfWxgJ0WGGirdwfynRJyth2G5tImta39J/3hpGOgAvL8Gpl57LpfifViRdKYLzGASpJL5Lse06FhDEvSd2JSDQ2S3571jH9FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTL3UzQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTL3UzQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A3C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767183233;
	bh=zaDGQSr7oVf6IfDZ90AyXr/mLabj67R23FSa0+cNWQc=;
	h=To:Subject:From:Date:From;
	b=rTL3UzQxO4wrZAAFfCXUI1TJhUEivHYXDRSF9dN1GmQZCDYF2zTu+AdTu+6pKWRFF
	 DBD/ubeKcFNbJB1528IrNqiIRCdH8JfWxF3uy6AmhygCT/v20NfNHW2ztZivWsNNzh
	 jMGu/Wy7p3LNIlMvUobayGVb+butEPPloyw4VvUW+7GyhbxkjKr+zsyyv/JNmGB61N
	 31jd4+U+tL7AQjVgKDqYjpR6Xg+S7SXWcw5bS5bf2VC+WmcFwrVEvFwAYH9lcAfYmW
	 ztUp6Z0oN2DbsnmwyFoS8d9unpS2JHQGk2qOw0klxhqSpmTP0qjRfMnAJOh9tvhFmh
	 ZEdpu2t0SSMdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE1EE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718323357.13778.1245694353151864392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96d37cb4c3beccb0a26658f29e065499981a6e44c734a8c386c0534a3a037d3
Date: Wed, 31 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767183233
