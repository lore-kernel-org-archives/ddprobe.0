Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855FC22F13
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710748096; cv=none; b=PDKPzb+HmgbdF+ZKKJh7mqTIYjdlQGT8Ko6dtjpxdiAgFrLiAhHwcxLSJB51/6W6wQUg4P4UZn4fv1SoTV19dQvDfEmjHCsxLWuVCikDz3w6mrfCE2w/Pb/X9powy7y7cn/6NM2+axGyCjqYy8ruC7l3MdxHON3vI5jQtLmHxIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710748096; c=relaxed/simple;
	bh=JD1M79BbbS0WJEu02jaPkfpMOg7mraBJNiWgu/iimT4=;
	h=To:Subject:From:Message-Id:Date; b=U/Qq2CNjuzjb035ladOgYyofq/Fd8uHFTgKTrocJ2/86ZGuAWwwHO9mFHhuTt8LCdbpzYVurfeZ74McuUXwYAKa3/4e9g5DYjAhcQsGagxDah5fGu0wJzwRNnEldkxdpDnN9HaF5GBsVmu/4r3fxhPcyEPhgD/QFEJQR5MQ+MzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCqxnJhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCqxnJhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 646E1C43390
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710748096;
	bh=JD1M79BbbS0WJEu02jaPkfpMOg7mraBJNiWgu/iimT4=;
	h=To:Subject:From:Date:From;
	b=tCqxnJhl5+yFQB1syplLrESO1x/WxMp0h+v12gj5r7ze2usPaZaf65VMO1sLAoOd1
	 eYyKj/2Gl6znLAApJyzFE2aQLq/Zqv8l4HZE1WqO/rNx/awk3gt44mvIU5zZPz/sYB
	 n8FJCX4JwBUPzANdx2SFgdaDRu1ihiiUvabfRhKm2/rxPeHALt3WSJbkGp0vDvzl25
	 F/Lfoc0ERBZn+vHkjVpr/3zo4SU1sqel/7P6XOVYC2/V311HAWd82hfmQKD3qXaUcW
	 YFllbmjGbiPOdcf1XjRX0lFJKKivcHctu6801XbJ5/9sTZ/uAAk/CyN+r46c4IxEcS
	 AJ+1UgQ8dd1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC13C54E5D
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171074809636.8172.11921290441442050796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13badf9aa72a411eb074b0268127f1448292ddd6a81b5f503fe185b18c9cb04
Date: Mon, 18 Mar 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710748096
