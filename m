Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628533E3C50
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792041634; cv=none; b=fw/Yw+2bG4wNpshjvOLD25V1kz4GsoWdolsG5gCQLHiapWxJDg3hkGwCtgfB3eopGH4/8ISU9vmxszU+BVdCNIkYKQbZUXvgS7wWMPQ2t1VG6pFBzg/t7ApYJO17prSAiS/bSs2F1VjWh/zgOSkY4KWXkiaT0WmygylBN/umUxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792041634; c=relaxed/simple;
	bh=An12yRH6RkOzGQwz1Fo+14p+SuOlixH3rAHBhxlv/Tw=;
	h=To:Subject:From:Message-Id:Date; b=p+9SIAWuZHR4TxpnwpGtfNQ/vIDiKSSe/CllSPzuMcojRZqJrZlGDdharC1siK9a/gIcoA3LYbgyh5YKycj1FuzPX1iAU3RK64J3RTLEySuLdgB73VLTIsXz1j5l0Pltnu6cv0BL3Qyu9NOdA7TjYnSrCcoR/4TTh/iBSo5Wx28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBj6CLl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBj6CLl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF42C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792041633;
	bh=An12yRH6RkOzGQwz1Fo+14p+SuOlixH3rAHBhxlv/Tw=;
	h=To:Subject:From:Date:From;
	b=IBj6CLl2GCDolvWQVEPU8ODpoHWNdb7iJ3ikRkGkDhEGA6r1gMw7wgRVQ+fChPuF5
	 78+2klOlK0cLt/KuqA8TAAdB7917w5y4O6TWZ7MOueGYSZBlrvrdeGqJ7v0YXm0NR6
	 FUeXPGJHXMzL3MEYjMOme4scGblxfsSqRozPH62CA32OrdLTedflPcFeF1ACqExtdi
	 IstsrjX/SnT3sv5nfzOMfW0+GRODFKLp/Sp2O/UscovrfCXRJZ8LPmu/1p8cfhV69m
	 GOFVMSoPK4gok4mdfWEFB5ShxKrVc/tOwBX9EUzj6ZBjBKcuByzZtBSWcytLuZ/8dE
	 8evrjQQSeLz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5857CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204163373.19223.7892584712558125004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6574c8ddd1a2902c7d2f5c4c449c2c5514bdd2b2ceae54e37664ce1c0f5230
Date: Thu, 15 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792041633
