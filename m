Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FA1DDAB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766973234; cv=none; b=lE1hAchYXw1HE9ChpuKuG2MyrVJRR5yh4vZVPTGsPkED2m1ARqWQ3l6ViEgbXFnuQv38ZyhM5MqJYF4GATFIPbzLLPxazJWFrW61NB0raR8TIBi/f8v0zUCdEUJu8nhGVQ4Wp9Og6dK8k3J3h7/zi/kITq65Cr71th0obQyuhXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766973234; c=relaxed/simple;
	bh=iL4S3WD0ka9Z9CLs8X7REKVJv3KYny8E8OoHM4u8rDU=;
	h=To:Subject:From:Message-Id:Date; b=kd/43Dpr4d0+oFSoDRmmf6119NU/w3vwL0rpJ4qzj2LbFSYnC0Pf2xDKexmKvDlsIKgZkGvEIM+lSHCIRdK3BPnyo1CFqZaWNTsgrg8mhX468dmOrJlRi5wWV6OrqLegEd10igE81R6jAgjvGzx+s5BYumYNmHBpRH2T+GnEt3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrcvRoeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrcvRoeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1569C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766973233;
	bh=iL4S3WD0ka9Z9CLs8X7REKVJv3KYny8E8OoHM4u8rDU=;
	h=To:Subject:From:Date:From;
	b=mrcvRoeHZZDKHFvH/b891dbZnmF5rxwgOmIedQgZroQ8NeqQCZfZ1WFaIqeBHa/Ol
	 ovFOBASHqTEusZVdcpA3sxNlwZvTLu4NHdFNCjjRFqE4Espiw9hnYqeczL40nwNmKY
	 EZR13gaMgXi/rUzUyDUkQF1KzF4+6ZarQBEJFLs3TmLBLYFAsdsqhDiD+6MYq+Ro4A
	 MeppJYaMBHLTO9v2R3wBGY2rvC4nCQ7mFH9CNjEy4vMO3w+smX8KiNgE9UUFQD/DnY
	 kb/9ko5D0QjIhjsikId3fyP5qjVGeJYceFJm9nnIEIDMlX0F+3yvc/M8LEneuCkIFB
	 0k6e+j80yad4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD331D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697323366.5311.424422071476546043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec0f0334119ea96886cebac586fdb3752a54753a3acd198e9bab47af808ec13
Date: Mon, 29 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766973233
