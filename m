Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F82DDAB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755262794; cv=none; b=T6lI38q67sLHdllHJSFN8zKG20UJ0HDTIMnW+qUR3rgTFs/D0PnQ8p0HTa3tdYYf1H9GGfkMYX7LRRCwxXAHVDnaJrpiRiQ8D3JY3iDdcLWTeHQnCLq9DL3TBM6RIDi8BNhXs3tBcxRM0sHfdVMzYB3K0O4o1nxMJdFk0Fsu/Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755262794; c=relaxed/simple;
	bh=ODCjl0fSlHpRowJJvDxLW0T47/b8gnu0IPiV1cEz26s=;
	h=To:Subject:From:Message-Id:Date; b=mdB+Ls+haC7y4EnaWsIWEoFNup2DDk5h+QUawy7LJQ9WgJQs8Kbl3oY+JhRzqKUM4eAxDjv3yECddJqpTJ0rCv0bXsKQZKsTCbH1d+c5P+hTCQLucgpejcbvN0jHdeMSfhxNqBT0PjhOJU6RMqPbRfYpvDjxKlIO+mUmnVnLFFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0nuoaG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0nuoaG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3184C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755262793;
	bh=ODCjl0fSlHpRowJJvDxLW0T47/b8gnu0IPiV1cEz26s=;
	h=To:Subject:From:Date:From;
	b=d0nuoaG3z8HkAJUdgAwq5m3N1OYNN9+Rfzt2s07Pt74b8txNKljNHU2FNxGG/3fKA
	 GGKh2S6AfddlrOZ9U2qXK4gWDw9kIuCFbPG4EQJZoQRu3jlytnViKD1y4Ts0BlGdtE
	 LduiGrFRNKRs5bG4Qqzen5l2nyEn91OMmq2fMn2BwDk0OFLsYyneqcLKvezF9GLiOt
	 KCiiVGlrb74oKumo83HJvX8wq8TPUGU2HHKvtUrEQ7eyajgtu+T6jvmRLcM7p32eRp
	 KkMUypjHYbaIkTcqB6gN3WkKJ0s6Zgzg7px0KNZlvZidfz1leKzH3aBFPduaIhtrnr
	 HQgGQ1LkHAAcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90564CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526279358.23472.15204596693376329875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0558e3974e425d088103d3296e013a1854386618d74d8279cacc4a6aa1a5e2c0
Date: Fri, 15 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755262793
