Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F111622157B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772100894; cv=none; b=n3YFZMkvhCIM1j8L8BcI8WDiW6s4yl20jXdzoxYSIcTonH1rQtVUbkTouJ6WVXPGq6HlHrzx/DGxh3BOPREe0f/8gAF2lzoAybd44YJ61UAWuzkvNWlbYuoFfpKN+2tbxkHSdgP1MwMlAZegQ9/HiySrDXSPkXPCxYEL9dBjad4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772100894; c=relaxed/simple;
	bh=mYSAQ4W+671WK8TnhDiZ2V99A40AGdTzaW1FRq69ExA=;
	h=To:Subject:From:Message-Id:Date; b=I58PA2MVVqsiPYkus84yYmuya1nhOm/qMhcUmsirUFYiiTB8vqBAEiNl/Nl/JnE4ZIc9byDkotZv6KtnOL+O4yA/4ZKw2+5pg0zeag3VQXD3+vjQ5fqRLLYAECPfjGXi+V6MN6w/gdCQtnK9ADF1Ft2An6D1tNXMvpaFmQ6wbP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbaimkBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbaimkBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA8EC19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772100893;
	bh=mYSAQ4W+671WK8TnhDiZ2V99A40AGdTzaW1FRq69ExA=;
	h=To:Subject:From:Date:From;
	b=AbaimkBtXqHAMa+cik1KZyEgclS6CPmvjHobIthWyFvnhn+VnGRBYpTuJMnJmeUcp
	 zbkoCQYwxgvgUZdjCWTIaIH+ophiCxQjCg+HWPdW3e1FXCspgHi+ZesGuX6XFazUO/
	 MpHz/OgycKhLG79RERfdhAw7dFYPc/q/IlRUKtHVLtA+QKskCuj7BS48seEM8CuTrQ
	 GUen5rFPfHskkeZGMuKT97BEkNnQedqXNkYritP2jRLJjH6clUd6elp1h0+cXNfXGU
	 HL6nOkSKF5F9hXj0y63Ctw0pojj5BojJmjZBo/V05T9XTClw9tyjEYHpbeiD8dDxe5
	 Lx9KKd9noqhQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B5CFC591C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210089360.31824.3691688293796555953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7d10975257ee1cd9283616c8e1aab6db4953c3f162a14105b013e265d9e6bfa
Date: Thu, 26 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772100893
