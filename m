Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275E726ED3E
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778857834; cv=none; b=bzIcRUtWr4nXFqzF6KsRDw4bRWgLfZDsaJIDsJ/b/QTzucgaYzNam6sF6Jj7KH5xduumb2jbCiRuqjoKmjKzKpo+3SvxC+RF+N/PCgttFC2iy/LBu17bIlWHKvOoszD3KAUKH02wEPx1gMaZkngyvfxnkhGH0eRg6EAgo35hMnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778857834; c=relaxed/simple;
	bh=2qrG4ujgOyBt4L0lUQmqFdncZ7L/kwO8c8sgvXCFS6c=;
	h=To:Subject:From:Message-Id:Date; b=siWKjjJDX+WZyFLLwmBJRI5T+F4LnzockLLdUodDZFeD79c5LHjikdmdYgadELxAB2fqeRjpUbgJYxb53Y6kUnm2tYNNOeHR7mGx4ZJqUtlP8mM02cSxAPle2MaIE0RdKnxteNPYbTgNBfXDrhWpfs9iWAkXgpIl5XF4hbFQktg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4KA4Vsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4KA4Vsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE5AC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778857833;
	bh=2qrG4ujgOyBt4L0lUQmqFdncZ7L/kwO8c8sgvXCFS6c=;
	h=To:Subject:From:Date:From;
	b=e4KA4VsptaUWuEENZu8RCn6KVWKorsJdUlMOcvGnwZ0/XWYOzL2rP6S/W9En1sHgq
	 +xW/zlB3LeXJkiNqRnnSVpWM8972AP7BxqXFB2fPV2gfWVne5uWxHpS3EECf62MrlC
	 SMvarIcFZ5qPpkp60sRGkvuEjunzwvwzllw7KlGxfPCmtJKXc7QQxe1uF3mUvTL9KS
	 +D7EFQYBTd0lRJwHsTk4rKqxx/SwPaOQk58rE3KUCCKUmuK4idN0XFRU8XvFs6JMfi
	 E6HLlzV6g4h8E/jgHkiFn7ARG/N0zVDmpv4A8uTKEz6HtUIUnzT5QC+vDUldAps1fW
	 EkjCpdwEnDR6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9C1CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885783370.16245.17611684141958451737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa658dc5558feb4f4f05661f0ef5fcaa0a9df27a7dbda8cccb6a21cb084844d
Date: Fri, 15 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778857833
