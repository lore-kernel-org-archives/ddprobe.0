Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548072FB09C
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764655374; cv=none; b=s7FOyN8RNq4pyxtok5zV86+IRnkJg5mF3ustHc99iW4qzaez3Z72r9fzx8HE+ZpEXEIIvQG/C+PLwcf2Hi9h0OhX35UGUUD/1GweHJljJ8M1yASA9pNlBiTgfTVU7jbGpbZ8VwZo6LGh9ZhfAVq8aQJDW7K5PYs5WmU0d77IJBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764655374; c=relaxed/simple;
	bh=6h/vDK/hi4VA7DxaBM+O6KRGufx40blAt4P1kwV5+Xs=;
	h=To:Subject:From:Message-Id:Date; b=b+Zmgg1Ix4hbthc5X710NXOGV7Ix5Np+CNu0RYH2Q4BJ75hxR/HfH8rL+O4av2jTFEtU0Un5IXxaBIvBZClRrNnN6j8Cp/bhL1mAB+Xg2t/lExrPdiGqwcQ/WhPgRun5F437ckB7k8epC1Gyo+bB/VxuTAtlqLIjgHfPH1NYGqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnlTjBPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnlTjBPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A06C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764655373;
	bh=6h/vDK/hi4VA7DxaBM+O6KRGufx40blAt4P1kwV5+Xs=;
	h=To:Subject:From:Date:From;
	b=OnlTjBPTGagIPYRR0F2Lq1EX1+lPyeu6AMu6ZOAsaog/s/bme2V/NEFbCJavsVB1u
	 c8g3/mtnKMJezJ456Rbyd2Jt1W5EeP9x0X+wlX8wp6qMVdmzoXxrmQbDY/heCWdfTG
	 VSYmYJLAevMsNrKFq3VJsjqkyrcrqkGu57jtkhLARnC8ZP3i75eCepzVK3xoiYuHB9
	 V0TEQfgpqDO4N0w3DQ1eWf4d8uubVe4Lem4ql/fjd0Fe0s8b0ljzTP9zEsIH1KQfm+
	 JdwPpm2oVNhmifv9TEhzzfxHa7RERZcZjytbIktCCUr5gFctMm3rL9bNjVySPdCPCC
	 swcrO+R32wpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931E0CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465537358.10394.3098911471473757727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a6c28b891d2e1a77b2291c052281c508f4e936201a3c3166727c3bd8273d81
Date: Tue, 02 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764655373
