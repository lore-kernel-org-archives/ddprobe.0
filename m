Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C4B224F3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783664314; cv=none; b=Xi1h5WKgRGsyJv71znN0QjdAtODk2dgkjZMA/r6OgRuA/gtE395obRJcuf08smDL5lzs3ju0duf1aUyhmQZXs6XPEkSJOLrQ2DOV16PU0D2U3he/3BkXCmX7KryHfPi/phukgM69h51Nw5+k0KNadBwerDv7dNjq/47qNguj088=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783664314; c=relaxed/simple;
	bh=lwN6mYLgUYqBIW7prDksiX9FSs2H9/+IvxhwNLltPBQ=;
	h=To:Subject:From:Message-Id:Date; b=bxEleJg6EC9DaDAgwrBQEZdmzD60SxCF1Mc65vCDaL4EoDOJTUpNDwQtlrCa3PfOUJaDfj1v/S2khv5XgvSFyL/33REC6P1r72DSqYaHYqjXQjMgyjgRlx8GeWSxp28b6jLLnP4IwM4gF837MMRNZEg1CMt3/++GqBbpD8hmwyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/kkIIME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/kkIIME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDFCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783664313;
	bh=lwN6mYLgUYqBIW7prDksiX9FSs2H9/+IvxhwNLltPBQ=;
	h=To:Subject:From:Date:From;
	b=l/kkIIMECEKwPMhnm3yti+R4XQoD8HT52N3tSCIELCnZW0Jgz7LTSLnFf8zDeohU/
	 P1IBYZSpAMuU2TxCIWHowAgG2nYbznHjErWsfdZ7uh6fxCVKDVhZIpqYhIeaNE6OW6
	 JcBCMv433G3p9iB49F0PwuHLvJo7cKb5wmTvZqvbbOxbHFL5Fb2wy0gylYyexRLGQh
	 ACLwxUN9TVHT384KEYNcSRYgYt/EQQpJQ5HBMq9LLiGSFGQaMcz3nsULg/Z/e2x+6F
	 wpmjC8RK6mSG+Ut2SFfNCdeHHgyNrzZZFU6SJQsLSFOc1OaCp4ZsYurG+uDC+xcoOO
	 qzvQ005dhXvww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D3C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366431368.26789.14566128194327327842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88048330af2908a711ace331004e08238284ca850e6b9998ebde8c3a72b14290
Date: Fri, 10 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783664313
