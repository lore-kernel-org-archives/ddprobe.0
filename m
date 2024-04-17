Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC571D530
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713354563; cv=none; b=pRbTWPfIc1ouTsfQ4kFPKLYiY8iz1wzGW7kVYS0lRDH6nQBxFXhblD+sXg5CgXRgmSefOgXcDDgHhsQMW9e+EnomCCeCKzUSBAiov3BrPdfZOb0NkmCE76It90kFM2fpegDTkjWymmxXdAK65Oogc7KdYfCr2EkPbM7nRJepJ8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713354563; c=relaxed/simple;
	bh=lH60Ofm4s1fyqu0d8idrMdByWe9mVSLWE6YMZ7BsOu4=;
	h=To:Subject:From:Message-Id:Date; b=rgA/iyQj4xPNhUq312moXtUlmsa3KpqzISA9L8idjwGkYZjEHYcL88NJp1g0TDydHy7ZPDTyoPkxV9Xxj8I/rW0gv4x7L9hGBxVprOQ3uJ55g4MKQGgxQxnHD5hQwAg4Y1CXdfNEpOrPXbST0a9KVK/ajPpEpeBG6eBEpmgcDbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INfzZyrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INfzZyrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD900C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713354562;
	bh=lH60Ofm4s1fyqu0d8idrMdByWe9mVSLWE6YMZ7BsOu4=;
	h=To:Subject:From:Date:From;
	b=INfzZyrOEOcx+i01Lb8Nw+zh8NYv9FJDjrxe4oBxTTLpcGX/KylW8LY/5w5fw4csv
	 Luq8vp2xOk9TzvquQPlnLrHMVj7+BQLb8eXR4PtBplpdPoZC46oP53VifIzLTDKPq/
	 Xpks883gopJLKagbPJJRp5fQwWhdcdRw8g2/8m5xIb/yyW0JUvziuhKh8iGzK1ALGJ
	 aggUS5Zor0CA0z9GufCzPheo+6Amd4KopMi6BIPOIJRG9GfNJmghUolNL2lT9EaD7E
	 BKb9OJH7rrhSYRM9U7DhES6xBx5y4QS7bDsvfr2o8hU9uqA4HLmHgfsbe4qAZ1rzLA
	 fY1cDlGzXlHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EC0C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335456278.3226.7564884061125655620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e4ee6a4080e970802d16f27105dfd9e9a454590a982e81f452effc6a0caff4
Date: Wed, 17 Apr 2024 11:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713354562
