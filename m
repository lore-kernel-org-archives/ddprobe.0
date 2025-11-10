Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131AE2D9EE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762797594; cv=none; b=fhKw22MAEp+OLBCX1yZIXRX2NDqak/IUleLxFMn1mMVFNbDhJkIN6RPC/XU6pWN2QBKDeArr4+z83HyxBNRN2Csy+kCsezOXLj7fHYP9icpj+Z5wG7G4jv+jiMDiYVrHAK6LCbqZOWFt/6S/nsPFqePdlU19UZ5k37b9fxwZ59E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762797594; c=relaxed/simple;
	bh=8LAfmmX72delvdrHy8+QfKHp/onGsr2/Q3SeYidKs5g=;
	h=To:Subject:From:Message-Id:Date; b=dtB1mpLLIQ/LdL6AZ8Stt160oAJxw1xj+4QqmpIQBgopCDgP53v2hywYP8RfH8R5M16XioGyTXXe7LR28HMmKfoOgamjD06d7EePd3p6BUvn5kG+yOUZ2CFvuWrCJX96zFMDqQEVlCRO0mFg0TnUK3/fSOuHIs88OOUta0wbos4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVoHGFGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVoHGFGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF55C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762797593;
	bh=8LAfmmX72delvdrHy8+QfKHp/onGsr2/Q3SeYidKs5g=;
	h=To:Subject:From:Date:From;
	b=LVoHGFGap6OfbvwLt5C/KtUTdbM1/JsTUl1W9c5EqAfJ3vpdzgZ35a84UO9fo2wG7
	 xZFldsYXIAJv+bOJkhAdV18kE0JTkgGGHuieGTeB98eiwr3W2DOTDwKnmfWtKH2H10
	 nmFV95JRWR7Wj0zmOnBdZkZ2CP6uGQbJQmxxuPOd0aiUFhWpErF8rqamI1bQVAcnqf
	 j8WvYIlg8EfveV7pclZdp7qY92FkCMGAnmFViyrt51o/H/dXFg5CNh4XXaKzA4Fk46
	 atlAfsnYkjausIDbK+rRJiISwiGUGHZ67590IFMAGWEnTct6vB4YPRz3VDBITRPNYc
	 IU++p5uBBsX8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BECCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279759358.28039.12571906412739738624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3424e3f157b94e09e5e2721f09bae15ef07a9afee9da8739b8392d1c19d3dc75
Date: Mon, 10 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762797593
