Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A979364BA
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725291354; cv=none; b=bm6MyNxVluJACmNkJYmf9XuzyNlOe5DetqlOItfSuzMRQD2DMefHtkaJLS+2rG6rQ3murNqhL3H1dlpQH/Hm5v9+dxLpEucVdFvsKBI3BgdrX95vsX4bC2S3eiZI4KHDbcuIAHtcHW/V5Ajs/S6AL9PI944C4KII2zVd9B2SiJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725291354; c=relaxed/simple;
	bh=2zRdXnX0VPVOAjiJJDvapeF+fCQBt9iyClMOEvyQ+fk=;
	h=To:Subject:From:Message-Id:Date; b=htEag7TNJxRrp8Mz4pyt2e1bjKbTSPE1MgnfmqpYXcphu052u5ock4dDvydpoQ/p2sZYtTab1IYgCtLJWEUrTYNanZT4HH09C5qkBDaj7CSy6CE3x3j3ZrD6oQKlhgJ5wHe9Bi4cyQOS2TnwCujcWYEmqD3u40R179HcSY9SV1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cr9EnAWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cr9EnAWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CCAC4CEC4
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725291353;
	bh=2zRdXnX0VPVOAjiJJDvapeF+fCQBt9iyClMOEvyQ+fk=;
	h=To:Subject:From:Date:From;
	b=Cr9EnAWnkfTxDGgnS+aJMqofDYhPJfL9j9NeL70W3KCHnYfDWuHpCd/B1DzjFRsNQ
	 wepdUHIKMoFxZpJ2koUTpqexdUWfOsn4+lCJvPLeU0INePLuTtkr2iJCNZG5uYiphX
	 +raIn24dRFldOPtjzMSnOvLpit6wGUjWDpNeWjn7bqH6ONtUk1bYp+2tPQpevndyok
	 55LYco66ek3cIBpJuPBQ9Dl606G2MqEy++k2IHvi5dvGiB3XWsgu7Ia3w7akqI9qfx
	 mzoq47SQz4UuhLJ39Jlt1eLXYi40xMkjYCwCWxbeFfYRTvCjkWZEI6tMvcGNddNaKR
	 5m+rotGkEzTXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F227CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172529135357.19610.4914926979249680112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2c2c79180224c4d92efb7ead35527def311797761f9d8993c50e08462cf057
Date: Mon, 02 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725291353
