Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253262472A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783395514; cv=none; b=uFee0gwi55uUKkCZWlBh9JUrte0JIQXK7K1B1WZ4mQKm3191HkRKLZfoO3KSN/m1psG0uU/Tif9eb+5L1OCDBxexsePoQsyU5KF4VbW72XHq+2cwebIPmKJhZi2nF0fMQd/tap9KRpQMLMBkpbX0e28xZtCHxz5HC4CUI8D+X+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783395514; c=relaxed/simple;
	bh=3kKfBrPc8L+sfAY1rBhrYYWag/dplA4zKIMYmbhUBoQ=;
	h=To:Subject:From:Message-Id:Date; b=anceYM1+76Dm86Zyoz1O9dBGaQiQnReMwfTDFOsaxIGa1c6ZICnX7MSHrP+0Jfyc9s3csmaVafVsOQ6NyAnRpQTYkhVsIQbr1Tjq2BjsONeIPTAG7YE0K09eRq7NZg+qNA+HsdfLG5FFgU+xLIhMNuNp5WMIRcqekiy+ogHxgXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S18TWp8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S18TWp8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA126C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783395513;
	bh=3kKfBrPc8L+sfAY1rBhrYYWag/dplA4zKIMYmbhUBoQ=;
	h=To:Subject:From:Date:From;
	b=S18TWp8X9lRRHoiU04nGNie1gSzT/R5pPPRMImH+KcMDfqBDa+YcZQofTO+o6dbUr
	 uRkUsNaPLLXGVQ6qV7ABmLpJlySGtEHOCqbTaaPMT16Rlv6s2AMBR+oOD5qIminPSH
	 poP5mTqWj9u/2mvi74ELojAILGbpoF7tCHc/Ye1i/ze67yPK2hhQpxWKYrVQnrBtvl
	 TAekcPx50TzEp1TJWCRMW9AxbSFKqBJDyhfM7F65dssE0BAR5dxyloTZ+N4MFsvXJc
	 PUtLcjEuX4TnJBordW9Wt+0kNG+DcB/5Oim/q78376BWvL3gX68Hnb3kSmHaO9jaet
	 mW6CLr62jqaJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ACDC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339551368.19275.2246089840212690226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe20cf515da005786515a1ca2a824ca4952ba10ed593518daa67e2fd7fc7881
Date: Tue, 07 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783395513
