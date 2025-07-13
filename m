Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE7210F2
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752365994; cv=none; b=VNF6GcpzIbQg76gWzuB1o8boL6beIY5WCZrV3Ve/XRMLvqL94I/Tah80iGSoPZ769LOcRMntoZqr8eSbIiwEKt9EygTVnbaGTFMf5N35EDymY+nA9JAxO5PSEHI8zoIW79Dx/nCQWBDJxbgALOMCfaEHheBzvJuVQ4oYIImJ6iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752365994; c=relaxed/simple;
	bh=aZsxK5C2cMlWOudrP4QroF0x4gonoVPj/ZdAKQiPru8=;
	h=To:Subject:From:Message-Id:Date; b=o6jhoukpj48J/1EnRTLuzOzFj1BCpBz4wLoaX85mrR99Zf79eDyXsGwsJRLfyTAxHDKScgH9hfp8a2u2NSjse498Ul/9g7aVbUo4B0edYfY8VdW0iKyF9sT1jsthPqSLHeJsX8d0seP7AdTqCpPVUT+WfLGNoKp+ORmh7PZnipo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It+rbQE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It+rbQE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752365993;
	bh=aZsxK5C2cMlWOudrP4QroF0x4gonoVPj/ZdAKQiPru8=;
	h=To:Subject:From:Date:From;
	b=It+rbQE93C7rzSF56ppgSLiYtIMsZXn8vPBx6suQ+TtQss3fKp8SGBGs2xDkyWyTk
	 7jy6yR2W6zDdGrQFZ0VPSQmcGy8Sp6rzrFjoDnBA9+nKA0grylw3NyldE+bAuxkr9g
	 PloyTi/GN+y0Yt3gn2dMOPT3SFPvynTNauF8RziFsIb5UCg8gU5R486EbkT6aIIK8r
	 QK3Ct52/xSbBoEQ4F1Cz6f9gqtT4MXtJqN6/YmyNHCZfAri04DeRtNWA1W1LN1elzO
	 5YcfIkl3xSr98tRFq31pBM3YSQUKw1Z/MR0hc/oGqCZJFRAQsWUp4MdvrHwa/bMKD/
	 FRSe/c6rfwFeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9104AC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236599357.26686.7156689144724594802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1911cf4954e8c653c3561029468f06dee4c1f8e2db2a8ff8e39b430660892e
Date: Sun, 13 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752365993
