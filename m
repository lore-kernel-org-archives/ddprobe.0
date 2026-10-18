Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6AD2D738F
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792362634; cv=none; b=Ubyv869548lMCiNBI4k10TKAZ8Rm2KUPR5/geTwLCAAbzcFHx6Twn2VGjSfzHN5wd8rZCJidRQJrIKYRPxbbqC/E9L7u9FztbIJn6gs8M+T+aZcM1ZmfGrGFsU/+7yHmvUmrWxPiHoIJTtuI/Fc01dQTpwsQwnj3LCQ3C++FTDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792362634; c=relaxed/simple;
	bh=t7NelwZR04Yw2emxlOuRQEi/yC9Rb9CWyUdika1XTXM=;
	h=To:Subject:From:Message-Id:Date; b=sNUZEPf2+3fTK1A3vbE0uxL+zoscbCzZlPrLr/jupqouHWONODbyLVn6z7AiXFKmNTfILwDL1LZJYgMNs6pHuHGImOK/T/r4AEb6PVwd2nscaiJ0947LjVFDKUQcQXLUA6TixKhNPKY1i4+u5AmHZkbcFnwV8qMCPrR1yCXHmy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQb+qd00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQb+qd00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25E6C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792362633;
	bh=t7NelwZR04Yw2emxlOuRQEi/yC9Rb9CWyUdika1XTXM=;
	h=To:Subject:From:Date:From;
	b=HQb+qd00bDPiaw6w5v3qaDfkIPvee1GjpFs1nQFJMmhSxBNCb1+upQfiN16jP97q5
	 WtjYrmrbQ69w+kn79Iys+drlCaE3Alz22uyr5wQK/l0emapqbt3xZ7hrpDgm+j81od
	 krzvGTtwo3fdDlFIyy3lOThMMMzf6Pq4q+ye2/Nj1CMH4Ejd8mPeACEIhPdxdwdTvW
	 rwfC1OFdsWEF2d4NIYpaJylrfznhizz8zDh5keMJp8jrtkNQNiE+xccCU/h/d9K4Y3
	 lVpKY0WuBTJhJPT0n1pLxk/hmzTAwAgJvjEVFw5Yar9EJr7CSKBWU37APUP9Xv3ZRF
	 dIsZrWdwHq4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD13ACCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236263368.26915.14566587868229569009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7244c81315a9b9ad4ed5cbe4a185c2f6cd5011e6fb5e4760be85b768d9a4a5
Date: Sun, 18 Oct 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792362633
