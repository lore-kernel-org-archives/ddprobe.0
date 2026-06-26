Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192C63FCB0C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782485254; cv=none; b=b57vLja+lmPwsWe+vFBImkxhrMGQALzsehk8BfKT7QXul033Le++Z/B3ExGDLofjwWKJZHZFHlMa1gno0H4K2et0X1AlvqgPw6rv4Po+L1/aHcMeHJyVWW8D9ostPNF9NZzqdwu7K2N52UweC6Y97NaKx1qhlgjNcPxYZjX63fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782485254; c=relaxed/simple;
	bh=lUZahGGI1bJepa4cB2BwpqFpsUl1HmoJ6F+9isQ+3X4=;
	h=To:Subject:From:Message-Id:Date; b=t4g7YLzW5sLmiSd5T2tQTxH1xwdmJszDmqfhmCTfK8keMufpj3tbszUdSnim9O7heZ4qMrn16ehow81OMsTXDjCfrMnrhzAxk326iSzDKCSl7b7T9M1Y5b2F0xCafVr7fK3LRkWJ6JM1yP1hEMySOHJt7Tb4hd1O8gSdFarpHds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trZGGXwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trZGGXwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A45C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782485253;
	bh=lUZahGGI1bJepa4cB2BwpqFpsUl1HmoJ6F+9isQ+3X4=;
	h=To:Subject:From:Date:From;
	b=trZGGXwSk4oHDJiy5fkrO0hHE80FFA1sRYoSVSpqtVgZjtgTgQrziqN/tch2hsyuc
	 J5DNSv5eoMVmGx4SZBMipR2YY5niG7s7Ixrsvi6djmAFi3JSSEgkz6ds2Kyjb8wJJf
	 uGp71AQU+bhYpPbLjwKwfjekNBf9qcbBPI472yU/8soZTMlUUgyFlfMPgcrYYap3QD
	 /1gk4r0cA7eDPPdyDbZX16MXaJBhI/ygUMrr/Miz8tSD7WcmxQV7EqdG7i1tvgXT5C
	 QiJ9SgM7f2lX+zNIhNFoBngCQCOKE55Riuik6dMn4tCQvehWgGLQMi1h0EeN937mKR
	 KyOnHLsBYH2fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB0BC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248525370.24472.11266768593250230590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7e2c4ef3e494cafe2b126ab9eef3c54d700e8802a8f3b3d3b9d0df799b4278
Date: Fri, 26 Jun 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782485253
