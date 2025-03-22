Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BAF1552FA
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742630394; cv=none; b=GlURLu4I+TLe0BRiSa1FEGmHTUAT4ILXOckDkqv6DVOOIrjDzm/13TSrNCJsixXlsDADUGdlAbXse8oqsgJSNs2GLRdXND3cBfqyx6rrtVvzGnb3RaSz2rqgvV4RmUIy9AnjmdoQhftL10f7Gdcidb4fucin2coKK16ydgHImPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742630394; c=relaxed/simple;
	bh=DCa2TMsdPE01KZyZ2w6f8Q7O5wokrO/hpvKUFqhsElg=;
	h=To:Subject:From:Message-Id:Date; b=mP9D+VPy3LLce3/GlQRo0FlN4fkuAxm+nfPgX7k7EFeKPbR/6X5wzQTDFDpvcBfXuYc3J/gsXKYV/sngey7MKQJQhxtLek7qA1eqMHMz7vzIO/yyw41CfqRiEdsIm6Aqz7VILEi2nBujiIXAzg63HgrB+yWUhMmKXf7edSoKhSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixIqnjR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixIqnjR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD19FC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742630393;
	bh=DCa2TMsdPE01KZyZ2w6f8Q7O5wokrO/hpvKUFqhsElg=;
	h=To:Subject:From:Date:From;
	b=ixIqnjR2/s5jfr/All8LrNPHNsfHYtb1nuVBa+xGwU3nb0ciEHy306F9syHTg7hI7
	 Tec04ezW6gXfPJ/9D1ZZPddVXbg30SAme3bjQvIg/BE7Fb0wiZiGH4W5TI1SoWFGGo
	 ZkeNeFjQihlrKNfvrnb/t1opgzZwgB3eFTkgQ3kKEw6r17X+U3wB61ZvY73nd5ENDH
	 g/jwc5749Xq+xpk+0/HP/B8z+mFtjNgbHCPLdXaEdOfSZOHlLPLuqFAvm+81T0RRb6
	 D/QrcFv+bz3rbIWRnjzzUsgM+QznSe2drh768lsYEsgR1qVRooLhBZSft4mHvB9LqO
	 f5mqP9GSc3Edg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A21ACC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263039358.14353.6916974420535087041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95244caec1e8173e56d4475d965f1387c427a0b5d16b1200814cfbf7f29ce0bc
Date: Sat, 22 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742630393
