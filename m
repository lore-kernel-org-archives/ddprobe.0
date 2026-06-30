Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3320B487BE
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782779914; cv=none; b=T0jlCPqk2rLRXAipnVr/B2fBrnJO0aXAbQkuAlEcn8lY6mFGUhMaw03MV6w2kkLR6/t9rSWDQvZ7NKNzCNmkWkwh+lNZEdMCT25ltX4Ir3tbVqsCPg2rdZZiMIp/IJ8OHfZAxruBGFrkvih3nIU8gntaQAPcyMAANYlxZymxIoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782779914; c=relaxed/simple;
	bh=XCeihq80NPFnN+4jhuIc2Z/+AgIXEQf6L6vsD70+gaw=;
	h=To:Subject:From:Message-Id:Date; b=ddgKX3nQvEhUw5Zw8fJFxD2aJBm8Nt0viAEnVZyZEuGciUc26iCkd0nAyQVQHvQZcsXEwo1/M0yFbEk20XOjP2mAbE4vfpitMMMk6bkqo3LaSPMPM20X+qNC2LzVkkpb3QArxpm2/bZc0znR5NcLjzD2dVxue9UL9ez7XLMCsNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrH44Ff6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrH44Ff6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E70C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782779913;
	bh=XCeihq80NPFnN+4jhuIc2Z/+AgIXEQf6L6vsD70+gaw=;
	h=To:Subject:From:Date:From;
	b=ZrH44Ff605GTCBFuSuAH8pRcyAWY+DmjY3B+XZ1NmRh5bHpKYF4XPYilSIrLz2ZDn
	 /kduocF82YTPWJex6Drl1RBfUM/owy3yLjQTN1dNTBu26cVgPKWt9f51XLr+arEUQ6
	 vtmcZiVWYkhgSycxdgs4kTQkWCadV5XxWhtbLxWHEZQCFCtMKO2TKNArsbpctACMYC
	 7gwjuplpTJpaCvpU2ZliQFK1ys2t8oaYkR7m/kwEakPh1VgyN/jj5ch23sferMroJE
	 5QbjznzqjYePetkFjlcmMI3v9dvw9b+oIwCqXgesG90R9jdPBdyqOTEqjjXgQ6haiP
	 yqeNClAalh7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F3EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277991368.4203.18370312601176946347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b657d4da9f27fba76b89b6755290602b2726faa69d953361227a9eaba5e9b6
Date: Tue, 30 Jun 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782779913
