Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3EC187872
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747046994; cv=none; b=eup26AeTM08d6hGy8gB3F1a6ARzMfpO/cHPc1mvEkD45tZN3OJThXxc381ygW9j73Cjknb9Enz/BiReR/zTy95snMw0r0WcPJ3+dkyjAndJxcAih0po+r3amhL/gOEcsQ4S6U84slh4DZcawYA3MTENoYRfUmA0NNB1YboD6uuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747046994; c=relaxed/simple;
	bh=kAJz7izAFvDDydMbhZXosfTqB22FWmsQZ4nukDOf1/Y=;
	h=To:Subject:From:Message-Id:Date; b=YSspkmutihQyswRmzZ1sb9KESOHo3ucOSUqfLIzNQ7KiPbiRB2H3t01Dzj2EKthicrHeSuBoGhzS2n5MWh6TLLB6SsjaJTEC66N3NTwxKeaA9bymB8KKQdZ1drrxFAeS5xb4H95xsStFVIl44zEIXsViF014YXVuomri4Y/iuK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFyoZ1vF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFyoZ1vF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBACC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747046993;
	bh=kAJz7izAFvDDydMbhZXosfTqB22FWmsQZ4nukDOf1/Y=;
	h=To:Subject:From:Date:From;
	b=IFyoZ1vFeg6cqrhfCOdBebEJIFDbER+tTKUWVCLb9i8yJkZc0psH8qxlwSJLy9Gbx
	 Z0lAXcANESVB3OZthaLemwd93qSqTQ+r+8rnPrTChmHl3nO/+zP/mtKYvZRgElo7pr
	 SyHWAmHQ369xpQLXAPNO2sBXPLcS1CsteOTqXQDfkNxiF4dbhpxBUwLnKOyWDo0xbw
	 AnslIi6ttpfBezwaerpld/56xr3j9V8HXN0omTq/A5dc2qhYHOkuONWtS5ktyLwFEL
	 3GC63q9ulh7tktGzJb0IWzVzEP+6tnaJUr4vDpHf10DVWs9MgWqV/dn39YhB6Ci9MX
	 hTtjBwUYXHOIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F446C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704699357.4231.11547161998800176295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9659df3af4da5bf0f533f6ddda91c5ab9ebffd3f07d28fb739b80dd01424ea08
Date: Mon, 12 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747046993
