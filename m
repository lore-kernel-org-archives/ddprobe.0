Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1133396B9A
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784528315; cv=none; b=s/o2oXrIraErm2BNvP9fLsACZakyrUec5WUnKDszEi3JslhXATRGEzVIRcE2mzI6mvxfnGQ4JylbEAf+DpMyAeHOFzu7LXii4yC2RSZf5xORYgyInwC1ekbb1mhu8vcwuG2ljj+OL3+PGU3eTdzpLdTTW/PaNI9vxKw11GOzxCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784528315; c=relaxed/simple;
	bh=A8RIs3q7fpX2YGRQ78wUbcPU+vEiGx+wpsAzAdi9KCA=;
	h=To:Subject:From:Message-Id:Date; b=XGhwKJt2aJORA4qysigpKOTplnqVsyJYwN9JzYVeYNBFBO0Fdz5T45m3Ou6Wcti5H9o933e6K1jlLhWoje5iPCRolYU6Fh5Jz7J/uS3CEhzMLPMBOAIRPIbdVW2SGPIpD8K454T9c40ivXfRmiU/tsYDHJqIiafKGJmsbxlCyHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTkkUPMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTkkUPMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12FCC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784528313;
	bh=A8RIs3q7fpX2YGRQ78wUbcPU+vEiGx+wpsAzAdi9KCA=;
	h=To:Subject:From:Date:From;
	b=DTkkUPMs1JU/PpvsS1UCd7TsfqqvSwFeSZxx6iIXs1RgJUGvEJY70i16Q4hzZ+IrP
	 U+bVUtd56ss6v8AV+A5CH+4o+1IUHNWGhLM2wVHOEPqXXyveGXJe/Mwh90rV2nEBvC
	 4Aym9mReTG39C8JBooR59d/ZpkwypuIchKkLPWtUTVgg05ldH8mzHn3T5QpRG0RmDy
	 V5m6V269GBl/Wo6buvhPcxC1wijQ5b8JPD9exQaMloha6MJn8xUrDQMTQf+7WFOzLn
	 w/kcRR/HxDqvdx+UaQifUUMNNyJiLWIKoelReevKWP4OIrMWjbCh/LUgoaMg0hddkS
	 KMWlYXPUnzu7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49BCC4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452831372.2483.6679555385329023305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7a72ce651bbcceee8cae43bf666d78e1627a65b02393dd87d2cfb6c96db4e7
Date: Mon, 20 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784528313
