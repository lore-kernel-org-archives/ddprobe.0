Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCAE306D2A
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790040634; cv=none; b=rB814miZSa1B0FPrB8WmSSnUXE5G1Autd1mbI7Om3M1steGz+IYeoU4RT3rLfAnsrXCXqW1BYsqJ6+DLmacO/ss5yjdYydkRUgqP/Eg9rZWe1unxz46Xj0Iz7BKAkcnH5vFjk5quzLI8aJ2/XLhkiayLA0lurZ7jnUMV6Aly9QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790040634; c=relaxed/simple;
	bh=XGdRoy3x0r6+MZCd4Mf+s0XbcoCVNF/v7f7nCgpFZSU=;
	h=To:Subject:From:Message-Id:Date; b=BssQO2QxyLeFhnJ/9Ygu+L48TggsTpGCPQhm+wpBF8r92mvVIlsudW18z/Ax22vdB+fOeMp62P41wdVlU0HJbf9xX3AIYbyMs1veKEFApV6PdIZT8OTbEzdiJhnNRPVYnMjm+1iC8N5OOOwveunwiHFMH7nlcdmjPGxaaw/URdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV0cd5NP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV0cd5NP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29FFC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790040633;
	bh=XGdRoy3x0r6+MZCd4Mf+s0XbcoCVNF/v7f7nCgpFZSU=;
	h=To:Subject:From:Date:From;
	b=jV0cd5NPO03Bo9PAhr90+QiaTggPqlXlV2hLpMUg6Ro24llJbI6aDuvlUt661ZENs
	 L8MzB8EjrDPFW7ZKXThAk6YAvAULrxgxu2wM/sZvuFfYtYizmkuW/4Lr6CdAp3nw9A
	 vT5NdlPUdVurrpSHQtx0tS1A+e9TNRhL8lVfSQ1ImfJhuSyWnZ7if51eRSmWIhBXrb
	 rfdbNuTr2LdcDWFlwZisXnqy5eVJCYBZWWyEKhrOnD+Uleet/vDeSfzF7ESfyY0X8C
	 kCuxODbNeWX0GJnFxZaobJ8kw5wSBXehBK9GyRQLiXVwyTe/5WIB7M4aa5HNtyb7r2
	 ZEp0gpFZpTOGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD79C982FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004063368.23269.10297874412992683677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22db153d83085d2db106997a4c96517165550bd24145940b6529416b409b9aa9
Date: Tue, 22 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790040633
