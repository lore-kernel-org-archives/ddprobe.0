Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3571B2E36E7
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754265594; cv=none; b=Pjm5DbAe/awuDGjt5S7ZYSBXKBpk/k+q0xR0DB/0+CbLUy8PM9VeAYs39DbqGy46qU1IUCdgiv6GCurlNzuj60ZmDm/W45XwPefH3HoY5TRxzBmBDyeXbq1PJX1/0EDuvFpqbdVnLy2st8yDBapnzJ/qSql1KKdIlDX2DQlOKws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754265594; c=relaxed/simple;
	bh=eipPyilgDexRNg+C7ClFVpGwjM03e4eBcl8dnDYNYHU=;
	h=To:Subject:From:Message-Id:Date; b=MDbYngefMo60s/y0lYuRGyRkuIm4qBkh9b0WIFly8HOfQo0fWbg9SKB2YF/zEYGb55SC0htV4a+1f4hpbqfdq7kcBE1oKArQU0U7HPDlGKyXJ91jKuwA/WMhIM5BcY3H1H65Koqcuc87yRGRfPs5nsO6eXpRMvYNxI3m8RW5IUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIvn9ZoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIvn9ZoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA798C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754265593;
	bh=eipPyilgDexRNg+C7ClFVpGwjM03e4eBcl8dnDYNYHU=;
	h=To:Subject:From:Date:From;
	b=aIvn9ZoQRzme51bJsnBxvo6eUh/qwaoq1vmboWV5AY4F/YJmEggTBESndE5LboxhC
	 ssbMGZ4Ja8Zp8djtQ3Eqp0TpOX9CmsEsa1zeZgU6+tCtnH1nXvNCoixAo8GSGn3C6z
	 CjKdii+MEY1SiGTp01vHodgIswJfUq6rnObNmB9smOo1PBdmYrqdSQDvxzR3GayUJl
	 0L0SILFA6uIJjXGE7X+SunzyWv9eSbHLR3YZ2yQDsYg1bcVgLwwKz0OI+noyhEWppZ
	 8CaIZUVtdI7NP4L+VNs4IRoo1w5YGt3CxfjnyUjke3bTOk6IDwQqDAr90Sn43F4d+d
	 teUMvnQIbEEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98224C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426559359.14886.11811730188170797736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4b535a20c73b645c2e18e304a7348543729161d1907f1ccec7db0509ffa685
Date: Sun, 03 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754265593
