Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40782153824
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726268154; cv=none; b=Bs2X9BXj6qmWQPu85RZ3I9dgor7KrzspibGwd5ApCcaP/Di8CtrX27PJqv1T3kOM5DEmzpXOFpZb/TH8LkWkPKL+u89k+LChwSrcrt+ruMRmvCHPCDR2pJTuoVM6XJISD2abNJrnJBDMKhgLNHhp/Yi0hmXSyPAZoedN0UeHaCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726268154; c=relaxed/simple;
	bh=6XZVEU/5j+swSD7D0FOS8wqw/f6Ufd9vKAi9HsRaai8=;
	h=To:Subject:From:Message-Id:Date; b=QKYQsEGa6gIo6uoZJq+0Xki8RB7iBLHI5LK901oid1/u6dyNS2XT6XfABsZ1XxoKib17hR1ZIuUoJGryPfmKec3B6jF5BuUO91rrp5VIm2Wbj3UY0BlQEHstMaCykiqMmgR6o+tTn4MZcxZt6LTYY1JFkAGnAq/BQJ10d9Tf/Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9CP2hJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9CP2hJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2859C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726268153;
	bh=6XZVEU/5j+swSD7D0FOS8wqw/f6Ufd9vKAi9HsRaai8=;
	h=To:Subject:From:Date:From;
	b=H9CP2hJZjtPefty+USMBSkwtFXW95J+8QbEmPPETz1SQbUsYoV/rHyl32ZQD9WHFZ
	 CDZYWu+Pb/KKDnuuMdSPOfwecKWJ0Dnn5eQzucRWxblz445cgeajcDPhWbyiPVIiIw
	 TLWL+IK1I2KeRQD9ZibcvaU9lBkk0wdYbtjVpSaGtRwHVHOzpeAzsWFXh1kM7Epfn9
	 bKEn+vcgyEHhhnnwdjxt8A3eTL8Qh3hDpxYzM51OKcvhTOUeAP17ipUpr2pbrY5cQ9
	 Z15ax922pFE6BFa69umniUMLCrbhagWr7JRdYp28JkDthzQrH6Ch5JnzL9C9LX3qnZ
	 ts6bLAoVor3rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A115CFC6182
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626815362.22128.15030661977340401229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577847ca0189ac34ca44bad82d1dfacc7948a33f9c81ad3794d17d73ddf8e807
Date: Fri, 13 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726268153
