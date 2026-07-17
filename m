Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491AB3D9DC1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784293714; cv=none; b=bFOx8HdVN2+qlQFtWjNrte82zChtID+48/2jpxQS3pJ+alZGmDbTBGgAoyVO8DEgAmv5k+y/+2UYyzwOjU684nx1BX1nflQzVto7H9hY2/7wcD5TXtCdgJE/giqqAl6B5TCFDfgVjy9dqgfuY7wcHHV6rFH7Ym8RraN6zyZp3jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784293714; c=relaxed/simple;
	bh=Zi6uGTZCvflHf7Uf35wUVOHwcaFmFGov2tqvVMcShH8=;
	h=To:Subject:From:Message-Id:Date; b=s3OVljTPajeUtzNJMRe6ps5Lp5cmqF0hzvZOurUi3tR85QkqJQBZdiwkHnBl9OI/yvJPJUBKa6XKEH/gx1+ecfu9Fr+7qiwu/lcEc1TRdLPYltAsEc45QN8AD9vPCutqjXX4+W1dwm3wK2AHunNejjliHZJ/mIFJyRwjQFIviok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cj0L/uO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cj0L/uO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8477C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784293713;
	bh=Zi6uGTZCvflHf7Uf35wUVOHwcaFmFGov2tqvVMcShH8=;
	h=To:Subject:From:Date:From;
	b=cj0L/uO1IxOtiulW8WkK/ZI3BgTph0X0WbMMamVhOK0BcMf1lJiPOC7ZTfqie8J5G
	 bA6Bg9VSbPQ/VVDufTFLzxfaI93kd+KMXf313Ha7etYIj/TAmICznmhZuPsjFrK98m
	 9bMgCuCFh/Ku9TP7DRjFxRfqJzsyVWrDXy1iYjbtULZiU4Ay1adhuloiX2xigjNgHC
	 xt7t8W4q+NpdEgk3+FIPGHyNG7ehrIYVQ/hdquoBUIQo6oLzLK9WrW0Cs7j3S0QuMv
	 5B+8C6XSLB66Xu6O9LbNIjahxb73aTkZQbthDzeb5Y1diyn5tmEpaKglagp3ANwvjJ
	 jb2DKDyfKoFgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1659C4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429371371.20104.11682996097673825938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4160f04b60db482f5e07cd35eb9f347692fafe86b9766a4605ad1c44b32abfd7
Date: Fri, 17 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784293713
