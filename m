Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4E911181
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716730463; cv=none; b=inKUl1RNQIgEA5pWsJ9WDd0gZ1fIhzSkZSxCHqqds/lKS1dRp2asCwxTCVpENSjk3gUZYEXHBoE0ahWOiFvEgMdBW4xOVSEYpHnzFSQptLmrcdoE3uK+gXUSAtnGm4JU627fPZ58Bpq8RfIwBjH+5H6RFy6ntJxEyeLqRekJgog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716730463; c=relaxed/simple;
	bh=bBcHDLCorZ5g+ua3Kmm0XyWZDDqxcIzgcm6aBrwCTsk=;
	h=To:Subject:From:Message-Id:Date; b=ESObQecthAymqTfYCHup1OGRqpPTU5aL/2idHS7uk+WSwHPOz35TACKUsEn4VzD2l9HB6ROZkqKzxxWjKqkocoTcBm2UH3OicvMBUhi7UDD2Y43+gmlt8RZB1gKjoSKgO8PrfFAz3RQKBrOIo66y0RK4RRraVxg9iziEkM1yCK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzuEt+FU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzuEt+FU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAAEC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716730462;
	bh=bBcHDLCorZ5g+ua3Kmm0XyWZDDqxcIzgcm6aBrwCTsk=;
	h=To:Subject:From:Date:From;
	b=WzuEt+FU+qt/saNUmSscoCaCJkZu80ODWRxppRi+PIwg9gltn+dGr/tsjh+k/Ht9v
	 zth/ZjrNj49l4IkgajS3+LW49vcSj/LnVkXGPCxjWG7trk3+vD6m9uNP2L9z3TrC6N
	 EPjCYw0TfneAbNNa2WmUmGAXCpUGyrOXQIccu7/ULJsTlm/FP2euKiv5/Cs8WRc3mr
	 2FjNNKDBl55DQKajd7GxGenf/NPDRFLcFcjVHvZQSTAQxvwkQx8dSrSX6moDFvJ6KV
	 BOxnSlIFZi9tjshtzwYvgIw+aO2m1/DJyZgrIAzH3KKOeRLlcfTAZegcT33OK4we/j
	 KsbaM4RJ3EM3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C604BC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673046275.20108.7982371546549837765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db1ecd2fe42cbd26ebc1fbc38cf80e85f59fdfdd521be0b0dff16c676eef20a
Date: Sun, 26 May 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716730462
