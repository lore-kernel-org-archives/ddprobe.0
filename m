Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524B2171653
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713459563; cv=none; b=pfcsE70Rr60xJk2rvm5rq79za/EHZGjw/wUUagiY1xRtRsiphKgBraz2FG5V/sARcf4Kxu92XirFJcM7VOBzNZE/Jj9uHOWZOlEhKyAQl2jnU7KwBygRn3WwSQdx4vvy0OD2zgmsMppN7P9Oid5/zYwgIbk97wI+H0xylo6+VG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713459563; c=relaxed/simple;
	bh=uwbshYOOUC14m2QPQdNWGXRjE79kKpu8uGy4kabwmMg=;
	h=To:Subject:From:Message-Id:Date; b=XGMX4/k/pHWxB8WyccTX8Hu3/crnbmcOJsp5TPEZxs7dTGfDuDIvnReHYU0Mgq+TzLi+kW73SVzR8lZwH2T1KyedAZzrkD0CJ8RdmlXGenRLfw2bl5G6RgU2aRtnZDnO5HZeHSfltTe1PdyWgoZWc2rK23lYN7Ww1C+pmolBt60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7mo5cQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7mo5cQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7D8C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713459562;
	bh=uwbshYOOUC14m2QPQdNWGXRjE79kKpu8uGy4kabwmMg=;
	h=To:Subject:From:Date:From;
	b=V7mo5cQDX8sWXYQZu4hgm0bAEsEitNfvMVNz5b4zB0TBgvs5MvEPDnHmuH8kdQe1J
	 liAzJmSFkbLR0ZMJW0VIC3+6kNxqW/RG9R8rGXwGRtDgdhnXbeQ/hydbNLvoRSWSWp
	 nab/vQ4SPpHUpRlFQ/xRDcs9vI272oHiJq2VEoc2qAo7RVjxdFz9etAckEaYy8vR8f
	 mR6ugBa9UFRt62e+Ur5eK+Vh490LelKTJYcuWwc0T4N0UsotJlr5FY2e7/jUSemkYM
	 z+mei359BrewPxPS78mEUdyy2fFYERpRuOg6u+0q7v4uqqfWbQF8wbaVpCaXiMm9Gx
	 aZ5O6c06BE/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4ACC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 16:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171345956276.21993.5217400676507739303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9473352779b2d34c94bf00d3fc0f0b290cb4a1e32caa60838779439d9901d53
Date: Thu, 18 Apr 2024 16:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713459562
