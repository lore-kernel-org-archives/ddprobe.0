Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36860211C
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735178754; cv=none; b=gpR7UcLrBocaYxr0mnzCN1aJ/bKySlqMm4WVxWnCktrVbZ/+bnJDZ5f4ogIvT0vlL3/jg2cDIpAO0OrD50WaVtppen9JpjS9ByQTuEQusDDVM6nxtVgE4tL1gMVRI2Cv1Kn+WDOpkfAsiS+HjAijANB7a6dC/pht6XX+6BoWBx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735178754; c=relaxed/simple;
	bh=JAOUSn84QWM4zT5jx3ZgDoUz0K+XBnEmmfeuHnGdm6E=;
	h=To:Subject:From:Message-Id:Date; b=Q2XhTaYo2H53bEmfdIzBmR2Ja4NSZwEdQgST3PpyDBTP7R46ch12x7jj6WiYHoyGI6q83s4eRff4Psk7ksjm7Qp+JhbRE2cmjMGyPbDUIPX/wDshLUy05Uam59KrVqyThGPF7VWAfhtrjUTVUfMhW9A4LrcjePNfZatH3JL7N+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4vX1lMg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4vX1lMg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE78DC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735178753;
	bh=JAOUSn84QWM4zT5jx3ZgDoUz0K+XBnEmmfeuHnGdm6E=;
	h=To:Subject:From:Date:From;
	b=e4vX1lMgKYDJbSb2AWRxCrnHUf6ptn2doGn6As/bTtiN4qgbSarle2dHCTA2o665C
	 8y2Y37iLiQ349PL6Nl9S3vJX2mw0AwR/ZwFkTElpOvlQJHKyiP58aD0kkO5UlfMUBZ
	 oug+eMDgZOw2j5qD6VBSLDpCAZPXf45v3KhsAqooS8Sta8TP/X4d5gvwl5oayTLz49
	 bfSp/E29PzfNWRUmT0hfeG55cACUVavkiQrcsjxaunxyIKBba4b//FoSC3aFQ1md2l
	 CpmpqOe0Q2a4wXTC+3qjf8xkTkgbCQu0FgpDknvSe8yJBK7lHGli5KJCLQ4Rt4ebMS
	 H84PXfYfYKO/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9704DE7718B
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173517875359.26638.14861015041602817651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53dc7fca2cec44c1729bf099d8b500278b96f88734eadfa258aca2ea0935b817
Date: Thu, 26 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735178753
