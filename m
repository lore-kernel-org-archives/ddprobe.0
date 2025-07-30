Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1A31F1537
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753907394; cv=none; b=st3gLZOLmAmADAa/nPL0b+Cu/BPvuKN7zwQUAj4EY2xKEZ61o8VKD+s6Y3uTbrhCgJ3M0BYa38dDYRXCfJeO+d43Y3wbps7yfVszbPa7g+96e+PfsEZlheOer2qRJFkWCMYQwyaqZlIKLEgWbL35xC5ue7REE2k/yv3zyPOSXDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753907394; c=relaxed/simple;
	bh=AtPFZeHxHTWHwTzDcvyxD8zyVy1IT+mUZ1bFYvaa8HI=;
	h=To:Subject:From:Message-Id:Date; b=izjIw1QEOkestM/Qtd/FVH2LqKbLdtt/l1C7QqWbzyV2oBbmWiCpPwArjUAqpcXBvEFk8+b/jLu82w4/ESVFGgXB86xzl8O55DdvPja92fA7w3byM3qU4v2tDxT/b8usxFwRzSVqrFFuYzM/nOmSR7FlkhDNcq8k0WWHhTM5fGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qeqm7rdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qeqm7rdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34C9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753907393;
	bh=AtPFZeHxHTWHwTzDcvyxD8zyVy1IT+mUZ1bFYvaa8HI=;
	h=To:Subject:From:Date:From;
	b=Qeqm7rdujcEaA6OTKiqiT2cCWOvxXccmTWEcHgrujCsK4NvEFDB0bLHeW0cXrLliB
	 dil8QVVcO6kK7nK7sswiEmQVCvz2rqVG3WcCe959/j9Rb8MErX9+hDMT+lhebgKL8C
	 jQrihjxjtY1dglcyUiuWQb8tcKHBGzgTWzSmOBUjrrpRBpdYwquncWq0x6sccv9Sl0
	 1dc9CupaCHMTF0hFFAPN5lSJK5vTbzmZEcL/5YpPk/Kz2XfkZUC8CiBaJkuxY9D1uv
	 mZgt+vPvBvB+DYUYVFawyHnFbFTgKv6yr18aWjTroDWYbSXd+BmglyeKDOM1Fg4egw
	 G9dEmJpFuqwGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90699C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390739358.8405.3363278569185613719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e40924b805636adf98e629be9add9ad266d7c5b0fdef37c0bb4c5c65679ad8
Date: Wed, 30 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753907393
