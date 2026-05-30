Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C3739D6FF
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780148014; cv=none; b=YagV95dhqAIwISm7rK4IdpuIRb6DFTY5CAXi5a845gbIDLFBwyBwm/Ug5LQGoDOpoWkF+vjwWhoOdxXHoztiTkRbI0zYPrccJW+7J6ca7MQRixgmUkNE5/ex0WbHHuqlw5qRng7EbvIUfilGtCrSWeWHUQboj+dQAXbMCI7HrOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780148014; c=relaxed/simple;
	bh=yac/sS4RGywMUbRNolqf6ZTTPX0rhnCG1+r2hRUm/Dk=;
	h=To:Subject:From:Message-Id:Date; b=lGlQVPkTyO6BG7UZVllXR8r9UQTXymyXXyBlJPTfBLo8eVVTml131a7nZiao0NVWUNqaulYb3lAjvBA1J44oDw75EZU/DItoqbpn6pG+wf0mkneOwsmLr5CsLzyAlj9inszAgGh9NDrK5yzQRhwAeyNwYVQutgFpErvGp8fHqIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxtJ/Gfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxtJ/Gfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C77C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780148013;
	bh=yac/sS4RGywMUbRNolqf6ZTTPX0rhnCG1+r2hRUm/Dk=;
	h=To:Subject:From:Date:From;
	b=QxtJ/GfoBkuwhuBf6LBqkKLAj9hTDjPymq2w+YFJT3uKuURPXWIlLkNaSHVjNtrN0
	 aL9z9ow+FRb2biNmiurt1n46UCTYyx6uMrJMR2MuCSU5MX+gcmPoEX4gTuETFXqMPb
	 uu8T6ndO9iluRzI7EKUv6YJrL1yiQbdEZ0QN1NPpb0Ez+vhube3rhB8IXuBtcwrLZ3
	 j+mo1ZcRuCX78CO84yaf/OmtsAyD40QrajYC509dJOJScNgKBctSLj8TmDd81Su0vq
	 6uROYWdNP8ocyDtbgdfr2bbOq95vQSXXwFemezLyYtPxxPwQ90QBrkbw/dKaR9dBeR
	 ZfZmcZV7XCCbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E3BCD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 13:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014801372.25753.6113910002859613690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2ca9debcfd8460a032be3049371dcb63c2b8c7944120b6fa3c3d347ccc60bf
Date: Sat, 30 May 2026 13:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780148013
