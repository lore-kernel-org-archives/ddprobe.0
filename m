Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0473765BA2
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707462497; cv=none; b=SQbw0Ehz7f8h+HMdP9XoxyhKGzRAkSL0v9ipo+hkJSdKRc9mrUKD8QlLem56Oe41UDNoHJUwcmoeA9HGHeFsz5SL3jQYjNOkASrHNaBtHDobs9xr28P4kh5A6PTxCvIQzNJwVx7QkWs9/p9to1PBNhl5odirX3AOyK8mAZEI7FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707462497; c=relaxed/simple;
	bh=0AosXL0QozuKtZ2VA6OS1CZexTPcMGBKzAmXWsOmqmY=;
	h=To:Subject:From:Message-Id:Date; b=jPlH2bPY8hZtkYSs2u1U3rACyp0sFcIsrRIPzUVSIX63oaf8rXFS89lTrjDmK/a3Dn5ooLLWhSc9OjesgL70fe10rE/lQZ/cwIPkOTh+ddkvUtCG2AWiC7+bbC4FUaafB5Y7MPJWW65EQu0f5x9eT3nASmnkeISOP29FxStCf1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWXRJ+zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWXRJ+zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F28C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707462496;
	bh=0AosXL0QozuKtZ2VA6OS1CZexTPcMGBKzAmXWsOmqmY=;
	h=To:Subject:From:Date:From;
	b=AWXRJ+zwtPrZODZzm1tSOHwMwCpuqBT5InCo09bT7zV/GNZanTQgW08pl0ZFma73/
	 3KQKhFNC0WECHluDpAmzSzIqzsztv+wYBSxUPx7ZjwdskkdrHbyMmtJ84S4bEPjvwZ
	 /t3H2xYPBOy+uJCcy/PeEJWwCn+c768Qoaep0PNKE+y87xcTv3L+ik3vYb6Oa4mwGo
	 VxpHOSl73QIP9tqJVhzlz9XX3KJM5SfcleMw5ITmxSAwWSecNzq/R2ONLd/SCGVClK
	 inQ++IUOyfkG+Fx3BE8h9Bnp33aFu+2OYfoq3YPEIC9XliVAt2oj6lTMNgUqgfnBm1
	 QILr++eh5O93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F459C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170746249638.10319.7674807530140332292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0956ac8b2e7176c5af24b281d520d4f39bb57ec435c6df8d3f815fc9d19a404
Date: Fri, 09 Feb 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707462496
