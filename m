Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34224256E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733445354; cv=none; b=bp98vZrtnuvVCf4twGTKyGDzkduQ2DmepZYNAwKjxyKjNerzUhwBqKQcQL6v3yNpSV/N1bRKrsn+oPlGUQVp1t9Mqz+3lQsI/xJXS6BEjmooGfhnCMZm/CGxbmsL8yFJFY50GDGUm7YyB6ddv9uasaTgHhpAHJ1BrCTR7FbvELY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733445354; c=relaxed/simple;
	bh=vVDNAzJhG88KfzI3wRFfVobjolbk3q3vBdPqxfg8c2U=;
	h=To:Subject:From:Message-Id:Date; b=cWoUoofCQuf+uXYU4uEjejvjtImGN9JVoKN/4gxcXXId4wktEBrBO9LgX3iY/XiebXtw+sARtfswB13cB4kinxUYXsekf4AJppsxXhPQT0bpOht/qMl7y2jinKeUDmQ0fLHGi9Uv5zImU/SGghPpEjhZLWY06DG0PreVLu1gx/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dznoaCyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dznoaCyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7441C4CEDE
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733445353;
	bh=vVDNAzJhG88KfzI3wRFfVobjolbk3q3vBdPqxfg8c2U=;
	h=To:Subject:From:Date:From;
	b=dznoaCykPtbIzNFwYxgijEftg/iGF5t+TIzGadiOnpJDB8766yxmqWjw41b6vfNmG
	 mP02O1DK2vSv5UbqSvb1D9ORlMmrIQRf8u9DT92/8rlSFb5KKaIYju/N9KoOKGnHYx
	 Dxk1GvYbVQ07STvgb+CO/vXtJsKKVddNeXlCBgYwf2fanxMn1NsxX+A0PzbQPQDbya
	 tNx+2h/LNE76dyq6cI/ipz0fvWnT8Yxj7j6qdlfOKb4NRl9UeMzyaKRQytgbFoB6f8
	 aLQ+nemmJeKyJ/vfXhKUEI4SAIXL3dvDPobzkRijJuLeksyxj2Kq0EZL433En1Gevq
	 Tit1EkEOiIqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91186E77170
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173344535358.8945.9343494565270365502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7846f5f0feefecea7e5a4a441788236392ee1b854314ce58cea9b6a9db1717
Date: Fri, 06 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733445353
