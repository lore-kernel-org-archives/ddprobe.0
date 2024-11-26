Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28072366
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732618554; cv=none; b=QX6nxLBeTe+5hApNeTgmSgaN9izA/TMSVUvj6CqhmMu6T57k9l3OP72n1wlmYuWOFMDwCjzE5azBew2TpvDSKT/5o0tLdrHCp3Nlm4Z2teQj35AkB0ctQ7RZLliRsXkpQmnWr2ZdZtUPznbFagpeM/jt389FI/Vb/fPI7XE9TYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732618554; c=relaxed/simple;
	bh=Djc+55R6a4KWKpJP9DdreKBTRFZekFjAVakgdoo0pik=;
	h=To:Subject:From:Message-Id:Date; b=dN0SWId3qqpUEaEuMz3+M8uRCR+pSv5u7CMKceNHIDqlUy/aMs52zId88wapLQ/droWhrb2tz1cRcAZQDVbfrhs4gFapHkuZcNhKhWKZgBS0fgcNylo9DFXcUJY/jQP9LsH6H9UjZkHNIvFU6jhUzzozDJvIqfCn17JuvjVkNhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAKWH+RM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAKWH+RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9647C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732618553;
	bh=Djc+55R6a4KWKpJP9DdreKBTRFZekFjAVakgdoo0pik=;
	h=To:Subject:From:Date:From;
	b=SAKWH+RMWlHDZ+yz8WbdlvgTsyHMauF2RcZEqMgvnZ258XS+qWUfP5lxw4xVe7srW
	 eDP6wCjIdeS5WegHl5yNkHKJoRv9dDUc13IOIo2PcjYlKhrWMrybUt/33ZMvXmJ40i
	 JsiFcjMxy9ecm1MEN52HLgsyQ3Up9LlAXUv+Z1MTPiE97rfB1vHz1WQzYjvGWCQpGm
	 yPZcyFqoG/FBMnF+IDPpir3XhOOjtaC7fQu6IAmVF8PRSSS0SCp7h03kNnUftscA4n
	 Oe9QCS6EbONfN13fFV4lj7nzxFYdyhdDAYHFyg6Leb56Z0cup7NMNe8hIZQWvUW15Y
	 YS+8n5SINTM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94004D59D9B
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261855359.30702.719512230532762016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ee5a20e4bb143a238605cbe90395295239644fc3cdcddc2e11a12d0350feae
Date: Tue, 26 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732618553
