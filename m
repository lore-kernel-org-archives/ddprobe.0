Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B151BF33
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784470715; cv=none; b=OWv6UHH0KaelmGTbU0WlNDQhI192UquxQ0RAaY++LCqFPmxQtT+eNp2aclp57GBLXbUY5EQf7HYPfN5ahVgxriOVDfbvMlrD1aHIs3fo63G87U9xQMRY2vTDiyH0JO9Uu8yRONbH3Twhil16ut+vg6Nm+DUT/28RDeKQgcDOnZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784470715; c=relaxed/simple;
	bh=dnsW4TqWqRDE8EGlDe0Ay2kYv3/pH9q3qft0RllGiJA=;
	h=To:Subject:From:Message-Id:Date; b=knR4JB6mp/4qrOvR/uvoaxZ0v+tLi0KSxhrKG9Zzoc5XTgPfIu9Zn12fsayDb2/J9MgxY1tSOKb7/TrB0qhMweE2Oi3W0sl5qfQBDA73Axf4kGgeWjjVFUl3FIQU0UJYR7+Bznkz1m/Y3ANTotP55qAXK1+xg9hYQXe6IAjFIOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owRj3hdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owRj3hdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2390C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784470713;
	bh=dnsW4TqWqRDE8EGlDe0Ay2kYv3/pH9q3qft0RllGiJA=;
	h=To:Subject:From:Date:From;
	b=owRj3hdhHlwlPLftVuR7EvNa01gGyVewgX7BWtTI9ebovrWYrS5Q8IFY6yv0QMAXB
	 T1Xzs2F8bN5htm2+mtgyNGiTlcaSYz9iIkBWwHgXSjaO1ZL7ZMaaecN20FTIrexf6n
	 fMZ9Df65pT6USWAkfhC0+ZvOk4lOZl+3DcBOnlhUZzbz4q0yuut3BiumnhNlHDDAKP
	 0eEXQcDPKSshQlaE80i8fgfQoaTwK1du0+VkdEZPVsHKEohTKqziS1wC+EhU9WtxYz
	 +zDodifrOcFjccal47Aa1hCCFUhbhThvtRGPgSNNFB50KXpuc+HG/kzhrXIdh+nam0
	 6bJQ7AO27skRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5EFC44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447071368.29007.13875538057568101975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98464d1bc9d4a766c40ea2d74fe3c3757c20abd3ed9a741f760f89fd28a92dc
Date: Sun, 19 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784470713
