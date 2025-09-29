Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F10719A2A3
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759179595; cv=none; b=DD8DbdMXqSr3ALte3l//lBL96iShAHkDUtbWZ9daV0hXYTuCTbZUC6OKRO+d3Tb++S7eJzRp8mS8NCRcDUjhiGSBnJl26PtPACtsBALArk1NY+rJsgckWYsqKx9qGkASLNkPaJt9tI60l12P5cDunceW3s7ZAoUBJFqvIj5qGI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759179595; c=relaxed/simple;
	bh=hj6S8AkmSQKUtFjYIeuO6Wpz4XAftFFTCD6s2735dJs=;
	h=To:Subject:From:Message-Id:Date; b=MZve0H3j2LXvX7DwXkDbPF0yRIpK2FlGw/qTV05EYEOljoHbN9OO4Y7wflvWT0Kn6oXYLjfRxhxC+zSeuhdsPeOw66mpb7bwbzlca1Px28q62wO/uPUCIWHQhhg4MKW1AGOF0I/EcOf1lyUTrGzo4mCjOfE9ERAik5hhM2sCVGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u78wQV5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u78wQV5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72C9C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759179593;
	bh=hj6S8AkmSQKUtFjYIeuO6Wpz4XAftFFTCD6s2735dJs=;
	h=To:Subject:From:Date:From;
	b=u78wQV5xmj9DCJB191DeiBj5P2E8Pwn7mVvD2grj54FTg5ZeiaCNp6kMLP2X29C90
	 eSv/TBoBL/TwOgeiMIEcIxAUUkAsJ/G0ACfn8f+KKptBYZgDaBdj6T/g2sZM7JJut2
	 +N0MxfBZJg5LxfHzxQIMl2ohe9w1XR/ySPnFr9aDE4yh77HY3w6DkXHO5prbOZvryr
	 ZuRzDfJQ+p4K81pA0bDshb+ml8/1ioo0raGYIJFdBQXT/uXVqpNASKujI2COVv8CIH
	 Wvk4a6y0yS1BnQ6r/6tKhbpPfdOLhZ5nVV/BzoQblHGgHHerYgZzwRjUDuThx/odq/
	 Vp8OsMEroNfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C1CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917959359.7973.11658247557362548921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e639f52bc9154ecf4e39da13767eddd9e1a9f1920e5efcee672319b52dd6f58f
Date: Mon, 29 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759179593
