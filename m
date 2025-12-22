Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304802F7478
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766427834; cv=none; b=PQSFDGhJ0zOM6JSdpz4+72Vszvcu8r/F4r0+ycEEY0kAU6AlijTy0bLa72zuEeRlWQRcPW0PMKpghkUR6KOkLLI2FKJ9KXWddDKf6IVu2jfoyxvxQxfcsaWYjOnc3RRz/6Vfp8hW1Nsx7H4hV67F0qTa58yNKi+Z8B3WhHGUwSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766427834; c=relaxed/simple;
	bh=qOE/oTbgRSTxdJ6iqBObzv0gD5/mvBNarxP19CGxW08=;
	h=To:Subject:From:Message-Id:Date; b=X1WzalaE/d8pWAd+tOyou0XzDYcJnwVihdTROl2ZmiEtI7h0NuT6h44zpVO/zyXFdnA4PgLnQKyK4Pje9HYphaFnlUL0XQSaXIQVO8CbEqShrEFDJhu2Nma8jKZcNARXFYRWC6cAF/EllCLWgj9lAAxOn59sG0LKW+fxFwT4w8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+GU6Im9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+GU6Im9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766427833;
	bh=qOE/oTbgRSTxdJ6iqBObzv0gD5/mvBNarxP19CGxW08=;
	h=To:Subject:From:Date:From;
	b=r+GU6Im9H1jkuOp2NaiiN+8HpXIzMAfpWKM22gQKZub+zhRXMMEwcNL5nPNLTfIxx
	 802TPRvvJJaelOcn/GGncqcfSM6MMKLQoVM1AO8p0v/bVqYTregs+qc2h3CbOmjpee
	 6qsr5YKnKNXij39iQd2XPbRofMIcK8htWSmlj3S8ehYNfDFQiVCWu1RHt/uCEyhvE5
	 49k56ZjHUUuyl4l5I7HghxqkZj03oTwMvb93pt9lVSPgOThphX9/BieU/uZ6XyDOC2
	 zittrPWi5RgzEFG6osplo2Yu7Y/s25nQbZ49T6TlJKYrk/tIkt3XHL1ktssx4BWIZ+
	 Oe4kKxAei35Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E3E6780F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642783358.23937.1239684022991360265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2cb10c519dca872075ef8533e14fb5bafa224f88c43ab899addf74ad5bdfe9
Date: Mon, 22 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766427833
