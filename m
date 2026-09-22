Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558D73AB262
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790108435; cv=none; b=NVdqjYPGryVJ+YFRHphbEy1UQS7/nraG9fBLvZZjLFpS2Bjsrx+u1rna0f/E9LTseHRkMFNt8VoVI4grJJE/Q8EiKo4sUDJegvF64g0LZdyvCnSAmiuoyWwrEkxeKxyfmmGkbyUweoD+RjVzEP3sC9i7tJhCQRrXDj0RdHXnddw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790108435; c=relaxed/simple;
	bh=2p5AGC9uG+BEFpFP3yvZhapj8gRwBC3HM5Fp7zYihYk=;
	h=To:Subject:From:Message-Id:Date; b=RBYK0nt0T9LQRnyFkjp3nC5Yk4ODX1TyfxDp95bAS9wC4Z5n8lpxquDUj8R0R/ZCCOfrqGNoTinAUKYlw8F2hX5/daBPk9JlwaGo2OVMRaoLne8PNhY0MzfEfqS8uf/nshwqBvrJB9nGy/glsImM0XiDlZIZfNjXOkMA/Vb/TPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZY/+59bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZY/+59bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8394C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790108433;
	bh=2p5AGC9uG+BEFpFP3yvZhapj8gRwBC3HM5Fp7zYihYk=;
	h=To:Subject:From:Date:From;
	b=ZY/+59buTJ8sN6l8JlLF7PhitZNr5eql9slZ1Qmyc14iCM8TG9Z4cp2U95LbDXspG
	 BkCoO6DOH90NyroKZgEtKTcGhKZuSolluCguFXnSPBc8YtKRe1Vjc7nbO0CsMLfJ+r
	 0N/c9G8+km4vFHOdnEMqYG8gzkmrGIC2yG3SKdNK+hpJATGtHNCY5VVysYYzP+FlRo
	 Bn/23/of6CLjt/b1UMUwF/9c0svnI+69tcCkLcTwbo0sy8b15v1LCcUxvQOyA9XEeB
	 iZAFMPc5QOSvG7sloPohIe377hs+PTmpJ/qtZU9RuDBdassnvvJaJDJP3AqqcXxnOs
	 tPS6n2DNHc42A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD76AC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010843375.18287.13996395263338658751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2836ef38a18ed03bab455b8f57b87ebc4e6a69c965d19dde8074cbd0a5c68cbf
Date: Tue, 22 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790108433
