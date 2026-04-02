Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1334C299943
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775102134; cv=none; b=I3HCMI7aKco/etQGqYjwdKltMrM9GRI38Eoza7RnIDtx/coeK+TyWiCdchzp+X51i1jEiVVCEUt2aUTDM0+iQtLsSlXtv7zkFiDbYXtGT1+NQPKfWqvn1s7SNwb/A0FlC98qJxl4pgnJ6GM02rlyaTp3Kqy4cxjFFVmn/c3nij0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775102134; c=relaxed/simple;
	bh=Pb6uFViailnTUN9zzK4cpP1bBmM9P9XUcU6xO06FaQ4=;
	h=To:Subject:From:Message-Id:Date; b=YW5F2jVrYKH+jBjW18n3T7RIZNosrdbG8jtkKn84oMgjjpIyFhcCjoqz6EE8kA0hR9LlRi6Cg5VdbMQs0pVjt4kLUWt91UOft2zf4ePyZzpYqtF0s/OMbtLaKZ+2qZ2baz5uAOQw2N/AuGQMxwp1aN0ef4BfMcptKssJ+Tiarms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OViNBQB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OViNBQB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC786C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775102133;
	bh=Pb6uFViailnTUN9zzK4cpP1bBmM9P9XUcU6xO06FaQ4=;
	h=To:Subject:From:Date:From;
	b=OViNBQB7lCohb1nGCvoPypS1OamjZwgRo50roY+mkclCBywTVPKBcPA1CNAWyxWb5
	 +0agq1fwewgqVBeYE2qYd+1A1AqM0XeuqQ2jd2B1ykwBWgrAGTrrpPkd9wH3n1RhmB
	 xKpG6NFcC+23uNUro3RLMUYSZbkPgb4m5ogsaQLM8dJQQx6cGQbAmOkMnchCM/1EGp
	 us5C2FFu8F792Fooz5mOAcjhodj/uJfZX+HtNyBUoJo/2TRqDIPcI/2cmrF59WIJAo
	 GHLkLQXw/5gnEK1Alir3r+lDJRbu2JJ6vPrINWYCzqRhxqAm2gK0Q0gCO+3DUjqOBH
	 VU7Y/QPgEou8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC674CC6B01
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510213369.17041.8062007739948616162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5bf783eea30b6a7422a37390549132159b8056b63040f32769dbaa0baff312
Date: Thu, 02 Apr 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775102133
