Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56644770E1
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718014043; cv=none; b=qEry09+ONg00NhbRH5aWJ+Mf+UuwovI/1jVkeDETRLFAJRI9Kb2olwNahF/Ls56c/ytc2QdFzu6gaRF4S9bAVVTxH9vGpstureRTaSUF1HI/ikGASriNSQbRtJlUN3DTOaItBq68++LnBSd6ucANTtCfW6RTm4BVi3FUWOl7lag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718014043; c=relaxed/simple;
	bh=P3M1WilGN0YqW9ETD4Iba8hld8WQpILN6Rw4pvlP3uQ=;
	h=To:Subject:From:Message-Id:Date; b=cg/mPJSiirZiGVc9cOX6OSxii9EumFPqL5eIyrZgeVxIItpBPCNvMNJ215m6nx/7XKRtzhrQblP/z/Gmq5GZ0C6SDfrEeqkCK966GxsBy3pmOt2YByD5909MAAb3dVv0+LDiWN2kRQC2hEt9UIAkH7OKcwD7n7CLCvrvNMwVems=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEy49FmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEy49FmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D833EC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718014042;
	bh=P3M1WilGN0YqW9ETD4Iba8hld8WQpILN6Rw4pvlP3uQ=;
	h=To:Subject:From:Date:From;
	b=MEy49FmK6xFpf0RidNzsziotOHJXhQlWAfQ7GvqKfayCIBckkqwKhqHjNQl7x/1dZ
	 NzsZeL4vqTpthEp7XVENAX1KUE7nvh03WEHx9qIXL2CwIqeGATmrxnjPAF5F4Ne1cS
	 tw2qZKraiaz0C/7XBK5r4HNdp3tq2W4evwpLYb+XVDlFYLJhr+qx/on72Mk8kw/oLX
	 +13FVNihXq9PnEM4xgWIFggMZOdgX4ZQUfn4YL46R09OICNSm92AIV3QCKrXMUM2ff
	 PQl/c5muizkaOdmhB65Ej9WX81A8f4/Zklo/SpKMuUMySlGq1OdoxibxTH/cyHroif
	 2fLr2nw6cKjNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C361AC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 10:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801404279.19278.18182353869145132269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fdc350acfbaeea0e7d01e6f0adae27a5405b1acf75c0d3edacf75270e8d6d25
Date: Mon, 10 Jun 2024 10:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718014042
