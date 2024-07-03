Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6468013B5A1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719996923; cv=none; b=rIV635BA1p1Ypspe31mV3s+ZmEqA1lNSgnqz0f2o7hrWBD0eL0nWoyIA/paxdl2dS3RutmYk5iMOcXjXLeRuDcI8fsFEeoRmXRD5SyNHA4YQej9NSyCzcMp2ezVueJbwSLCBStEicTUD/uooL/qNq/c3da2uZNcvvXrosBgWRHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719996923; c=relaxed/simple;
	bh=MpfLdFWplHrm/u9nl9NFsSo2gKgg/Z4BfZ8ZRgxLzw8=;
	h=To:Subject:From:Message-Id:Date; b=sNakV302xnjEmmpOKfEFcnLE+F1mNbnrvdYFQytR2TzwYUJd7MuR6WRImhDIMaalCd3W0pGirAiGor4xJQGIQnoeNVw8ondwA9PZ9BReic3clg9UeQuse7yaItxMq4b9ZZF9LkjxnX3EUFQWxF0pOY1+7vdNBHytBOF2uXeaR0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnmIPNRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnmIPNRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF11CC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719996922;
	bh=MpfLdFWplHrm/u9nl9NFsSo2gKgg/Z4BfZ8ZRgxLzw8=;
	h=To:Subject:From:Date:From;
	b=tnmIPNRuZbWRzVRdMea8X6Fjbs4wWbfzTR9fZQfugmEIEHzHWT9JCDv2rKbXKXJ14
	 /lEXFaC1zPjOCjAi5vT6io4My7XWzvH5O2ys2ri+IZ69ORpZQbrt57LT3fWjFxsZjW
	 alcgIg0/43kqp1KNe9xDdIJGuaVAp67bO9/2Eya9tG8X9oJaVEU1dQ6ESPATPxfw9E
	 YkwrqdEcJpZJ6w8TYfLkMU0N7ixvL+ku7Ztbwnahla4acLDzEeojBEskhufYCbMRTW
	 fz7Rvz+Qna7galCVSYKrv88QuAOMD0qEAtdaNLCEt+FaJsjDtUruQ3mbEmjglRn+zJ
	 2yEgRUjDGha+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C731BC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 08:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999692280.9949.11977294020056998776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3d956f30ff86d1854aec521af3ad5e8a4e76c621be757347b362ec328c2886
Date: Wed, 03 Jul 2024 08:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719996922
