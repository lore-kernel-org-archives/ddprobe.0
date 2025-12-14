Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7A08834
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765715574; cv=none; b=PUa44p8rBRGRhzFRDlD6oqNeRSeV8URmEuokIRxLTgT2mycUCjt2XGG7hDdvGx29NcUFjKYs6pA22IiPIDxc8BDFtjTLX8/4m5h1YDkWEl6SI6DWjBiGHWAybQ0BZEnP+yUqppLFuwLQNa8oeCj0sLAbdR8aeOI2p2YPOdJM/4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765715574; c=relaxed/simple;
	bh=tirUZCN5WZx+Ba2O20Ca06E4DbLKhjBQfe/DdrfFMwg=;
	h=To:Subject:From:Message-Id:Date; b=jocMT3LIZ4ZTUlgY3cBzUsOdUXbbgUQjgWl2KO+C91CTKNpbe+MM4zBPtoM6So/ZPJSz32Sv3jFII17og0m6hPxCVzs5hRJbhoQiRd6GIOb4zNof4m2k1AfPr8L8TmwscXAk3uA0i4DUNmGdxA0AxTL1SFgMP2RZiMuzlv+VrEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck0oWbh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck0oWbh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A8CC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765715573;
	bh=tirUZCN5WZx+Ba2O20Ca06E4DbLKhjBQfe/DdrfFMwg=;
	h=To:Subject:From:Date:From;
	b=Ck0oWbh7bN/N9UW/zfcf+sSTchTzHRnFKTtkA67SHwHlPU1lvP+mhoDQX/cx26EFs
	 fUWKjES9Q4CAlTH3zTcdi9NWCiOEOofciQ8v3JCeBbdZQEaTwGxDs3GrDnwMiQ3LSY
	 CDBLdkSns+snirRO992Asybbc80vRlHIJ7dKSMl+ItLLGnIgkAdRQEuycVUy3JyYcH
	 EbYg6tN65FbISgul/yjp0+sxEWxCAbBEpDv12Gxwxjc49r2UdV6BFWgPzNb4JjEsO5
	 DoUiNahTtjKjmjT8Nb76VOPucaMbZy03LRiBBOVZZiSQINhJ5OYavBcnCB1rnLAN6v
	 BCs/RQEzdut9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F1D5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571557358.22712.8300509562824499223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9cf19845fe7c0444969075f85c52267dd6e4ac168122c1f260353921eb188f
Date: Sun, 14 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765715573
