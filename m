Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFB957C93
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735323953; cv=none; b=MLCTD0hZpgOFiHDv8ksTv/+vzJ+2u6yWQXE9ewNHU52y4KlkJbP6ff+JhJNR6iuorDVF37NV8XarGbfur+PUOAiON+Rgc7NRxK84EfqbmMEyoV/42mVa4sU4gPfR6tRRrzDx0+BBqlIiNak6rjOMqE/tC+IJDAZVBMDaFBxur08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735323953; c=relaxed/simple;
	bh=UKoStiiSCcv/ICTHkMVWXxUV8Ax129n4oa1Lspx5ybw=;
	h=To:Subject:From:Message-Id:Date; b=GebCeHAFH/HhBkoAdzAZfR5JnaygJuy/tkwYEgUwngD/ifHffMZbpAP5Win7hTbikOPCBzHMR2JdKRn8srjNijSo6mBwF+p3Fde1lkKxgrAjq2i0A1xW0YTQ+FsnO10DogUup8R+ZCmxzQWul/qUz7iMSMTR4JJl/JlCXJ+5YTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXvo1LFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXvo1LFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5C0C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735323953;
	bh=UKoStiiSCcv/ICTHkMVWXxUV8Ax129n4oa1Lspx5ybw=;
	h=To:Subject:From:Date:From;
	b=MXvo1LFRkr/xC7ahx5IXOjd8W6U0pTtctcdAFhpAJ4hlyEjpOaRCBEKjeQ8H2xY/J
	 gA8WUDNFYPQdmB5mjfhFduFB+bfWOjbHZP0kXRN4zAYnlz/UK/D54zGK/vFp2uAAu5
	 dgOSQWzla+5S7Ic7B9iItnfGsHHnRBNa44gE/dCmVHqGMTtrvRjVN2jMHv6BvvB9kK
	 gDbAl3AYmpgQEsRC4cfSjM1X879ryoNoij5HWq1yN+9FV6lPzfQ9Y/diIIXbOeCIjQ
	 06slLRo93TNL8CWMqaCvpdFM030rxfUVCkmILSjYD409MLK2bNsmAyirMgDhlK/Zbj
	 EpQSe8v36Xeag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CC4E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532395360.2390.17326859072683389000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606bd3cbb2037fe70afdb1c20e475d4858f0aa9580bb9fa7e6a821ab3e4afa43
Date: Fri, 27 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735323953
