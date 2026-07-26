Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436CC384242
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785064834; cv=none; b=Jy44jSckn/D177mlOoGJm5efi2UxhZ+kFCK5/yroKkRKAsP6zkRRmwmaNfTRGlNuhDoxxCHF6H9kCQJGZlaQXhcdVwhM9x2uvY7bHM3wVEtPbIS606K3C2HG27dnUnfcG8lHZb6BDNXr9lrDa35sgxbrYPt1shQpbkCLxrUq/jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785064834; c=relaxed/simple;
	bh=4HFE9ybu5fEh+NjOlvzlmtXCtBU+wpkHMXpYXUgfS4g=;
	h=To:Subject:From:Message-Id:Date; b=bbKqgTlTnyP8DZCRcmkYAz7atzepcwRrZzlDVHcAQJq9cpkCap0aNLsIAw9Vi6ItkvMkHRKx4ayShnTZ/ap1nW5V9WcBdSTlc4UqC/8bTOVF5CIgKOInNnqJW89a80zfGQ0UzBO93kFNh05K0awpYja7eC0PNGN3020+Ned7QII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ES+XTPD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ES+XTPD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF55C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785064833;
	bh=4HFE9ybu5fEh+NjOlvzlmtXCtBU+wpkHMXpYXUgfS4g=;
	h=To:Subject:From:Date:From;
	b=ES+XTPD8PLl8CJAAyQq5ZzGN8nBp1WMtnctcL3kjtymZYs3MzmR8+VUwnr8RTc9ia
	 utmFL1r6fmGtUhuEVSPR0cz78pdTPiZh5GaG/YBau7FVKQutZb2aQ/d89PCizRdkyP
	 C2RqFn1d/zt3YfwbQFupr1dcG22+WlNHaXyYpsdIBHCK934XizhRk1VOGaBUP2c5oX
	 p5tUrd+qspHvAkNoTrUAyLjYrpOSyoOUbtvRJxmWq6xdVGKYOjm2jjdbiPDKm9WkP+
	 t/oR5qC+WFe4JSjOeJfVPEhzAhgXzZPtWXo+IefD5VT5MIlqZe2a47crOIWS9Z8G6e
	 2yO4MyPNWTJmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93CEC531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506483368.30904.13805342379755573998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a098c33d60f1d90541dc97a021a63c2065626f05e5486142e2a3335d98a9651
Date: Sun, 26 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785064833
