Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1217C1C3314
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726184754; cv=none; b=gghrLGNiL22FLaojmsU6yxSkEdEJSfCktZs3wnzusywkWPv+tklX3SHdysFpd9YQfkIZh38GbCU3F1Cr+sW3DedubHFd0Pgw7nVFIkFF02zJ8mmtu3EjxOfsjrQfDZS4Da2cnwhmaSqqiRVIhO+rgrQzfcitcCf0t5kXL7Ys0qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726184754; c=relaxed/simple;
	bh=VwlEOih2DYb3gqF2AC8NSWF8m76Uug4stgQ8/czfnYA=;
	h=To:Subject:From:Message-Id:Date; b=gMeV04Mo4c+hbZqEprGWOF5oBI0lxuaTc3lHb9sQRYe45gW4QHjrDAQwyNbotG2638qMMJjEm2+yw1CHzP58/xfT6bhSHhuXFifwgvF9xLoarqCrgWNJLoNYHpe/bV/Y6xlZepdsEMC3KYNgpc2gY2dDGHX1xepjJngnTHHkyRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RK3Adspw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RK3Adspw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD937C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726184753;
	bh=VwlEOih2DYb3gqF2AC8NSWF8m76Uug4stgQ8/czfnYA=;
	h=To:Subject:From:Date:From;
	b=RK3Adspw2l7v/ATAAy4rZtTQvuXDp3RqNJ33DG/dnL1FH0FKQ+eThnq8ZzT76hExH
	 Qy8nKpObLO/en6MvrxLs0T+WTqcRPXCE5F1I8Cg+IrBetMgbSp++1b23meIWz0292P
	 7ve10tYVj6nb5sTtx1+MJwrtoHRW05RM16SRGWH/MWAUqXxpmrn+pLjWTpSzzQyo9L
	 fDZpCrkQ/60/h7MljWeaBhxLwDKzbraalt2DAwjmb/RmPkLEX0rQOiZpmsRn3Q00Z3
	 esnePMOxt8a3zCFPXYq8MUIh83eonCQiFN6l7SCW+U65+UlvalpCgzpXw60AhJ9f6n
	 UJxIqArDJxtEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D89BEEE270
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172618475360.11829.6236488271882584568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550e49d2c7c9cf4e2bc925d04d13521defcc46f143372103f03b6fc505d8ba32
Date: Thu, 12 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726184753
