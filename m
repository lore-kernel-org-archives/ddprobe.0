Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B453570BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768220034; cv=none; b=Poq1A1aMlrt7Zc0R4mSy7FF/wbY238dtzM6h809e/aYbk3sm9blEBjjC718zEBAJ+gekf4Pk2sX2BIBp/AY5FegXfo6vUW+pHtPQ8zXXOrjtOTJ0XazWuB8wn5x5C9pi7z/aWjzlqebyoUMKSG1Hb95W6H7pFUIerFrg6zysxCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768220034; c=relaxed/simple;
	bh=jmLLN6M9OBUVM152TjgXd92/kji4ywe9ho1eKgV0uyU=;
	h=To:Subject:From:Message-Id:Date; b=KFbThMlq+EY/EF/ZXRwmrhyTwvJ2DSnJHoUXaLqk4b9b2gYomL3h3YkW1DsoK/4/oSviSUdVsBVSxRn3laC0tc+YHeOLLuKmsV7MtFa4Ju/vzSpzehS0P73Q2mw/pI4E/4YaBuNa8LSip2NUVS+Ve4kGn+xAqPX8YjrjTqcQwKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBHOZYIz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBHOZYIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D77C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768220033;
	bh=jmLLN6M9OBUVM152TjgXd92/kji4ywe9ho1eKgV0uyU=;
	h=To:Subject:From:Date:From;
	b=SBHOZYIz/b996yEwNSZwjr9hTQI7ir6zwCkw8tpH68nxQY8iXA/OmzTkgcY2UEbul
	 qMkjcafw9YoSpTMOokCFO6HRdXmROthPsxXh7wZ6Jiuju5o9cnUPxNVdchocSEq8FU
	 vom5WHBT7sSJfBg5b1tNa2rZm7t7HmssG8YtxT2n7VNaz+dzbbH/zqHMZwqTX1fWxH
	 et5+vFz9fGzvUP9elq90iHzMNeqmwB1ZPViKE4sa6RQt/jI/7AbQ/8J4+tPJ/TywNj
	 npFQuF7Eb+nXQ+xMbpizpRhqFlow0ss45c8Ix1rWWHxYEqE5XxxaupuQVQaWMIGwXd
	 CDIh1QOSG3TQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163CC9EC7A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822003358.899.15512261812006026202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7ec1c7e377673ef5e5bea6496b0f315c107768c34c7750397fddaef981d032
Date: Mon, 12 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768220033
