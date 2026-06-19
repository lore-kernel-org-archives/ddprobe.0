Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1F5331EBC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781833594; cv=none; b=rqQwWacNWZ5bzSk9CX/f41KLzMB4dpEBemNqX0QbZq3BKJrFcHOEqUfdvJuMo8NMp6hOBPt/I+wVjp/igVb5JUPH5/uPyJ/ZxnMHq0rSYi+I2QncxfUZ8/dszimBxhn3aLYAKbr1o5DL5mFbU4ZaI5anyUv7nQVzAYY5NTH0dOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781833594; c=relaxed/simple;
	bh=JoEfc4zxliHm2v81ZAJwfzeouz0IbCkoMYOMOtHkavs=;
	h=To:Subject:From:Message-Id:Date; b=PuFNfbU7BcpC7tjtJUuDTioz2GNIWYb2qguBr8FLT0C0h9RBOnnkpfDqu+SzeYbaGtCJLjueF3j4Qd58hYPrdcq9jo0pkNSiGlXCC9d0eQZfFLAkrQSlgxZBf+y/Wh2REm04WicPUrBjN7/oXU+CamJm6/v//mXGDGBmd/qwcb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMleTeLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMleTeLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B14C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781833593;
	bh=JoEfc4zxliHm2v81ZAJwfzeouz0IbCkoMYOMOtHkavs=;
	h=To:Subject:From:Date:From;
	b=XMleTeLjudsOBdwjRp2XxzsRCc0BOYIVd+BGRrT/msm2ORYhe+uQKK0JU9XglqUjs
	 jMRdrG9+VBOKHXTVXDVb2IUrgC4y1scyFj5jPxT/ilfIABnIZB7Ye38qbuFRF20RHy
	 FWXUEGwiyIAHZc5yPT0xFUd/R2FGtWeqcBJ5gGFxDhVhs0eVFAnJZfp8dFVNwvGEF6
	 j5u0gYYcMYi/tssTcglhxUr2+QYWvh1fDGtEWP5M/WR7wWSIFLoGHyfs5v6uYoyR8k
	 OQ04OIbJJ4tucxGLCbP7Q9ZEFYm+tnZGD/IJS/LRmB61/NMvPtqgLt+ET/dl8JC+dC
	 4WWsOlYEhZflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88AACD98FA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183359371.18593.17781422070043358316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c419e78dfed84de8e1bea63dfd417d3495736e3071a3c53925932e93e17a0ed
Date: Fri, 19 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781833593
