Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 783092E3FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790007634; cv=none; b=GL1mCbGQifRuiWGVIJ1o5KFPjmjQm0/Zf3Ppjq9JngjFuK+FyFnr2kObhTDgCh3p6MtDbdYoE3f7OB9IQVktgQkXr3nRQPysG0dL2UkyRgVtGuGykGZ+DVaCNRKnOhmS0Jf+KaMxHYVxhYTLjkYU5VKEPK1CdjOZOy53UstPYfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790007634; c=relaxed/simple;
	bh=SXs0bo19fr9v71zrAk31lN5buYxZ0F3s7fpwbmBODC0=;
	h=To:Subject:From:Message-Id:Date; b=q00btojw7PE/MMTqwfC3mDfw+yskSIIGwm+n9yLbVQEWp8dpByijTnZ3cS8rH44LbyRF0jZjBjyLSlHhOyl331Xjk8BbB+cgnEH2UQxpaTYzsMcqt5UGQVnq/xpiIBV1rCJ/LHy96KjnSvENWLvo3z0hiKhX0jHNbl8ixA6Hf7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMfHZpXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMfHZpXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC08C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790007634;
	bh=SXs0bo19fr9v71zrAk31lN5buYxZ0F3s7fpwbmBODC0=;
	h=To:Subject:From:Date:From;
	b=LMfHZpXXOmWsXK23+WUyvRPAUeaHNfJM2cEXYHICLSdeeqjJyl0F4ORPLi4n2ebuN
	 fPTUU31pEaob+FOBGC7CNXHfRl8o7LOSOxWkQBR9v2JyO+n5bwYTuRXsD9NKUgzPRC
	 05zlTIeS37yGRjzx0TOOFwT6mWs9p1HkJjOhZlXD5+z+OngY0iJynQo4XrN1Dc0h0i
	 WmqiNPPXLb2dISa2LuF23WU6yec4vCDCz54Xnt0oD/SLvcfLPAcfofisSs/03cHDX7
	 H06ut+oD6TfWfQMe+jbVzc1Q1j0zIoM+8wL09GgZBSDhOvWc880GwjXPn7fj3dEuAT
	 1uFMSMUd3rIIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0394C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000763375.5104.11994562016175176682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51803ec6aba635617ad343cb8870e36bdb1e63fc85a1670a36e6784f1040aea
Date: Mon, 21 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790007633
