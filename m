Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB691B7910
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791597034; cv=none; b=JPT2ZueS+2BFW5GRnUiB/VyUcorKs6dFLATtAdWcbC2HVeRx+1WxL69ymtu32jXIt1kzYkW1mhzHlHt2APafq+BSFqd/P5M9Ww5AEdY17/oF/AVafRMsOh9tqW2xeAqfvUs9tVOm1hoD78WHv3SJPsuJrOT1EbsapUry1Ao7Ryw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791597034; c=relaxed/simple;
	bh=eSurMepA1QhfoJvtxuCpiyv7lO9RGQ5XxK55/8txmlc=;
	h=To:Subject:From:Message-Id:Date; b=pbeD/CiTEsr+MrhUgLQI/iwB6Nievio1wul+w3nbGUaDN3VYMmlxowhcVDkGuF2pOn2ZxaqzNd7D+rdb5aDI9JFTxXs8MEzGDFi8V2TxclLCzl4daMYgceX5oQLmAd2HsLT/5R32w7Ayt4DZ1cWWBcf+6twIcFDAvfPKcFfoDqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qi4LZx+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qi4LZx+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFA3C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791597033;
	bh=eSurMepA1QhfoJvtxuCpiyv7lO9RGQ5XxK55/8txmlc=;
	h=To:Subject:From:Date:From;
	b=Qi4LZx+zrlFyMyITsYuXHen0pfFUCG83dI4wnRdgpFBTr9ZAMhd6DmyRKNJTVt0oC
	 eCwArx03y9nKIgXiCHivIcMSNluP/9zIPOQJCh+tcfCJAA20FKX76tEse/Krc9QbSL
	 3zx+gNz/Ia+Tq5LWuUvLC3M9l7ixQ77VT+ju2euwxE/InuAxIkoyv5niVPQg0Qti8a
	 wdkOtlBqd262A1hZWz2YBnJ98FhazHAy5cg7Me9uyLStcKNnNYhAyU9xoKehTq3gkk
	 jQs/vOxCAxUcFwbRHFrq6y30cDcj+Jels6+8dWYNPgZA4hBTLZqTVvCKS0CVJf+NQD
	 LLLAC+KJTB/oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22ACA9EBD
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159703368.1271.12391540261325473709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda60cf9c18c869bac451201c04eb24d98f386676b9bf15dccfa767437106472
Date: Sat, 10 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791597033
