Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391101E49E
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722297354; cv=none; b=CobY7KbBrzP1EtCsCQ/jR2/WUkosnU+qV8LzJuGsJNLFNImg/baoVWlFwu1kKTouJEVqVs4A4E8R6RjSId+EznJZl565cAIJSYUxehrP+EeB2+/fJiC/B2nz6hFIwjX+Cma1nPFX9oHaH/vIUajTIEWM/Yhwe/CqtlK9FqxpKyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722297354; c=relaxed/simple;
	bh=Z7sawycV061jhSjH67Bs164+DiAOrM4+aJYOtbwnOeA=;
	h=To:Subject:From:Message-Id:Date; b=XiJmJ3vcXdxfrqetVzaw9xmNfpz2ehqQTPi6OaJ9zwPsc3Zorda9aPpXDpE5nhP/LIVcHckjbUMMpwsWmBqburAOlnbdDciHbKRL9v8vdmuX3OgjtHEHArpBXL43Vf8+hMR5VWK570hr6Nfpo3dOIEs57O/s7E6qU1pgkk27I8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C04WFwdJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C04WFwdJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4E0C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722297353;
	bh=Z7sawycV061jhSjH67Bs164+DiAOrM4+aJYOtbwnOeA=;
	h=To:Subject:From:Date:From;
	b=C04WFwdJ8fPCxFRVZqKZfcXYCSqdqtuywKa7Lb9MazM9klPnOsfBGB6V/jm0YRW8I
	 UwC3YYYcmYMBnMna4K9nAwlro3S/QQwNakoZRLA/rtdTMjWP5GbGZ3LxlwouCRXTTi
	 JTiXNZasVlzL5elcozd/COPpJNhxM6SdS4MiIq48Tiw7KleLAubRPhe/xMXWfP4gEx
	 BI5E40z+vbner2Lzrb6y11S/UnmYZRjePntYXG2g6G3S3O5VUotG9Tj86WpibWRPYC
	 J5qTNco08Xu0Rzuh0u05ruGrDz5av4TEerGlum3aKsmx7qUdM0R+pYbtnc3gpBwl0e
	 0yBAUyOrZ6BaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA4EC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172229735361.2865.4129216857570233844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcba095b5cd2504fac8b46a25c70f7c5f9d440982a7f7bfdf644d2a60da2666
Date: Mon, 29 Jul 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722297353
