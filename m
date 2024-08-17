Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BD05256
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723905354; cv=none; b=aU9A5nE5ZkiEV3bkCMaOGrsyx9NiwIyq9KRva+jPIJMtHza+/xAprSAZntIPZ5uKII1XB9aVjz0BFE9UY6QwVQA3GZA0A15xdmfykx9LuY9oVbS2ZAXIAn2IZC0vI+4xAVGpOaIw+rwU2axGfBdgNMZb5+AZltYLp75pVO/nYD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723905354; c=relaxed/simple;
	bh=PiOt55kDegT0xyKRxh8xvA5YdcbkmWPB6k210+WuIxg=;
	h=To:Subject:From:Message-Id:Date; b=OWkRnwPrwertV46cpXNSsx+5njOFBeBDStEPKI36lrm9yGGX+L4p4AAmi9nXoxVf6oDlTe+yuDQqoV2zHxct2OSkORVMciqhMF/OWfqTGxqIPEU39RWfhtrzpfaoFe81ScC0FyVOD/+WZCcq8KFRldQuUKXHvCWOCRJhzkrfcMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fij8eprw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fij8eprw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBE9C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723905353;
	bh=PiOt55kDegT0xyKRxh8xvA5YdcbkmWPB6k210+WuIxg=;
	h=To:Subject:From:Date:From;
	b=fij8eprwkZLsj3Cl86sunOg1FNIefGX+rPDHTC6uzFLjGeyFdVA5Xh5Vm466vo7v6
	 FxvKuw5JjrTpZ+6ASwc40IbFB6LHdc6vn6m8s+c1msNkuXpFeRWYAAtmsQIdb1fe2a
	 goy9CxfwDKxGdkKtSKO8Ix/hGgfpjZP2Q+vY/5EJwYLQ8m5fwodXuPkTTHIOg00raa
	 irn6OIjz98dTwSJpHNQMXZlA/QFUy0DFoaRwlQaJy0aMknWFkQPN7/8auf6/2jptOK
	 OMGDhCsP3eKr2gF046+TpBSu3JcgaBY9DcSfeOYdHSBhsN2XAIl7fvPDxkeUiqJKbQ
	 PWRTNGzTt+Dqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C74EC52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172390535358.18508.12403750012487090029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795ee14cec06dde04ed86428aadc22a4142d5844dd52181d026ec896369fc22f
Date: Sat, 17 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723905353
