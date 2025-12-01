Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEDF2DAFC1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764596574; cv=none; b=PtWpUnRwwKQMvcpizduC3OE9EP3ppFtreZruO/kl1Ix9ISWKxNIhZaG9TEGXJ4Icy2K5t7jTNa/PV/V+dpiecN+5i5iTw9VySorJWr4tVHKJU9w7qi1KlcHXGXzgVUR+Cl3AXuFFAIaMVkusLbUv8a8UcRJJODdm5RVAc0YCZmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764596574; c=relaxed/simple;
	bh=ibKhMhUSGGiZiBl0WucdgA1MkBG8QvHfgsu16vvC4kQ=;
	h=To:Subject:From:Message-Id:Date; b=dfTeuapEyxS0zXelHiYaoFFdcqVQbi2Jq8I+NTgwnNj5P1/s0+OweDQnrjWHnUD79PxcBCR/qqbwbJcROACyfmj9gegGwM3vi+a+wUgw9hWRG0BNJ0fya9wzvW0CgX0O5UvFN20k6mYSxNU+62GocKgtXIPqv2Jc5yx+xfa7icQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8vN68dS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8vN68dS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60A5C116D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764596573;
	bh=ibKhMhUSGGiZiBl0WucdgA1MkBG8QvHfgsu16vvC4kQ=;
	h=To:Subject:From:Date:From;
	b=O8vN68dS+DqF8X7JHvfS3H2O01yhDTfjEyUxVSUZQqk38Gake3TAb0TqvKGx47GC6
	 vUIvLldSh6cGKQcgYKf1Itpsk7iOGswGbWA0zzSAZ2v9CoiSvHuuniXBh13baachib
	 UKayvUSHz44uk0ciqXg5DxBjXucpvkoioauKx+xesGjTg3S99wHMW5vzAmwRcJtiPC
	 HXE6Q6h4qG6q3b+spuO1ipjNAvyVao36JbjkcTZ56KZgbVFjIeUAL9dmr1LvMFxNad
	 BKtm4vmPamRKuHSGVRYavzXRcjvNgKOaODLzH95cGEFuOBNloj4zNsdTRFiRpWCwVf
	 Clx509Q9vxhlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF5D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459657358.2513.15734290872847097240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55cb569e481331923be8d1dac9393b99f60802bcb38c5c8ed7b4c0d7c7bac25
Date: Mon, 01 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764596573
