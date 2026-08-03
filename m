Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AAB342146
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785756034; cv=none; b=RCjCm7Cx30WMSID0dOu8kAKn/v3Es6cT96qoAHIXlnQpjRPekz1jXoZj+17rUn6KtLRBL5rXOt5UioQI7WLjc9qk/Ny3UzCedC/oiyYd5Hg93PNRDE3weovUk8pN2bOecmLu6rKksQlo55MscRy9IIshAFPxatuFotGqze0YC+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785756034; c=relaxed/simple;
	bh=vPX/s3vkOlbvCWqPJ9g2dLwspqJ5s7TTnE7FM2UGbZ4=;
	h=To:Subject:From:Message-Id:Date; b=NmFxIYeRgO2mN9NVQseRqT7Ahl4F1mg334LRww718a+SETnGW4cdd2+K0dWvrlm9UvFei9EA0zGE8U+VNPMmUJJxt5lbys3RTFa0p7M7A+PWti44CfzJGDDSg5OWsYZgl2wnMdtUzWy3u51JpUm6J5KsQZEJJct2u/ofP+w4Xcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlfeXy/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlfeXy/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CBAC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785756033;
	bh=vPX/s3vkOlbvCWqPJ9g2dLwspqJ5s7TTnE7FM2UGbZ4=;
	h=To:Subject:From:Date:From;
	b=hlfeXy/1KpmcTSqu74xVPo0uxHzvfa0pgqWFL0qIeKDBAlrk/F19bxjAU6Ll+2aXb
	 xpfhZZgtWd04r2yRXJY5pAi/vTkeGXft9kEXC38XV3Qj8zjdl5FYcnbgiL85tHanZp
	 zyc4M1pYdh136+WhIFrGTxhcozTv4fbu6DTop3ZZJIyuR0vM2YKvhrTbI3FzCTlkJu
	 Jb4UIskoo5O392bmJ0XUFl3bFVsWa77iRByEJlwJoPDkwr0nf8TyE3Ts0fFjB1MBGe
	 iz2MUW46yG9AO86awuoKzKuMZc9q700OPqtOvbw592tdWMlhVJiDTy4XL2DgUNM7Eu
	 IWi+DxHRDGPAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08EAC55179
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575603371.13310.1616710474098690838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd31336d51197f8efac080b806b9871507ab687e57c7f041d944261d834bc45
Date: Mon, 03 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785756033
