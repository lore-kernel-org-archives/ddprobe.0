Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475F917A5A0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719958523; cv=none; b=pfMg5lNQaWOm22UyOwFLv+JpVFE3zGWnu/DUXyclpJ0q7fwy8CHNd8GTTXooVtgnrZsoEIsqIptydKZOpOzzpcc6mta4xbmRMTtBGrmQ9E7f7oEaDiQC0UGkRzBJy4pgZ4IzD+sh7QLv26hfTshC8DMQtT57aS1qr4XZJPnq1JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719958523; c=relaxed/simple;
	bh=C7aFTJApNpNvHHdMyEE7yFPWTkvYzQjVee5VUcdeOFI=;
	h=To:Subject:From:Message-Id:Date; b=lIb5LNKJs44BQjtXhnI9NtPKYvPusorfeH04LTAGa+x8Jwx8zNPduWNKID8972JlnRzG+yio0ATArME0XaQUU2G83tu7/s+v13rRxBCgyA3FHp9OkJCJ7HZajAJxPTgHEU9H2p9v6KRuoJuW6g9UuV4Rf0TWJOLZjrX0IcFNEa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJGlDVbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJGlDVbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5452C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719958522;
	bh=C7aFTJApNpNvHHdMyEE7yFPWTkvYzQjVee5VUcdeOFI=;
	h=To:Subject:From:Date:From;
	b=hJGlDVbY/I+owJdjWx/oe/6aWS6SUSlhtH6cvxWmVHbCGE4H8zQccrepSIKKty4VX
	 8RpAJA/FI3zF5r7wrnHz5kM2LCS2ZOnEWL6h9Lh/IJnZkbi94hY9RP75FM9agcocV0
	 Oge/Y8dJGBdJ6OsI7W7gENO8lIkrVf6Osz+BxW/tZGL7h9QDP7x8PwVtYPSJAV8wsN
	 1rPyKXDrsKeVwuiYwKEajIXs1GtyKh+od+bZRKy04o1NG72/J+kj7Pi+N179Khbio6
	 3I2XcQlfRcsPmDVnTgaLYeaYi1gHK6i/7FSwc6YPcGD9CuX+eSzaAaBmMLuqsWjgq3
	 87ADeTxxmrWYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03F5C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995852277.27805.16616356060345963086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8376eae6ce6632a04d4d757e627bc4ef99b7a0a03f6787a357507c00e2ae58
Date: Tue, 02 Jul 2024 22:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719958522
