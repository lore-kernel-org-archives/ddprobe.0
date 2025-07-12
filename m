Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0850A1E489
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752329394; cv=none; b=nSsBo7Z6AK96g4tmU54cUa4lE7BpNShWs3X94eTefS2gHTNSrAAQSjkaQrnNrxKUJzOGocYlt4s/mLg9isTFQKHHNfEXbKPXTJ3Li3fZLE90EB2FoHsM64eW/7HJYwTVF1DXBtCG9wTeimdS7k3DLNoTxsyFrTe20VsWbKF01kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752329394; c=relaxed/simple;
	bh=7F7bltZFdgGU8Qd3cuMewAyUSU6NVqBHXWJCaNSdNC0=;
	h=To:Subject:From:Message-Id:Date; b=TQuk36rniNdrroAjvrCSU01E3P11dOubWjcDYnSI3KqXVOg42ZN+sKoDmjk416NiG7C5eMdxAVZYKJfbWSkDpLkFmH4nsnTYB8HBKkYO9tVpY3JiZWk+wB6J/31IYyRhOFFPQvSUlqdJJ1gPfjzgeQp44+4xo0YyuUVzmSaF/+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUuI9GUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUuI9GUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B8C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752329393;
	bh=7F7bltZFdgGU8Qd3cuMewAyUSU6NVqBHXWJCaNSdNC0=;
	h=To:Subject:From:Date:From;
	b=XUuI9GUD5y8L1FC1EF2un/nxqWr5LODSj4xzLfW3ia7FNRbgLoIobhYVV+cEvPWhl
	 AIeg/68pTo3cmAX8v1k4kIKEWhPP2LL1kbbXNQCS/+Yqg8c4clLDvQq/pKUW+ruz7p
	 iad7wfUOHeEnPGwU9mWoHQ3uV0LjnrF5GGNCZuc4L6VKbFsIgTbSSqxXHbD8Sfghhr
	 98ldLl6tblDpnVoCNs2S6dqYjDq+AqCseUgrL73x8eOPNccbqeNi/kvyUWP/67lw9P
	 mWpuDCsm64Tda5sPVGr+jMiDPAtfMoAivxSXQdE4W6kT5AWu8Ri8lBPriNl7TDBtuD
	 fUm12Y2rBuiJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDEC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232939358.14359.14808997320562960491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158d74ba4dc36834c47c36a98ae8d397db522f81c03db5bf47c5d0f88f433877
Date: Sat, 12 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752329393
