Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0238AC91
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777023454; cv=none; b=LGC5mIbOgL/35D9crQFqnKX7iPlUnTau5DCZ+NZOKCAwv5mO6C27u5kPHmIVV1TyofDPpP+uUt3CLjBFFDqvEy1JQ5F2nFgLrwnu+cqMxo+USbwljnyrHTkLq0ctTejqMAVeLvtN4NCnCLGro+DrjXKyZNELrH5CCu+EZG4VKBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777023454; c=relaxed/simple;
	bh=qAr3hyL9f6ms8gnGPRNNLnCUMiJpvNyhZhnMyQj5oUU=;
	h=To:Subject:From:Message-Id:Date; b=XgUGTXjA9Qt7czgTr7hI+qzU1CxUSLp90dV+CBDq6oiRsKNHzAZwjSsEZu4fIsy0pyu+Go4nQMRLcXxgz9z29K0VDp0CsekBTLfbeaynn2+e/xq3S9FphkOwu1vyFjLWX0m1JgQgrQsAqd0Syw3Da2Bzwh+61GbOKgwfuDZGl1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtXSB2XP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtXSB2XP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6BFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777023453;
	bh=qAr3hyL9f6ms8gnGPRNNLnCUMiJpvNyhZhnMyQj5oUU=;
	h=To:Subject:From:Date:From;
	b=RtXSB2XP1IYtfCRDrP+WX9V12kPi+vDACbTR02irXA9I4TkKMJSNVQruRr06v6e9H
	 zh+PW8RW+bXB2/htnksS3TepkdePfAtOmFVA9Kyoiyq6X5x3ySBcpBzzxpEQhniCFI
	 QjhXEnk9GVySPRSrRKpQln13PewXor36n/QoQ73PodBCOoH1diH2YKCYEtBnkY2SS+
	 jJEIj6vYb0pjNWhRnZaz3BUdpq820q8FrUWfGlJbAB9ihogjoGsqr3UqjXGaAn/Ihy
	 MsF1JUlm6/ZANKpzM1XAPo4GV0B9+ky06Q0ZH3ya7Xwell8HzxVTSfxNljb4TNepjb
	 GXoDdl9tXrZIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE1FE51F4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702345368.22259.7754857271388046875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 176577f5a9cdd462eb12a3b60c163252b841c064a0c54113f42e425d7a1e1fde
Date: Fri, 24 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777023453
