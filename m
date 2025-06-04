Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DEE221F11
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749021594; cv=none; b=SOUsSBAmFa/MdPadL2uhYvXMUoE0edg8WSSpvoGNU1jnsPYRPb5itgamihh2FEUUsjK3qI32CDL0BaLpStvSZOaBagLZYinPheLBkWIS/eynUoCgqpL0/HsZQUy/gf3hzJTMiPfaN6fZaWtkfUEjDykELNaRfvpDGoOl0075XX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749021594; c=relaxed/simple;
	bh=LXKnkcnHltRT4pF9rQT9qE9XrICF1aUBA7BsW1vS+/0=;
	h=To:Subject:From:Message-Id:Date; b=tt0hH81KALgJfoj6au7Il8CeQg+3mUKF6FcJv7D5o25YQMT4a/ObPu85/K//85ca6t+PhkwY8ECVGUm6O8DLY2K1BepR1IiC/sYgnbfRl5Aa+aoDe1EhI1krmYsIScvU3bXTER0blijhl98aFPsQqjsWcNf/xCdZp+yl0fcpeTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4JTJiMo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4JTJiMo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0006C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749021593;
	bh=LXKnkcnHltRT4pF9rQT9qE9XrICF1aUBA7BsW1vS+/0=;
	h=To:Subject:From:Date:From;
	b=N4JTJiMoLpJP9BqSGSQDaz8dyin3gl75Jh/IPFYTCVYyktg/P+AzXHi5Nbh7BncTB
	 +7w/rpmE2ZYaILuWznVCpruJTA0NZX1TPvhI0P7ddqkAnbsQUXlJFONOZMbiGIFEW+
	 wMfpKI5lxWl3/C6fBOvUaAetDH+be/97t1Qn4Nx0ZQ9QHDojF/xJ0aaw6J8DZykrN1
	 q54ilNDFdsfHdwKW/0PgXNT37UB1/HIXd5XU/FxTmEGfsypYTpriQBmUTxBIRvTtDR
	 yQBaZUMY2ttiypThaPmyj8YIP/WxvamFckbcMzFom08Jya3oE+mjzleYy40E7rOtic
	 AaSb8jc+J5dtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B179C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902159362.24145.15440652665000150318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ae25a95c839bdd8b48fc9ace7ba09b9b8fb25996d2ed57f60f622534f4cfba
Date: Wed, 04 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749021593
