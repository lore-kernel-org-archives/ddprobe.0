Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3197941D221
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787040634; cv=none; b=nImGWUfq3y0yz9TyoKDCd5hy9nCTFQCv4Bgj+LnUC1vMJYEsVXamVRpu4EYIpVAii8lP6mi9SOk04e4B3L87Ij0iYthGbVMGI0uxG5G/tAPp+sTxSTMJ2n+SnBHnCSYOPA/lFxmQN6UjlvR2R6mQvASrHybKLPaTlZlywWgtZKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787040634; c=relaxed/simple;
	bh=7G5tfhNxVpL7zInBCbMzkKuquNbrWf5LN2bYRE1PdFU=;
	h=To:Subject:From:Message-Id:Date; b=amr3tjKoxN6rbhgC2/mr81epgRiIYIb2SKt/ZM+/ptYFFCzm3+ZOQ2yHEqfj6gDQ+WxduvIX9jhrscUsXSQlYW3jSYdYIQlGzlAHfO7NpN8d813naO6OwMijukA7TZjugKwDIzgpjZ5qpTR6b6axI0TmH7GvHq+beKdz7xvIgMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHFdHTz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHFdHTz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED37C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787040633;
	bh=7G5tfhNxVpL7zInBCbMzkKuquNbrWf5LN2bYRE1PdFU=;
	h=To:Subject:From:Date:From;
	b=SHFdHTz4jbruZpzz29U+Vw7oIXtWhHMzSzQPxik1Aaf16VkkB42sB+ymNtWF+jYeE
	 CTUHeQMDeNTRDlH3aPGU1S0EXhPBJbBilvLMQycAPoNc2Eg3PdoEK6pH0roPCoo9v1
	 VH/d3cSnXaOTpGlb+G64IHQS7rvNuqmTbIRn2Enb1s1uMV5ymi3DRFOeDTxe1nbU6R
	 UIo6DzDRBDtoUTQOM92T5TZyDKAlR688jrRHYU/ihspo0tpOjBMk9Kxos6TYakk2+G
	 OwgM7XNkF1mAPZThRQJ/u5Azd8twTMiW1prlyHQY5r2Ndy/Yq77Js/VOTMtJ40DsYV
	 2k0L+Jixes1ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB76CC5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704063369.4228.10472058858196626445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb744885f2fd3f59ee6411846d4a3e94c579fe1f6dbd552eb51868b84560fe7f
Date: Tue, 18 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787040633
