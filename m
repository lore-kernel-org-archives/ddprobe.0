Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3449A344DBB
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780053754; cv=none; b=EBQuL6mW2bACAtTWar/bUaeSg/EgG1y4Uc1y2jj6SFa7skjlZY/zBiNZiIaxZD/syb11KDnGl2vRfsblDSPWt2ibvIerVPekaxMPswtb3Jv7K0r/a8cSfMRlkNC5L8jw6GW92p9y0XBifvHOmQGoZUeSPjfMZTK+AfKpevmBt/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780053754; c=relaxed/simple;
	bh=Wq4VaM+8mYd5xNH4V4/Q63dSrZ9IziWj68vijpqY00Y=;
	h=To:Subject:From:Message-Id:Date; b=OsivggjXXg6jewea9NdyhzgSrLe85T5uOfC2/7SS8UgIIRonrVTwQpX25P/tM36gK/z/ldknaoaDWNh0JDVzp+Vcpc1jfZdnwYj3wdWEAqQ86wHuyvkSDCIYIuw9u00N6ggBaB2nutoSLlWxhPHd+GDgkMrT+nAV+8gKL4VKzh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/tgppqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/tgppqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAADC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780053753;
	bh=Wq4VaM+8mYd5xNH4V4/Q63dSrZ9IziWj68vijpqY00Y=;
	h=To:Subject:From:Date:From;
	b=D/tgppqn6jyP8N05He1VOi7XkobN0caWRGa0/agJSxE8eV7QhwUBg7t9bQ3ufSIPR
	 PudN66mqVYH1y8e+TRi2hnUCDHbYESM+rSWfLN9xRVVCzpUSD6wsD68qqHkzTZkTx9
	 nYa+jxKRlL9+AlwAuZ3jtaItCNHjemtFJ5ShVujtUObrmk2AIGi+oAdbcdD1r4z6G+
	 vOBq5CjXvDXqJdDO9q/O0ULCl07tu8AjDwJtEWhLBdheSywQO5qmhXZydYC4ridxS/
	 4CjaIZUJtY7jO4euwRlEiET4gU1gM5jVL+zAniJUtjpxiJHI4qcA6799HYUrF8EN9F
	 My5jRUIaGh1/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F67CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005375368.29140.11138587151254968159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61119dd695b16cb6477b9c6b8a9846b7522904fde9fe2e9e765aa79fe45dbf5
Date: Fri, 29 May 2026 11:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780053753
