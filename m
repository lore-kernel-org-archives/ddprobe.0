Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215FB34D398
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768930434; cv=none; b=t1nVqDjTXADUmjS1jzrUoFGxTJPKRszwzrLQ8Vdi6p/uVjHFCRm2VNob3D/k6NQzOifhTO0CQ1xtsyI0s8szdksJyyM80+OYF9ZX/piMjyFfjkfOxStXh9ul7IPIIABjkl8m9tYoD8eDS18C9Lc5sP7bHxU2ukogWaYoYWB6KJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768930434; c=relaxed/simple;
	bh=VSaeN+bTczy/0XZCDvN3nLFKg5sedk5+dEdAXneRkl0=;
	h=To:Subject:From:Message-Id:Date; b=hsxhvNzyPLloIkYlde+Cbet92GOBkaDXP9KbWF6KENrnoWYBtUYJZYP+eJ/xMdrPIyTMNBEg6/XY6CMqQM0b3mJ3UDDqVtwIXHfzmjsKbEye8UUlLNUjxiL2csPf0otWzuZRnbNai99ICDdW4uQsRTPWTOGMnLRttizyi2lj8VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMhc+/Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMhc+/Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A89C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768930433;
	bh=VSaeN+bTczy/0XZCDvN3nLFKg5sedk5+dEdAXneRkl0=;
	h=To:Subject:From:Date:From;
	b=BMhc+/Pc/kfayVQT1o2P7bJuvRwbP5skUfRg/VlAdule76PC1zbOT6JXK+sYhXwbp
	 cm23o/GfwvlZAKxW+C6JPot8QPeGaBcSmXcOx0JRevW8QqtNgGU4QKeAiH2M84zl/V
	 qE8UG5+z+GruJW5HW2yJqzkIMBebw/iEVuCSWKdve7sUk17CE/vCQYduYgRlk2GZDu
	 5LvbN4cySbjDcgKD9JOOLQA8rMyGurBIQRLkSOG006ZpOQM5T0YGuNO5MiIdcuYc2g
	 DVmQj/F/TRFBYMCg1SmSY4YmprsTP0QOvL7WR9So1jBY6z9RUp+tM5tNjgsehYHUIU
	 WzFIoJJ4QK12g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906AECA5FB9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893043358.13061.7185065096746046354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2418edf60e217e44996c0f35eb783b62bb47d9b5a172eb6d3271fd2b7d1ba24
Date: Tue, 20 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768930433
