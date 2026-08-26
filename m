Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE553655EC
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787765434; cv=none; b=DQRUxE7muz9HweQcdgfEBrGI1Ue7gTF+2/XLkBkmx+PeRCOglQsjmHQ01uZqCLUeByYcXi7qsSCvNgKY8fyJlAtwTe2FhN+gl5rQ81A7c8KPmGDNriuqA2yEHhoViYfR3XoZOxxkqjOqFPue3JxRRW2tnVLYIZvsMFP1LUq6HQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787765434; c=relaxed/simple;
	bh=d/vHxDe8K3MRqo6v8HNYYXOLuo7iIvEMLcGqOUQlaeM=;
	h=To:Subject:From:Message-Id:Date; b=ojqxS+KlnMZ3Ey/jLKlae0POblthFEBYEcdFGugPFJBJru3IxzCFAAvI2U6+DAnnitQtBrbOu4gCdzY3W7mkhrYVCe/SS3YHz0wO6L/WfYL3OwgTvob1kXP23KG1KoVqtBHvf9plQ38L9kLVrANvAWZdfmNx8Xoo8a0XPhs7igY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGngp86W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGngp86W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9A2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787765433;
	bh=d/vHxDe8K3MRqo6v8HNYYXOLuo7iIvEMLcGqOUQlaeM=;
	h=To:Subject:From:Date:From;
	b=TGngp86WB2rxNTpq+A25pJZe6NPt0gQu9YIHiOQBTGR6KE+elCpBnhf9BjzSgNqe9
	 Dj971E+TxcVnpnp/yC21wuqsgVBqPpLwOGWItLzdeu2BE8TkyRpIxrmda+y5hZxctB
	 phIEH/+KRYUX3EARf4QaRt8XxFYqchIs43L0URvkoLsQ0jf2xsyGIXJYMD7eqyGeqj
	 xkv03qtc+7/VUlSy67wyIb4qj+GeduQSdCr0Cry6oOf3ZJbOaCDRADPEmJ503FciVf
	 4OcX0Pz3ZL1fEU6ijh8X2iwIiQHOX/kWTN0DAk811V4kojHVdbmWaFGX5XLWZq/qMT
	 6Yb3e+pytacMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB255C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776543369.15103.166602070531029811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664e1b69be5b2b5ac5cc84bc64d915f2422dd8be770067fd4c2790d80ead3327
Date: Wed, 26 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787765433
