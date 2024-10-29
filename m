Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B58200BB7
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730185554; cv=none; b=r6zoF3xOpke1ZgABOVxvctbpy93HjBRokhh+lKURDJeQeCbgfOLv9S+hTx84SBltZvEgDjbCi211sOHcOmlLk/fo9ALNAclteoMTvYhG7lAFyQlSRqxwH8NqIwAnX8XSWRmDLyXDZ5Q/P/94bm7+ZhSniRXXljQBUJJTJeWeBnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730185554; c=relaxed/simple;
	bh=YDLqPfh4OWZ50MFyWnkaRDOWOwgM8yl8ByyevUH01Jk=;
	h=To:Subject:From:Message-Id:Date; b=Z0zPHuGR+rsiPeCsjiJwuq5K4Sh991wo5b7mmdTPyTomLiwmkv+GCL8jOQ6qaomICQHPEBD5Jur62Xh9r3SWfi+1ojh6Fp2kJuY3YF4pEmC2YN63Hpn5Ag2CWKdksYB7aqNedAqH00c0AxYLxOEvwq+WIjf6gpyQHJLL4UgND5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoTBGpo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoTBGpo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB94BC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730185553;
	bh=YDLqPfh4OWZ50MFyWnkaRDOWOwgM8yl8ByyevUH01Jk=;
	h=To:Subject:From:Date:From;
	b=DoTBGpo1SEy+8huq9Q1dih2+K59Cf/xh7dpO7AgTZHu1VhvTu4bsGTrxUqj0yqi+w
	 GSdXhlJPljY6HpQeqAGz9WhZJ7cm1iZhh00hRKTJrx55E7DaVb/PzO2eI4ZehLjwtC
	 d+RhdoM8dr2RpjEWs+RHgJuDNd/WPhNfD4Aa98EesC6uusi3uiZMAPpGX0w9/oBfIE
	 tdLoMFWjnCsQfRVlfvvutskiR9n1qAEiClamN/GzJ4a9ZUXLKM7Hii5CfV6ezEtxvi
	 7ziqwqQXrDdFwcr/M2eEConh3kJz7hYSL/voHT2wuRfUAiJ98OCcIgKMYmMK5FrmWo
	 4RqkWXSgIX8UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4312D13590
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173018555372.21550.5466135457029702059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f900106ce73bc1b697a350fa57872be174a816cc13faffebcc4133d322a72571
Date: Tue, 29 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730185553
