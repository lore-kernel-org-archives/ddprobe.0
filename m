Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A692F2E
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732945554; cv=none; b=RMMUpqZJjjL0Tm8JvBZ0rgpVrzuiNgM5Kq9vOPwYU1HlQvCTLKiQx99lpU5D7YKhM851kZ/cIyEyXhodkrkmVnPlgvPBDL5U+cR9urOGkwXslLwH2M2zsgnYgbYuWGL5SckjkOheZjMPMMqF6uPcU/YI15FzDCXMEBrl+96rFbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732945554; c=relaxed/simple;
	bh=fumGs5AqtbwBcQ5tVg4eNzOF3GamfrqqyYLIfJL9QbI=;
	h=To:Subject:From:Message-Id:Date; b=ZbHw9/ATVpWLovoPIJg34X1FZzP9LZaeehp8PFWTMDmt01gbNFTWDT/vQn5pyRKpHyZE9ZSVLim/Hm1akp6y2NAe3U09rdpnUqPwpRvA07SWIaaKZbTp7cYDafr5VXXuU4bJnNf2Hyh8ewdBA9MAkAPuWvxVJjusPi3nBVo31cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kxtb5s1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kxtb5s1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD4DC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732945553;
	bh=fumGs5AqtbwBcQ5tVg4eNzOF3GamfrqqyYLIfJL9QbI=;
	h=To:Subject:From:Date:From;
	b=Kxtb5s1MwBcQ4zUPQJOt9Bje23qXz9gOj/6BxPoXeieQBdUrLSJs8FUDBLlhUXEsm
	 jLJ2BIDS9CsnK0GVd9KSJ00OhR9RsZRUL1aKqI8Zf2Jt3BxJsjB5JOjM8um7AyEyJP
	 4ftbir1ljzOMKD66o5y46dfDpiBQZfI8MHn3uJZ2NBvu4KRk+Gg4Kbz8R4ZqB9B+nO
	 Ua/TILh5EJqbjQPcHi6+zSzjNa/ZYcvA/999ul27IgP8FBF/z5ER8Kwz897eTQU9/2
	 rzXwPzW6Y7A4NATh2aolKeILJizL+STVtNTSeXSqEDxGW/MoPjFu0cjCJsmB/1oGKb
	 YPqCf6ZNQVa0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9813DD735EE
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173294555359.25734.5627683706014885982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2bba4259937a92e99d79fe3ae2782097b0430568720838148d8b5d2603aa87
Date: Sat, 30 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732945553
