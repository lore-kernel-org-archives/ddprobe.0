Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B4D36F439
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782839914; cv=none; b=bjSEahIjoaOW7X0QpzD+XHblCHhxuNjY+gpm8IpWozVfPVMvRN+8bAJ1M7EAg83PE+hel1evsu8ets2jkNqId4Ydnj8gzT+EMZBA7tH+EvroRc7yl9dVZflgsahj8A0C4nnHd079nw9i08VN0Wx7L3hldFkBO4fu53y22RknToE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782839914; c=relaxed/simple;
	bh=Omc/6c0pK9pnlQIemN8F91hBW57eBrffSewlAZT3yaA=;
	h=To:Subject:From:Message-Id:Date; b=SVlRqSaImr8JVtszCUnJJyWifHWFMg3QrqozfinK1AtzH8ClVprhqr+pAkxXwv4kF4qo5zxPAq0nWHpi6PdrvqIFgzidye/APT7CP3rhFlZ3ymI1dUQBqNWPB0uCP5RGOk5uhk1Gj7Oa9rZLub3L5bd5rvm8qpiozSGqRiAWFgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8F74shn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8F74shn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22ADC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782839913;
	bh=Omc/6c0pK9pnlQIemN8F91hBW57eBrffSewlAZT3yaA=;
	h=To:Subject:From:Date:From;
	b=P8F74shnUQtppjqwcqIqfgWIOKyOiXXb+yzvmozMVWx14HfnSYO1zhDlf+Wj3RIF2
	 KxHTb2q+y+Y7V3X0upavSWYKOmtYdsdQkuhXNFx3At/1nRk+H6vrSjlJ2XFwo+M+PG
	 yPiWV4ulQDDsADp9H1g0HD9O+sdIExSA6wIxqrIlBrBYKzMiJOQHxsHdt6EtTfc6s4
	 znTl5AplxNGwTnFGfoT7oCS/WHMDOEBGc/UShnT9mOVL461qU9uzJ0MI2li8g7diPJ
	 FAnNWD+V9N7qyQMY5pKAcIATUo0RDXMaxCf1ySq2JrCx5O4Dr3j9XN5nXVOkt8/qJ4
	 3vwLQFVTTjdcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9723C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283991368.13508.3609350674339282411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b6bf6ae314e459c4e766d6685457d7ecce0c2816f54647dd725d44bc2cfc80
Date: Tue, 30 Jun 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782839913
