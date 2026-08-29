Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEB33A257E
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788009634; cv=none; b=Tb66PVJ+/MXEq1/36gTcbLN8fSB72JV+WnMHd6Ja8XnHFc8clgAyxLJc8hRD77JSYgzl5FxhyUjNEE2+dJd1/eGskC59UPSvAeNrmeLIeUzNgn2TsmJ5KEZUKo0xI2bIV4xa80LIm3uMEJcWhy3HxklEBTKt/FUt3I8yk33Ezsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788009634; c=relaxed/simple;
	bh=UUCPDSUG3X/iRwqxEeyM8noQwlIwhHcdHg0puthm3VI=;
	h=To:Subject:From:Message-Id:Date; b=rVG3ZZVqf48x91pSB6YqhUpaM3OJB9dZ5DZIONk+9JsBoD+H46TNrf5u9YoqnAinKU2gx+91outmK7oS4+0E2qzyIWuaKF2XP9RPmoMAtyb53Z9pqc1JCjoGfmLZJxL1jN5zcvqraU6ufI+xYMnZ024ZsFqQnaGkJrVhMLGV4O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxECtuDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxECtuDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2364C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788009633;
	bh=UUCPDSUG3X/iRwqxEeyM8noQwlIwhHcdHg0puthm3VI=;
	h=To:Subject:From:Date:From;
	b=HxECtuDdfxiqp+hytd2B+GKkOLfUDA2QYuoPfh9bZJQw0qES2gwkfbPR4Us1+0FK0
	 0IqlyMSE3hqb7QW+O8wdAnodeDSDeN20E5BlqX5eGnxqTQiHtRWWqafQXqYl558qeW
	 RvteTg81itOObBHqYh993ugTcX74FkJJnwu6f+/YuqzRHkFqSdPWZzVtElZ9jhdIpR
	 rBJO1xqsWMi3z1D3tNM6UPoRw2bDyv58eH2r7dDmfuf2lBUZFLcDysPH0lTQG7c4Fs
	 Fsrxjqae0CJB/YdAVLgwfW6WE2rLX4jSd2EbJ5f8hj3m0djIpxhZDq8grLAVl0IUEj
	 4zXjA7zWCgyOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0023C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800963368.22875.6489842877166719746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c0a9666e0e5d871b3c69be32a88036ed70d5cc5cc1437d5d409d33b0748539
Date: Sat, 29 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788009633
