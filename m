Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C847242D9A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750679994; cv=none; b=q19/xgqKlRagtsf5jb7I0sYR3s1DGV5tdWe/HZJ7W85o/Fg/Z2S4HVX0SOeJOCIuMD4W9cLc6tX+cc+/Co2hRBQ3H7A3qcDgW9EX2b93VThbX+5qptEv1RIlxBEGfKNujPyYPIKFWjMJjVyuhnQBRiLn5SAwZAOcHegT8MtfiDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750679994; c=relaxed/simple;
	bh=EuBjtrGRbBOdoWHmZMLB0255pNwugqxs48u2wKSAICw=;
	h=To:Subject:From:Message-Id:Date; b=OzrpK6sRtYVoNcZ3HpifjdsMjbwb+UbDmacLqDJVJng/ZS3UYd+CVmsXBkEj6fVaARWREXjIemaoUEcb4+2N6AZZ9cTt0VBz5AmMefaPf/C6wi1ZwAeoGw4Kzdx+ywnb1GT4Ypn0N36UXNDbvPYNxb3apGXlMrENDK7DlN3h3aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho7ZVZ4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho7ZVZ4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D79FC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750679993;
	bh=EuBjtrGRbBOdoWHmZMLB0255pNwugqxs48u2wKSAICw=;
	h=To:Subject:From:Date:From;
	b=Ho7ZVZ4jhcC1d5yi+R9fnNQMVW6hZQlRf5z/nhEpk9DRav0VBTzzkNDMH0WsJfMO2
	 JcB7eMap75koBdNtFk0dvLJlWSIyb2l84n64TwptQV2B0cV6APovQ/AC5+aubc6zre
	 mpgxmrr5op2+tBZYsKm/WAB1z5lODCxV3ccH6UAkzuv4sSl2rrp20TKsR5cR39dBpN
	 zX6f+El2VE/DdvSHmPrBFJk3lDxcTG3bmYB6zibWn+jTEu0ZRSzWXsBnXx+8TKuQFi
	 gKG/pBY3LYyWKhdvHrv1t4lZPY7ypAd/mzRLyCxhAlPJPCf3YfhyeRkbLxgW5LmCke
	 o1pL+oU8dF1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA84C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067999357.32593.18356945100326437886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b7d83bd015d6ac65e6fa165990101a834fc58f37d22d347e9f6fe87d4f39c4
Date: Mon, 23 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750679993
