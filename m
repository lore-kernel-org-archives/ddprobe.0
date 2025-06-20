Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5067A19A297
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750451394; cv=none; b=S6ZzLcQM+ufVdgQc5lefkakIFVq0oX2+GvnLNuLMUNSkd8Il0ksX6xW2Nrdo6/yKCO0Xj3/ZPQmgG0vug6QloBNdJZ+WA9EDkYeLI9l+IxyTUqWfb+tS3/cu/EURu+VY7B5/4110XrjQgAt8aNxL3sn4zwbUEQVGOfFEBtTxnaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750451394; c=relaxed/simple;
	bh=ag0vepAuruNYOeSuCnKJh+eQHuUxoOYKRFnHgMDQQUc=;
	h=To:Subject:From:Message-Id:Date; b=Me4PnD3Pofo1bWM1yJejqUkyXgmmCGYNFEpr1SvqkEDfOd9zrxEKyKACWPlqjugR5eY9OhzhB/ek06CSFAHgjffpa7spijnl67g+UhDho5z2z5Vy8EJfVWxHfPhEsizhi6oVWWF/R6Q7KWfFyk45kyvtUIh519+u+WgZiIDRsdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2nBnFkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2nBnFkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0AFC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750451393;
	bh=ag0vepAuruNYOeSuCnKJh+eQHuUxoOYKRFnHgMDQQUc=;
	h=To:Subject:From:Date:From;
	b=m2nBnFkAKwVIHu50H7D16Rd46ICnXEp3CoKECcGJHjOwcxIoBolLBewrCgEDbGnxk
	 nS5zTbMyUXEw1xGRGYN+4CGBZInFWsJWh65cz+A4FiIGndZ9MePmkYt1SSQW1DbK8p
	 oPKfLWaB0MWbs7pThjqGzp8QBYlyxYs6GXinD8I/31J/KfnxUkY16g5j7e6+jLj9zD
	 OFyp7gaog9tUeRyZYl0g05V0g/aHDB9lZ0FfM+6UL66PclYaD2/I5ZNbqmNAmOfFBR
	 fk413Nh1TQATrnh99ck1v+uUJScEHTgpciXHaWswLLs9ZB1gdpN+HSLtBollWPJTfw
	 cCaSIY61Kg+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765AC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045139358.32334.8394929480281152288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469d9eb2911c259c7956e6ac88f47b9637851fb8a8efeb5a07dc17b86a3dd05d
Date: Fri, 20 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750451393
