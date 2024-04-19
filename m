Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0547E10B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713520163; cv=none; b=kWO2hAuq8s21xbPcla46JP+RDpNBp7raZFUUDXsBIFngRprTqmhv0ylJOkg0P+tgYegM6VKO8v0da47YSxh42Z9XHaifhz0T4pVEe6GBcXSTsKphbJwYCBRTXE4STJMMh42pGeRUt471RLuXVWt729av/cDl9JwXbHV/j6XIsL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713520163; c=relaxed/simple;
	bh=jybQDcl4JLoB9Ulsv26QFz/tuhCh/427SA/V9SwA1+s=;
	h=To:Subject:From:Message-Id:Date; b=t3mGEukEw6LCmUuA+WppOQvtBhH3CIQgmdTwgW+Gv+6xdlzJJuQQ8uotjQbADC9W644+7AbHhxc4yUbTXFIkLr6knLXD17n/qzeHyPkY4YJsN3kq7Ns4CIyY68WkbpQTvBUn22fG5i4OTt+4oWQEpVw/omWV3uIjzfxAulK64q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXZ5EW/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXZ5EW/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4467C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713520162;
	bh=jybQDcl4JLoB9Ulsv26QFz/tuhCh/427SA/V9SwA1+s=;
	h=To:Subject:From:Date:From;
	b=tXZ5EW/9SMLvnrJnv2fRN9krd8zdzlMC/vOeSbzLfUP2vx5VpWAGxgK59bONXXBQb
	 JDzrdBe+zVFQmyxlZr6TisbHTYB6zmXWIRtDZHQg2Y65UEkfUqSTbtR7p3nABWpC3h
	 kCSw6w9Ls1SQlVu1LZoR7QevqoHukfBd1An0YIcjZbEIJHLA7S4J/OeXX1jhqzJGaw
	 gNI8c/nvxqp6hYSTvYuGjfYs8XtE+hcpO1l0fksKn3r01uUPCx8X1/2ipy3/+qlS0R
	 TVBAGXqSapPWq58hhcVoXx3RUqf5mUUhK9ufMgqgyW95Dvlo/87qBPIfKDB54BdGPp
	 8Vko01NZtp6nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C223CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352016278.17112.13576217361423820093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ebc68f97895ed456a6e2394ae5d55221e8f5945527743107a613d243210566
Date: Fri, 19 Apr 2024 09:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713520162
