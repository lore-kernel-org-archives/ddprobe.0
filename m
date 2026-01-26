Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2E6849C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769385834; cv=none; b=VQBokfsP3Wh/U0zl5ZArjk6FUrIjU59OLAJvRxYuOqwwzP0D5tYTNzjlyZEfGW1HbU6n2JpcDCnmESlxPKCw4Jaj1Gr6iPkWFtnVJ3Nsp5YnktYGHoybk4nVycWj43Npb3T9M+vuLA/nxrvwmUxvwZhaPkU4feFpe1FUBnHed/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769385834; c=relaxed/simple;
	bh=VdlEoDH0TGLDcOqNG7aogw7G3XXUb/w9R7wn//Z8f9I=;
	h=To:Subject:From:Message-Id:Date; b=EPAq1kEI9hDgtnYn8kYIyxQlMnmw48ZPt3bL8V8+FJLUpsEml2NKMVDBQBpxhu18Go0oB0cba9jnjCN1ft4EdwZ4gP/wmZe1ud9Z++aJTet2/Fu8+zn/0aFACazESgyHai2U740RXwPfULjHQo+lLAHIn0UUo7xpAuMXd/4LJpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDmNLPmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDmNLPmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81EEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769385833;
	bh=VdlEoDH0TGLDcOqNG7aogw7G3XXUb/w9R7wn//Z8f9I=;
	h=To:Subject:From:Date:From;
	b=pDmNLPmvcevRv6lIH7taRndXVu0TejsGNJlb/+7LwDfqfbHo6xPbeALkIubobGebE
	 jScX5GGYF6RT0YqhybDZrmxawctVEORmA0qTNadusdLbvwNKojYUJ65nk06g3FFSRy
	 Y/YfxUzvEjTmk5CnWLgEfIrtrpZsBOVehCkA6J3er/1Tjme+GT/bT1ESr6WuD3THNt
	 6raj60iRCcZgWuGEYVLFSWVEuxItX+mSae9dnTtoTTahnHCVTgpmHP7jTlY3y/BkEH
	 CTnN2QBWvY2J3/sqTiG3hLdMTXOHrDegzqmJtoEypvP6ZR+Er3phmgu3w2FeVld/c9
	 pxuthlZKiOOzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975ADE63C9E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938583358.3290.11973717679334282998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db8c511d6ad9f1aaf70ac2e1ba2500bd572c61665a6b0b8c7d5ad2bb52076f4
Date: Mon, 26 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769385833
