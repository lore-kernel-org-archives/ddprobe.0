Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487051A9FB0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759187995; cv=none; b=CzK7cdVYWgehRFmShT/t1Avt1LdDeMbp6u+Cr3f8ehz17KH/sPtC0PdJ3JWz4ZcBqoya2MNXbpQaP7oeAuVE5wSC1g0Ei3FKjBscwK+y8UP/G/LvrgfHBUHaWhooOmWdQjtk2uGYgVbGpbu/b6Zgy/12rFrwaFYlnyFuqtdo3ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759187995; c=relaxed/simple;
	bh=kLUZlEAl/mEoogKOfykGb8VIVwbk1COFjWKGTBDBz1s=;
	h=To:Subject:From:Message-Id:Date; b=fJ18/VK+snjlbAFueQ0SggGq6fBE9++mGRxE7SMGRpHMv3AMt1Ea55OZT+ntbYqA6EOYqwAtkk8h3bDixmB0JkdYUWpjb5gIunl+zxXqvLnqQifYkdN4JhYWV/swnm/FN439QZuWQOchQkNcrIOV/brPrBfN1bzyPCwOVn6BG4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA8ac097; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA8ac097"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD293C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759187993;
	bh=kLUZlEAl/mEoogKOfykGb8VIVwbk1COFjWKGTBDBz1s=;
	h=To:Subject:From:Date:From;
	b=pA8ac097j2CXgluJFfvR7uJNHRefyyhM/Rk4cru1wjKNJKsa6hGvPFyrZuKB2NaR+
	 tECnCp63HEkl+7CZdKDVMz1OzK5wf97KNtNKXO0yVCMNLey/I8gHfoJCkiD9tZQGb4
	 AWB3bYPcWtyo/shr5KyAVtXRBG8DeFYCg8EYs8kU5v+rnwnyJYtIImjVlthdEgrKPx
	 gOOUZOEl/iFNXJvfBUZTUqEV4/ujrNHIv93CeEL1biwfMI/sAgUiUVcuu6GMj03CF2
	 Vcgh2TtmdXe7C2mPxVat1mILcH/YhxE5R1OkHI995Igc+WSAgzCmrdTSE0RARw+Hn/
	 NJg5L8ku0OYGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6D8CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918799360.10970.15990260642352183556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4cb1a7351835b79b939262095d5ceecc2546056cdf08e0a7e0b65b288469ab
Date: Mon, 29 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759187993
