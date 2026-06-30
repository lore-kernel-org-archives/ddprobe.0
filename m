Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A32A1A680B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782779314; cv=none; b=CwU61F0KsTogjsAuA+8eQbDdkSY5SkJoUr9PxUH1oR/cCmogBehi+QUnQ22LosfW0VO+JXQhrIqL+aw3vOEV391c/RP7c+RRB8iUINbsJZujD68jaEOPLbFsEiNr2GmAK3+h9x9PwP2Vl2eX1DW8oMFjZzwpjHse/2WIm7HIDPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782779314; c=relaxed/simple;
	bh=HTNmm5GQ0XOuHXsH4eBgd8zZ8H7JVop5rJe1FaNzNNY=;
	h=To:Subject:From:Message-Id:Date; b=SRQf5/t+X9Nc5LHYo1xVjDAgdqCq6+j5kRJmuAY3ka16RvVv1VAeygKBnl6zsyoRPotH/CqKP8AbxfmMw9dy94WaEUjdMhXj2kMMiaRlooTxs2g2yPugyZfMOtatNxN/BbKuhCoFymZDkh1NkFIjuAXdnZxOfR7nsPFyy67/j1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAG4O0Tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAG4O0Tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8ACBC19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782779313;
	bh=HTNmm5GQ0XOuHXsH4eBgd8zZ8H7JVop5rJe1FaNzNNY=;
	h=To:Subject:From:Date:From;
	b=TAG4O0TnH9xc08396OTNe7UsKy1+phv5dFlILRxpa6460ZUmEPx6MI6FqGSS0pWQb
	 I40Q0yXICM6d6wqPSrJy2WfjTfWZaFhwmWgOU8ulE+rSHkDlFAT8D9eUgIKfeUaIWW
	 6KzotkpDSqU6GnNTn4U/7n6HToD3ccktfUEzjt5ZauycORJjW9/8DWgYcmbJBEXU7n
	 8R9/81L9qHDAX6r5TUYy6VvfFK0MoMXz8MkcZtWVxgJJgrOjjR7CK7iGe52b6BGA4G
	 kYowwUHHrfy9nDUNKRZBye5TFWHDlnzYjOfnjrLi0eEw+TqT9XvkZ3WLpD1kgGfVkW
	 nL+vdBxFbgYAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0728C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277931369.29728.18342841081892232215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2592479fdb5b4e5370d12d85a17394302dbee83f70b1a8de6e55bda744c31fc8
Date: Tue, 30 Jun 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782779313
