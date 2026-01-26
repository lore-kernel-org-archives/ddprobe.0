Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF4428C854
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769445234; cv=none; b=TIT1qLL5aU/fBnSmvfwjSnAdNhtJoDghSvrtIkHQM3glEHTjs5649JYnj4LHQxsQpVIglPBtByPXbSlQDW4r9sINYhPUqyRbD7lmDwGQYm8OOkHULY3YABRYPYve8NjAnof1d7Fh3HJkAjGUBkF/il1PAc0hPfmBV8zm9BUUQVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769445234; c=relaxed/simple;
	bh=+pj6CsZg5lUAos+CrPLHjORLiYkuMhCnOv4cGx21kf8=;
	h=To:Subject:From:Message-Id:Date; b=pKlJRGmGDaNkenWcxUc0/vgouNuMQSiF+aUsqoWspxfBbs4cWVIsqNPcseTJcdBt1R++uPwFy7uwqUFLmKagoOCD7bHLPAf6eU0PoLASlyaAH+pKPeuDylKsOzpQC162+VUemC56jrezqGAw1E3Us1L71YIACInx1HWdnq4d+Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W43yjyn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W43yjyn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAFBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769445233;
	bh=+pj6CsZg5lUAos+CrPLHjORLiYkuMhCnOv4cGx21kf8=;
	h=To:Subject:From:Date:From;
	b=W43yjyn1PBZT+CHLQ22IzfadmgGCIWUStlnd5t9EbEElbg52v1TFnCQf9q07IT5In
	 /aFj1dJuR23kQo7oR0ANEB0l2uAH8+T9EzP6CAU7BO8n9FZRDn/9lNu1mIgGLzOAyH
	 bx9OlsOOB+9XxORuQGLZ+ROXilpn+v41jLhxEs79UpOZHlFsWkVKCaTDvtPq8/f/kf
	 +JVVIAE8VU2SKEwkb4+MQgh9ZtHmK43a8bWquKVSMq3Xpxn7wBcrLoYcjbIjyY3Wt+
	 InKcqDmNVcg+Lh7muIFw8dNBR3X/fl7EK+xXGmbXKQzPT2gXPS0hApTDUPNH0TK9Fq
	 QxalII8uCmZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A1D19502
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944523357.10043.16894489664970644897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e284dca15a5d94816a790fe9f22e8560cdc11fa0c137f1a9efc10e9cfb92b8e
Date: Mon, 26 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769445233
