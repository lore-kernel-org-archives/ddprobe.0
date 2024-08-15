Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420DCA35
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723683954; cv=none; b=Qk6mS6ajlTS5ykuR+9HKyvnCSljaFUI9TB/ZLvvLwfZ8ZZyXYxzQejGccaBHKHwQpbQFuANPNGt0wMu6rcEkyUJJ2jzSAUDmeEhn+xqCJv4nijqQktA5dr+dmEksj3Ot/H3dd9Smv1+q/L+XLxA1190ihooCDtFn8oRfwWXgTWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723683954; c=relaxed/simple;
	bh=r2fGXOsu4w+YHJPlF/6nQU2hywnWz6NuP2FeUpM5Mg4=;
	h=To:Subject:From:Message-Id:Date; b=pm+p1hTRIx9FG1pBQ+wnVOeP389FnsnkfB/rItdFxA2v2SY92ivk3/x3W6J2VOtrli+dwT0icrHsnCfa4zqJqffAFQiYnyGnPe7nAkqQCQNVQTlKeJmTOJMU2exY8R/Y4qamV01xhXw/OKrheuY9FesT9YIV8Rrb5VN1j0a4Rg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qcq6DJhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qcq6DJhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3485C116B1
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723683953;
	bh=r2fGXOsu4w+YHJPlF/6nQU2hywnWz6NuP2FeUpM5Mg4=;
	h=To:Subject:From:Date:From;
	b=Qcq6DJhc1xgwp1CKN83srp0BD7aP1h4YlURLN9WKtsz3PjA/ul2ixtmSKSsC/XyJW
	 23f3xoUBx4z/ivLWz8rE3wDtrGet31xvrCAL6pt0xbX9W/pUIUtHg2XiOku9LY/mG+
	 zI9whxPqqbhzhRUvVgKQUY0P1BF3Pwqq1DtP03AeA7TXiNc2b0ZbTfy5dymRnIhipi
	 2lAFuC3IjmsKeCvDZ1UE6WqAsVLx0D2aSHt0H+IfUhJLCHaei9jvcBTajN9/sTrcVF
	 t8C584vIfxlUDmdPexY7erQJTm/D2IXkLmDTgng8DR+hgzwteLsOw1ozNHuEvhNK7W
	 vLOHv9Wccw+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9451CC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172368395358.11226.14244212922788219269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e8db79ffeae8be600882592d4aa6aeeaba1935d074f74f9ba4e5ca5933e9ea
Date: Thu, 15 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723683953
