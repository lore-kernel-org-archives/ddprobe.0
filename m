Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371A6273D76
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775200534; cv=none; b=SRCT+vn/uihysP0o9IOumtKZm3g5IcP4umQJ2EgTpv1FJD2lRiMQiSFA+PzkE5f+/4sdQiLeV7fCocbFLQO+LmPYEUXDDJbUpNsLFI8qs7o7oToDaI0wPKLSQOaDlVHLgAlyEGuXuoczJX43uHKssw1MWaWiQs3uAbzd6n7yRlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775200534; c=relaxed/simple;
	bh=e9+oQGbQYonRWpvtBPp6aUBEuL/BY0UBamw8IOgPWKk=;
	h=To:Subject:From:Message-Id:Date; b=tOEtThW98aMmTkxPgErfGC0itMsx3CNSRD7akdShYmgQc6Cb4YqvMdRVBGUQQB7E9sGWr4bTMhFaYzinmlxkTDM9YeGa+7L408DygpCm8aS9AYP57XDatw9tffZT1fhykM5umVkGmnBR5FOz3ZE0J5vdoL/ipZfJtTAD1faUIvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5oEoFhd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5oEoFhd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4273C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775200533;
	bh=e9+oQGbQYonRWpvtBPp6aUBEuL/BY0UBamw8IOgPWKk=;
	h=To:Subject:From:Date:From;
	b=u5oEoFhdK4bt+2xhgMOSGkYZ1NFNGuwkhPiPBaClkdiFOPbr0i4uXOZYHzCtj3286
	 QwNhgBxEFAT8as3QoBxiIV3U3wp7swmFyXW100cF8J5soOSOt34aezln1IXOp277p0
	 Mpc4MmqW1jfJec38JsSh0Ql8zD4Ik4tJD1ByD+6QPxzJHrsSEroOUGynWH7gyfhQzN
	 yktH3UFFEePjFDSnWtB+OnQpWsHVI/wCO98l4X3szv0ZXFS8BTagDx9kpnncwk2G33
	 Hegtsw+ZcEG6+LXiiXntYeHb6fd6Kyzs9b0V1KLeQAQ1tU00+BZWSlJhXQIXOk+KvN
	 LMnrU37UcAelA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B165AD730B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520053371.11063.676225012629929578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e410566ab5d8f2cd1ebafa535cc28912c8bfbc74a9693d0d421ec655e6388a2b
Date: Fri, 03 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775200533
