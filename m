Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554361A23A6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787636434; cv=none; b=KFSDYniTGROWcMhv/T4LQrvxQbLuYYGginVuhdQXH29wIrXQ5d5GVQ1Q8zkooqBJOlCjkeWMxmKZu2NJlrSGpMgjQ8MHskS5FX54cz8KAGeVMpVj4g62rof6ExB82dY95bU4S4tBQzZmYhWLcjQhmkVlsHs74b8UrY90wxNOSww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787636434; c=relaxed/simple;
	bh=CZ1xOqZF3o45O//JF7mE1eJ4GUFBstWXPvoJVbfmOe4=;
	h=To:Subject:From:Message-Id:Date; b=A9tMPqTVx+EZuiajvFU9Neazi559aG0m30xicbPTdIHaAq+ggMhrdzW1fZl9B/VL/IBCDwJWi2txo+mIrwzwqT2VFjrYffB3vMDsjF+CTa5AXR9FutV2F0dOMufqLYlTaIjRCIgQQ/hC5dzclP324YF5Wj/69WjjC3QKcgjBwSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3RcqjXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3RcqjXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC05C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787636433;
	bh=CZ1xOqZF3o45O//JF7mE1eJ4GUFBstWXPvoJVbfmOe4=;
	h=To:Subject:From:Date:From;
	b=r3RcqjXGyxxCxg1ClUFkqO6G0ZJSwTJBYLMsvIWKsIF5N2KJPis+YZM/9iwNAPI7j
	 qhTZEx+5Hq9BGKj9p9NNKYzb10t0T7DWT3K6CyklPC9VUt9wamAvtSDKyhDXgMyxnR
	 M+O1OKtmR38me41ubAyMRw6rCkkXmyOaZkq9tvIsx0GgFd3bt2gh6uBSq8BcQ2Mc7D
	 8ZMw917GRiES4LT3Fdv/aPJhef62rNCZ92nGQmjmP8mKVc+Eir841DFVjfreuMzOmC
	 UdktAeR3NKbQaFt8Ey3mFJl0zzcFlvFiBCa1NlHaNYf4zuKTftJyunQHJ5Eeo6TPgP
	 9f8p+PCHpXajA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADE5C5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763643369.13469.16889458596121975960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0cfe21ce42d7bfc83ca23faa58482664da9a77be07f44b256176dac4863473
Date: Tue, 25 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787636433
