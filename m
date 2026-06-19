Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465738F49
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781850394; cv=none; b=C1e1SzLT2KBK37gLHzQWqgme0tgWGwXBhs02aN39XtIlxds8N1Raknaac8IiK6qoSbMTuYfYr3yHrBHx9rkAE+BXVCWRuFD8irBg7S6R5T0j/hR/5ypEt4k5Os9aqQ9MHCkW6IG+a5nGUMGye8kpp/J/4DZsU4MYM7SwVOm34cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781850394; c=relaxed/simple;
	bh=KlMtBv0Bm5LXlVS6XVQGVitw0+PJgPFdw7zhv7bvIn4=;
	h=To:Subject:From:Message-Id:Date; b=G9gvlM05qObKmx2ikjRnsUl3RLIo8Q+NPQgiqZ/N5YrvkT9UcCJ3M9x9kCh8qktApAfqstjaTjC/cXgxPTzU77Vn+9vh3MJP8WJQvb/D+iKGmbm1i+Gw73+L9t1HW1F60EMtOpBZfpVK7+k59fzFpj8KTsYwwBGUT90LXv64XDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxEB8KkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxEB8KkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49CAC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781850393;
	bh=KlMtBv0Bm5LXlVS6XVQGVitw0+PJgPFdw7zhv7bvIn4=;
	h=To:Subject:From:Date:From;
	b=CxEB8KkEQbOld/Y+8m9WtXAA004sQ+KjQFbcm4vyiBF9RrjvMgpxrq/9zcsUwTYLC
	 yFaEMkMSSWqRaonzuRxzY6Wc8V1TVmLCbAes+lhAQlJhci9TS4khd6FBZz9IxbsAuj
	 RKeGBHES01pRFBkHC6YNO92/9WZ6/8yKX2daIJEY6GO/Rvcz7aOG1MIHvDFdi1Jtve
	 DIZN31UtIr4XHnrMLMpOGSXSmShX8gLlvoNDWl+SV7Gee/gIm9d11VIhX8RAuClKea
	 fDG2KsTYRWhUFkliUwtOTZLHLhHZ96ncY+6GvrVnW3AzQEJ7T7XFgulBHysPI0Qj39
	 OJg+tdTO/HNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82AFCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185039374.2836.2919057898086978188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d039061c10490d1a8ed33c6a23eeb2f48eb13a1dae151fd9008bc61fec2783
Date: Fri, 19 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781850393
