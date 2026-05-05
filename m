Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8B1291864
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778015254; cv=none; b=XUYXl+2VS60Pw9k+f62eHPAIYTVJihmV7NzbqUJXCoNj6VCEOYyMe4zFcAgJm2cEOAKw4+6jH6g1R46Lf9DGWj3PxlSRvp4H6dIn4/dhJXlrZTgY51WNjDiBgodWeTsQ3KMNaLh54JYj7St7PEsCO5ze5zs4Soi9O6TXlOuASEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778015254; c=relaxed/simple;
	bh=CGQigMwNU9EqG+YJuo0IXFUqFyh8lTe7zF05Zdp7jSA=;
	h=To:Subject:From:Message-Id:Date; b=BM8VrpN7NNlauSpTSzXgO2lR6GjkGhsiSxThZUepYAr2phZsRbLhGFCaSti+e9wumCm91Pv0Ah+ap+/m7pnJUJdfJaXfMwHovjmM7NJ7UZJ00EsXAaPr12PpGLi290iMmTeb4tItn0mDUvM3dbM3Bai25EEcMB/WaaI2AwojbSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kM1Iu/09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kM1Iu/09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25B2C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778015253;
	bh=CGQigMwNU9EqG+YJuo0IXFUqFyh8lTe7zF05Zdp7jSA=;
	h=To:Subject:From:Date:From;
	b=kM1Iu/09SONXamzxSr5RGtSfrgZzLrwWZECeviiGpPHrawzLuGQklKxk64gg4jp2A
	 yVyzVBd4mCQeKA3UiA2fbQ5Jj5srfVUWKYRDrWpmvoeRhtq2Vo+fdSEaS1/t7NRJ4w
	 YYTIx1YmlWGzDwT4VHzG5EUahsag3Y4xJn8o1F+AyrRihBr2AkVKWLx1TgTE0/NZ8K
	 MPgNaebvsBIlZOSc2Q3mIgeN+Ox6ch7HzKGPXSVlq+hJ74mCi9EeZyc/O6C9e8599q
	 Avj1WXKq3K4E66WkSj/qyDdcv35LQDs5og40mLzqAzNyfzbr+rrn1CXmH72ISZWRQl
	 SMk8BCFe8TLxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC194FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801525369.23674.827565266109394720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37f7d51ceedd80911dfb18180c8744d4635110ce5b4cf7dece1780f234b4ffa
Date: Tue, 05 May 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778015253
