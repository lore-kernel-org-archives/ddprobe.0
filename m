Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2331C3BE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741796334; cv=none; b=qN+f2yOZkWLIJzs/QsmPklj0iqm9nGHxSXQ7jBiWkdZN+qgEDr2YBaiT+gJweqvafCHXUmQVm2SHZRs6ozt8xf8FXDNO+Ju5vV65cYhBckV1UHPkcNra7sH7tmadSs4s9xF7e0VXsPEFivAQeXEYDm342cBVWeUqFAsaDc/A9kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741796334; c=relaxed/simple;
	bh=VvXM60PWJwKzKPeSjYEDhDieNYVJnyXCecwp4nuKb1w=;
	h=To:Subject:From:Message-Id:Date; b=VnNS8NL0a4QQdxQUGlPphkD6hum45gzzKu6QhooPRyChif0YyXsFsut3xDbRBnO6QbOWZGgdm/hro1T+rJv7jinAu9fdkbYuYw8pO9yVMaErKh78xmQ804iMo12h63tQnY2p+BQE3WRBFZ8cA3GG0UszNzvqPQlB0ApHJphr0gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hN0WDuph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hN0WDuph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F8C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741796333;
	bh=VvXM60PWJwKzKPeSjYEDhDieNYVJnyXCecwp4nuKb1w=;
	h=To:Subject:From:Date:From;
	b=hN0WDuphGZKj+Psa7egLoch7aMXVZWffKz9AsjVg3brCxI/EB/dvgBC93x6OkgqAC
	 chG4ubLFAxFUlvZ/fBbRF94YYVsncYlEPKApuTRmy+cX45JzwwIIEJakWForLTt/6E
	 5O66CZ7tSwvLWlwC+/3XtYojgfW5C5AHZgat6JtE8nOTkCruawDhB6Lr7Y4/UZ/Fec
	 Csjd9hL+IJvs5e9jRnKtj0LUI/A/dHaEEtsyhix/xypmInGMZEuU15Oh4dbrnBAjaD
	 53wSBS7U68I5ne+uc1BGtkAPnBizk7q2yVuoX8ftRnFFtLvJotWNiwwkllCQsJ0ymn
	 yIcYYMnr7BFJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0CC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179633359.32402.7188349194712941053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc40b38aab179079c5a69aaa78740ae9c258ef64d02ebd4e5c886fbd3e5159b
Date: Wed, 12 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741796333
