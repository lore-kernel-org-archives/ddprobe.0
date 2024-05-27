Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E34815F324
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716822263; cv=none; b=pHKgUvMrp+qb3K1aX/GHh9RWMe95iudq/VGSJBb86Q5P2BDJH/s36bMls9BwZFlxdFQqClGHDYlq1vL12V4n4uuU7ssCDiHO0s+r8a2be78ookcheGV4gWapSmG93eu1LzKiZTDtz9N6qLF20wJRO68hI5kt+W5dZe+O6WdW8KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716822263; c=relaxed/simple;
	bh=Qg0FeZ6I4kmU80Lq76O8rMJGJU7CsHF3AymMu2JCMuk=;
	h=To:Subject:From:Message-Id:Date; b=NbLsSjr27sEYo3b6VItFFm8dkTq3SDJHsEPQnKtqAyolxyZAkRQhPsmNkaj3vdne1ngsHtAbPaHsFhfG9pFoBXg9HhL+M7WWnzaGygZwq/omvqAqhi1lv9Mqps/wBDDg598dXMytNS/AW6KcVq8l+GmmRPM+3iHAQ/f0zMghftg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bh9TtoNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bh9TtoNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E31C32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716822262;
	bh=Qg0FeZ6I4kmU80Lq76O8rMJGJU7CsHF3AymMu2JCMuk=;
	h=To:Subject:From:Date:From;
	b=bh9TtoNW+0Ew3LlDeUNSGZB44GhgzsK5ShVbx/8Ds2l4tzop0COHzPJcCyRKCwqRC
	 X/xTs67BM/H6JaUpDwweC5AjqdcYCVtnNRrJMe+G6AZsV0egWqqLKCxg+ukDflIJ7R
	 8ySjkAdWKlgWxdMvaR92OvnLVx0r6hLGtiWxosKcu0Epo7WxvieqmvvSiHu+GPV/PS
	 0mNYPzTX+ppPDe3GpE9rvcj3+69ZHv75p58qZicvTqqfmjN/RHoeCedjOjIMmXsj+R
	 q0Ja3iKHeJPOI5vu0RXeWyIHHTMV9wsR3At7tErPxMDDCTKPj1CnSQvFLdYgejetIe
	 dBMWWCaFtxkfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD095C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682226282.14514.12355100332742593682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab528b12aba7abbfecd22dfdd11e715a8ad0367bf2bf8b5b2bef7f5508d35841
Date: Mon, 27 May 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716822262
