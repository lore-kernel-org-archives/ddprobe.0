Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F1A21A931
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749488994; cv=none; b=JdWHA18sEuN185cdlAdTloB5nG/YvqHt3QCAqTWhNNy7BvGWKX21aZHdrQOwBT1zyGroGcd/ufjgY0rgmDRCmcS2/2rmg7dLUdb1VzSIoaXJ+qOmdNsZZC8szhpmqne89U83l8xOmEd20DinmbkYvHXekc0g7oXcMaYfMzocgws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749488994; c=relaxed/simple;
	bh=eDn12B8VeSvwa5iJtxUyIhHUyFqZy7zuDctUJBO85YU=;
	h=To:Subject:From:Message-Id:Date; b=J3msnaJWK97n5RKLvDH8sZkFI2KGRatVLzjObuuO9qL/Ixu39vexhwvySu6U5j+F06GfMKCG1zPjsH92WibgEvI7QzSlRPYWSDNUmxshJ94ssFvuwzc6sqct+a987kzAQVVrkG++V/yJPyw21LQhQCnt3DNanE5szG1fZsvwS7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIo+6Xs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIo+6Xs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF68AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749488993;
	bh=eDn12B8VeSvwa5iJtxUyIhHUyFqZy7zuDctUJBO85YU=;
	h=To:Subject:From:Date:From;
	b=sIo+6Xs06kvVTdMj0sEyxPtVpXMI6dra3OQ11uNxiKw4Gcg4UijLbNVNAdSoH5aA5
	 sYnjKU2zOnoOJAGWiZn/y1QBNkweCxlv4QkDY1ffOrAZI3kMVOFS50qLPQACLLz+AM
	 L1thsaAg+5WCVf9xhwyXWroVB58jgDSp2eVGWuPoVYyRHHz9GBvtnFRZuNcUZLNxUM
	 3qqXBb3TJHyAWKGrqRZHXlEmhvj64W6pxwLab2Gecr/NQD9XLSNixH3JMeP6O3CTeS
	 t2m/7wHC1ctNIo4BOa/aBPOMXMviEO22EjgEaVR5XI1XuwtM0hKAYqcYiqqeg5EzWm
	 /OQm8icksSlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F152C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174948899357.3564.18154049992244732954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2e0893258fa7347d249c37b8ae84ef9212fb8fb1ca7130e9c3c577b0fb86fb
Date: Mon, 09 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749488993
