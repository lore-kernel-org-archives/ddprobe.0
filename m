Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424762D9798
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773104694; cv=none; b=lYFyqS6g2ZaKLl1jXT8SVr72AbHrljPXxD/2Oie+FBSNroc6jrUEens25Vz6QndpWFYq4WOX8DxGi12WtAuM6cjd1cAzuHT57cuQOcTUQpPsiRTiuOFeLlHKGahabewZ4vu8TTSIfgtC59Th1xxitGf2Qy2+7dpJvIsKCbM+RmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773104694; c=relaxed/simple;
	bh=nFwIUgS+qY4gdyAivL+Riy5XKqleW7hlBRvQAYy45Ng=;
	h=To:Subject:From:Message-Id:Date; b=mUGiF/es6VKX06zPWq68gf5sWsu4VvFjBbLbFhFLxdLXlXsBVAgFoDZGyTsCozuIZb2Nm6NyyXflaexAQXrvWEe3pbaKtDbJOOTX5pIc1hlie2C2qJM3suXqKvdftetDTan+wHi9722OKXgxdU8xI9s+G0gtMsllVUdtMqVyJVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCEkntd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCEkntd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B05C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773104693;
	bh=nFwIUgS+qY4gdyAivL+Riy5XKqleW7hlBRvQAYy45Ng=;
	h=To:Subject:From:Date:From;
	b=QCEkntd3jfNnHkncBAD1QEnNdT0pewIF8Kquh/EqwxfwSQZqiKRexU7RcloC/4VJU
	 0/nTbEBW+qL+/MRAmgX599XdkUqT+4g8Q4xoukjtY1gaiPfG3u5ah/xb2KzKErLBsP
	 qi8u0IQQMjbwUnBkftrrPjkwnZYFKQdcYBJh4jd8n8fvOgKdsEy2c2JXaa39rW3pJL
	 4Cx91EqpuN26OzwdeidlBkrskZwyudJj900Y+02pfkSZSRbrqXWsztLKf+yCnv3BQ1
	 FoMYA//l+CGordNka2gVqFXig7zBN2iVe4jANHp8ztN1G3f+xatRxLe5+YSk1DVe+V
	 MccChXXSqV9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F415FCC9A5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310469357.6656.7920729388280580498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b936c2beee7fc622d8611bb29dd36115ef5b189ffe178f11dcf1584e00f5a3b
Date: Tue, 10 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773104693
