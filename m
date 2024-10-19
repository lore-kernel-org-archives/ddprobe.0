Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F6629CF6
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729298154; cv=none; b=ZW6B/NZzXkhpT5e/X1sQk/4rXLrOVekoAc07BPw0aX4vGqnXinQXYseLIT4THTiYoIwnE//5MOO21eib0y4Vyy5G1ilLDLUo3+sSJ204BZpnpLmXrU7F2me4s0O6LeLLYpCiDeXernSZ5c6wTDQms5hgI7HDrjH0NG+LkGEn9hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729298154; c=relaxed/simple;
	bh=bf0HM1a3h8X6jLIHbaSqcGMsZfp1KP7KipBoTJ/8ktA=;
	h=To:Subject:From:Message-Id:Date; b=r+2l6PwXVcP3tJBkAmtjVbC1o4o099pTnOPE7gKW4L8SrK4g3JLUfk71yvXk9JgmBRFh5aZlE7oBztTgrRK9Cl36McaWTR976BnGoordCmwNA1UwEaB7sUBoAv8R37ovjdsY4a7XCzVhgxV4rpsmm5QKCfjuDiG43www9jnPUIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3oblU0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3oblU0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF06EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729298153;
	bh=bf0HM1a3h8X6jLIHbaSqcGMsZfp1KP7KipBoTJ/8ktA=;
	h=To:Subject:From:Date:From;
	b=d3oblU0yTqZNqvp3CfmwYus4Q6dOQxFrBOOVM6Kh8ryAQ1lRjssH7M0aDFfxckgYN
	 r0pydewAyruWVtn4HhLhDTfPI7QL42OTQYO8hemugThLpgh6dxjZCwAzrleQaNP3XF
	 OanxH4p0Hn7lqCPI30EqEk1zcglsdaB+z1gbTaPjiES7lkK1BlGlVh+JBLE4oQLCcz
	 HmyxPDQhfdiK16SPoPSaC732PcAuhX7j7h/kQVnv1lcoBcsiBzscwyJA3FKM2TaXQ9
	 ilafFokwRredhr27bBOiCjluml84J1KxA7mTDVVnFAY1LhYJ2RLN5tWPp/YUb1lyYN
	 mzHoVMhz9OQbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961D4D3DEA8
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172929815359.30354.13370248077334471507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0fe9ecf9aa8095342db1625ce298a704260a6bedfb9a00cec4cda52ddd7097
Date: Sat, 19 Oct 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729298153
