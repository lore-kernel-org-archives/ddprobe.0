Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D15D23AB9D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776940654; cv=none; b=OasDz7gf+jIN2XbJFftIR02IAotMlv201ywiKsfzLygR40T7TLISl64ru0MJYBMyJYUwTaNaaMVjJUiJvGOoC22XQzjgnql/R8PP/tmwDP2B087iI7JrER4FYcgo8bRdtn1ndPAm8qiiIcfpqyHOkBBFeQOAYwVX7HLrEl2Ig3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776940654; c=relaxed/simple;
	bh=w8x+4wEp/SThXTT0SaBPC0/DuESmVdFgl/qlUb/aeGc=;
	h=To:Subject:From:Message-Id:Date; b=DF4MQ6wTV3ugfnId8fZHhUKrzNzXsr2xWenpBVUXhohf5ACLOwjqDOVuQv3hMjGrqj1637GhyNtkX80bOVnFEwYPwUejzRXyo+Kqr7RsddCwcI9VhiHopabw+HdnQEquI8VGGt7uBf4+dR+vl8E723z+BGxRZzmV5/btEJyA4tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtPrM0IX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtPrM0IX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE13DC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776940653;
	bh=w8x+4wEp/SThXTT0SaBPC0/DuESmVdFgl/qlUb/aeGc=;
	h=To:Subject:From:Date:From;
	b=rtPrM0IXutgVT6PbqLZRLK8t/sYMtK5GkbtQz/NdCuzf5PbC0S666b9q7CUFqW46q
	 6r91U6tbtJdt1H54uY/L9ZT/aq1pUBaEOHmRBLBILzRTqPL8C5im1k9xB3JT3nahI7
	 S23XBfZTjdX8r2nuBgc1D7kHI/8cO10JE9GUxwOrBj6k/4OrxWpSafKjl4FcsbQHi+
	 RDMDpC8b05B6Pgnm3Nuw9YDxvHV/o0X7i9LIz8rTo85PAetREJpX/RctfCYSwczE1W
	 NaO6AhU1Ajm5h/M4GLvsy5crdist25a4khUB0jUg6crrG4LenEIcZwBs77JX34eFD6
	 NkpwmkcpdNmQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC926F9936B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694065368.765.5946184817473679971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3b8cb2e27c15c9b391dc6cbc392d548112dc20a830dd8da4641da8e5802e37
Date: Thu, 23 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776940653
