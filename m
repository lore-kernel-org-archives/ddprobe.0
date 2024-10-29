Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235D419DF64
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730224554; cv=none; b=tshB7MVneFBa0PEEmGq3Ersq5SW+PgU1mkwH2x8z3OSoLyW2BA4DWHdl7q/ttNEfyoNgq8lfrJEwjTNOwICuZrp/iq7p8QRdBj7tKVBnSLU+BKHk53LRMmzxbiBwNXCRYUA0JMFw4/Ub9r8NiCXQUrRDP6zid3KTvR5HHnZlKd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730224554; c=relaxed/simple;
	bh=elvHgSUxPvnnEHBWqmy+8M/IX+yWAYAekLMbnLPG5NE=;
	h=To:Subject:From:Message-Id:Date; b=bK0RAJGVdq8lFWafWRjiAa41dfVs/cUepkb1KQunz51LAjMHFE6pI5W/s+QxBRjGZ5M4vqOMGhP/Cm297/KljwlTZmGyT0BiHMIQHcjfVfyLgIe6nv7GvQArCpoOITtGpXdi2famN36A+dDs4TiVzoG4AjcNHp+1Wb0fqJLrLBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJ0mtbiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJ0mtbiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF5C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730224553;
	bh=elvHgSUxPvnnEHBWqmy+8M/IX+yWAYAekLMbnLPG5NE=;
	h=To:Subject:From:Date:From;
	b=JJ0mtbiM5mG9HczaeV/lkZaYq71Az0bmhpaS+ME4kFvBE8nlUcO4ZIg7PafxwwXZ+
	 nHPrThPRVSjyC5E2BSh78pKe3NYFe1ovLiQCbOS+kmNwC3NJ87fgCywrBDgmJMSIXE
	 795JuBR5qze9820vdjxyIeyZlSW59GjLeRX5ritB9LDMi4CHYZ3fC1Iw4HrPN2Ek7D
	 3iSo7f8FOhxJyBZHvey31kCyWD3K6lhj4QXSPoucSYrf23F55annV0WRlj74XA7/RT
	 499VnyMmt1kxbXBQOa+vZFF+XP3+si344iNx085KOOgih+6oweG/jjfqr68NFCL9I8
	 a1SSUFw5AqIEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB6AD3A679
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173022455362.11138.11216597035750323266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5e65e2a7abe9f2d26a1ddb6ee5081eb434420fe93bc87abc6c0d1ce54b8d46
Date: Tue, 29 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730224553
