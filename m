Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9210331F99F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775960854; cv=none; b=CJCCycfTMMTNfRdxH5JlXD8sPMD7Ssg6l0gT5j6VqXcBp+uGIvKbxTiMlVTqL+Dc36d18RWScNJyp5FvxrOG4V+CP4atY1oi69F5aEn62kkPComthAPEg2FyUCwHFkpvxE7H9FEn2nvFRQkhAvtEAutTAwC37KGXcVPK1fVa2AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775960854; c=relaxed/simple;
	bh=WcQOqMitZ0FFfZ1cpf+bPoKLHxwVD24V8ju55XdbUE8=;
	h=To:Subject:From:Message-Id:Date; b=dhlGDpp7KqZv0fHciXvBknakP0CCz5Q+Ys7EXTbRdHP9cv0GBIJhBMVQARfoIsPjO3GxblkmjaXDs4YNk0jt8kcWpIOC2khYnmABjMu7Otp+qnrpOvoBbV3SiNWcGFDWcJJ/58RryWoldt54V6P7PoS3qV3DUDVGAQXL+tz/430=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmI6dokW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmI6dokW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B1AC19425
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775960854;
	bh=WcQOqMitZ0FFfZ1cpf+bPoKLHxwVD24V8ju55XdbUE8=;
	h=To:Subject:From:Date:From;
	b=AmI6dokWyx/+KaYBxBJPAVghqeLzjypsfYPvmQWC5Srs2iq7Pv7O9c6C/kMUeMPxy
	 ZErOqtxpdTA13/rTGTIj7TnEAYyOL4VObjBrXA1IL5XDz8K/+jsVPY7p3fMEecal8V
	 WvJQCQQeu2duIJefLMhOGCctKkchRqLsBr6a+GuCwhNdo8TLkYktpKmhuqWGSxgg+I
	 CXut01+6Phc7C6llvxz/InGkOtLVnfFT1T8AxI8oe6zlADcfJHyfeG43DD3QFXH1Gg
	 s4BrM/9S5X63BwQNhRWvGfUWCtq35a/lZMSX6tbCHOmEyy4w5/ZFhXsdv/eqLsmg1M
	 iv68lsbf5IrMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC298F3ED4A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596085368.6790.6979204753789038587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00daa3b72d4187797cf70155678a070a23bad18bc5104c23b90f5ae278f8ba80
Date: Sun, 12 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775960853
