Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4102D77E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782769714; cv=none; b=mDgXw/6VjPBH7Ro1UQnXAzqgYN3lbSLdaf+HPDcNC7RTNnoXHXZyqwxXx99IT4FyKt2JuI7GZGn9TWfRMZArGwtStALI4EFtmeqG3NeJWVG/+OiQn/0vupoh1vZMPX3p63SRmw2Nusvq80D34bikQyH7ztLHAxLftlNtj9nf5bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782769714; c=relaxed/simple;
	bh=mh0TOTA1SRKIzktsvLXKzFiHQnv1tKcEvJWF9UdCktQ=;
	h=To:Subject:From:Message-Id:Date; b=U3lBo2SFCBko0VwDhAx9O7LKdRft+iNbkYEvANtwIt5V7vE+VGMZlny3W2yH+wAO0zmfuZUNQWw0ua3U7jVJzyYSUMlDrJqqKnGDrpqewlYyob90ksOtOBnIxoBd9UzUDk48oaAMBYmItKWyXP3qHeQXWm0wAzdtCYe6fdCAkiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qucAZDqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qucAZDqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AC5C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782769713;
	bh=mh0TOTA1SRKIzktsvLXKzFiHQnv1tKcEvJWF9UdCktQ=;
	h=To:Subject:From:Date:From;
	b=qucAZDqmbMFliOPbHvrwy65IElvRi3yLhM6F1YiMKL/VDyT6ZtUA+dQPQV5cRw1Fe
	 HiR/UfPISzY6YXvfqrJ6tr0qHRg0fgD8iTSxZF8/fefRvreF7BGpD5b9CRTlE3nnkR
	 IYkF/BPSdh+bZk/O0eGDppdeywtS5cKSLiaGekrhglMx6BkJN6jVSuUe1PAZ9AGya2
	 D6OP+CgcwDiCw6kl+jSxuq3nI2QVzlfJWQ+d9n/XlnTOyipXb3n72rSsjpziLRHwpr
	 nLXKhXD5CvM3eFgjZ49LwpfBP4VweQirKTF76ZDUBfdF5qS2L98vOULz+N8K/sU/IB
	 ZiGO2aSrYFppQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9463C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276971368.16660.17780552636583903892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ae6390c162f6ec0a984b979b79338ef5bef40bb8e7938562e0d31de2930966
Date: Mon, 29 Jun 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782769713
