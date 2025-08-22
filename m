Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32708222581
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755905994; cv=none; b=H+ro3Wk9tfXX87/QUtXI4KnjMHcyCKSbaIULqZ5IYxJDRA4XNd691h/SkuGtoEyt8I2KQpehX0lg1ib3oJNSxupNSWI3JSCqaCjqe8NT2MuH7Ar/T6etJPxWLBZuoooj4YUquqdgyNs3zSIuNfiLwyjdSCH6Vgxc5ToZndzdOPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755905994; c=relaxed/simple;
	bh=saik6JkyAL+YfEIa0MugIQJi/jvWNc6idvS+oGTExJk=;
	h=To:Subject:From:Message-Id:Date; b=PQ95T1Djs3Z7himdJJyvG2NtFyRveocj7hZLlT6MfCB6z4fSBYrs5THT2v+GJqqvt4NnHuDdOQMffSVyd0Y6HrMpFTkv6iZQiENCspWKrkpzO1NaftcsxpM9igiqY0GRrJ81mJK1gUuZZawVNA2WhsnOE0FdWdvOW/Ob5hBAE0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoXidHh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoXidHh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A491DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755905993;
	bh=saik6JkyAL+YfEIa0MugIQJi/jvWNc6idvS+oGTExJk=;
	h=To:Subject:From:Date:From;
	b=DoXidHh9C30iVlvvfFJw/PAEanAsSB2HvXZ78wlTThTDWAfJhW25legqtS8pXqf3O
	 u0tNzmlSCMndhVk1+XkMGjT//0FbnCi3mIcCbYkA68TWeZO58bPXX/zQ+MwNqvUnlf
	 Pu6jiUYMoNi/H113m+kqXGuAfy8hgd6Asets77QcecsVrNqHhBTjVwcuR0jjhLgK/2
	 iz/8p/5UMhCMmCa4wOeAt1j4nhki+VH2Z6hDnZfEzRBrjKPgsZ65o2sSYK9uJY6//V
	 p98HbL10Y2eYMylFa8Arrp1Z84yVK6QCk72y4C43KuxiMTaH5reBO45fP05rPZJjnn
	 pm7LiZFdF5Mkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92893CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590599357.4507.13489484521258584748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b458a6d5ec9ffdbcdfed4316f6d142085c46d290218b07eee6f4763c84668ca2
Date: Fri, 22 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755905993
