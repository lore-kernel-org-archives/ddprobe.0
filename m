Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2E22AE8D
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758972595; cv=none; b=guAgEbUtKSnfqwnpcfcSOizbP0vYQ58AYYScMLc6aQx6PS/GRDhAWkXEo2yIoIsRlHPsDUeWGLqlnIErSyU2CFmz4WPg98lWGtq/C0D0oASt+SCp9saCM1EmUs/4NkLxlS+2hb1zrQ/Hz4ArQbLz4T3mTwOtADhAtRtgcfcRbIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758972595; c=relaxed/simple;
	bh=MIZXcJSwxyCjZ2A4Fx08YGyEKmgk4qzkpHAgvBYme7g=;
	h=To:Subject:From:Message-Id:Date; b=rSBcJT2OzD56x3lSrbmrE9GInVMyPaDFC98xlb2CMkXx4saNJalparKZkQRIk8+YxvYFnXRYSSlfZBKGaGKspSj0mBdU7uPgYGEpFhsOYu9vauTHCKcUBiDmKQ+Mgr2n/wjxL1Q873mkIIHi8+3vrgfJlqYYw5gv/9MzN/GSgxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8eCBQpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8eCBQpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7257C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758972593;
	bh=MIZXcJSwxyCjZ2A4Fx08YGyEKmgk4qzkpHAgvBYme7g=;
	h=To:Subject:From:Date:From;
	b=s8eCBQpLb7iy8wJyBtLNi/1t4Eh3WN9MH52rhCH8xwQEaNTPVkVNQR/OkUh36PIHI
	 cghbwtg3mpRFGJy+ggCQdFcysMQWJ6p5tI1bI8xLsTwekK8oiJwVZintcllZLsXpCG
	 h9tPuAHKEsQtPdAzMWOgkNlU61ztTIE1wq9tQpnSWpRqJfvE/G8kfgOqzLBndBWcxq
	 BWBn8s/95iEqDgW9eq8JDgNYWuIU1wyINTCzqCExWXqr0tgAMccz6bON5JLvGZ1wat
	 mntMoAd+ZJS/sohZ0gTEtq73O5fdY0oCOTWpiAB0Pdq+R/gMheogPKrT5UqwZiFeW8
	 ldHiV29UZfYPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996EDCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897259361.10232.7697983624046897193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18995a15e8fcb9acf36b092485d5d24df6d899b7372d4b63a75d75c0672d68f2
Date: Sat, 27 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758972593
