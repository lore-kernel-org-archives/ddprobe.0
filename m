Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C2C2405E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756335594; cv=none; b=ptRpNhNH2UJ7QN91eo0ijouX3/xw89oRY3tgiTd6QcxnJvjb5b5YZOEQgRyp34LlifnNbLTbJGILpEOxICzOQ8+NzGA8rvmqTloXKXW3QduyrN3/HyWkgAN2/Fy747jK5r/onij3p86xvlZe8K5k8zsUEQ4EOwuEdu91V9PElTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756335594; c=relaxed/simple;
	bh=6nH0ZfwlZWAT0nIDEqmwGE/rGc4q1MJBlaiCER5QaFw=;
	h=To:Subject:From:Message-Id:Date; b=EkSFFiqKbpmucUiJqPEWsl5fp01adaTcmxkY1CGCEz+lGiUCnZ25ax7+8a8tnV35JrsHARRL4o07ZP5E2n0NQu7LfYhpJN947kYLSgeiCwvKKYao2Nftgb4Oc9z1kgvbHpQCJ8f/xgLCAW1XlsatQiQX2PSnBakrwXay0+Jq5e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kw6IRFDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kw6IRFDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC7BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756335593;
	bh=6nH0ZfwlZWAT0nIDEqmwGE/rGc4q1MJBlaiCER5QaFw=;
	h=To:Subject:From:Date:From;
	b=kw6IRFDuNIvw2Txco2BpAg50MxbCRbjPEvRD6I+1y6tBrzEVl6kizCUpIglt6M6HC
	 ZxE6kMquahqPgz8gbjuNtUCznnONrxpyZqiIEbgPI6iV68OHIWEXIjCSp6Ypmi7JRG
	 EGz8+LLR+A2Coypf8F1Bq12DZdro+xZh1eIDXSTFlTdaQrqFYZ6ZE//ZIeCXlwvkeZ
	 uRQxU4w8ZjsvO1iTFCF3zW8Kyjtxi5Zl1PruUEYHFhm1CV8TZc8y1H1eEdPAn0yv1T
	 SNhNhfAaBbgR5lTe4x2DVcAqI3NLY83oO2wE7bb90RxrRGvZ3pc9EFUwLUsqZZGbt5
	 MAwELJfzQwaUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F08FCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633559357.21332.13478869699843304662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a91d8f90cb50d0bf727bf0d2524967d0b91b284d682e19d79513bab3402c99d
Date: Wed, 27 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756335593
