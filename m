Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596A452F74
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716207743; cv=none; b=PC/4dK9vWAbjqrl4khUpUHYpNtrLFf7hyOInBCoIwCh1XjMl4bmei4o/2j9ugil6Wx9vYlsG9sUlWuAdRgpmY0LFEjIxLOne7lEW/3LztxgvOCJzRCepgkw/cOsIFA7vZ1AWCD6bx6ZKk5fLMam5pDCTIMOjfpTQhnqnfIz+yZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716207743; c=relaxed/simple;
	bh=Aogv+rqGx8BxgxXpaiaoDCUl3WFoJxj9r51FeVlIRys=;
	h=To:Subject:From:Message-Id:Date; b=bAQ0v5ZqHXi+/IJBXLG2CeiR7b8XBfuBkMfwkiq4Kh5hp0NxN5KXpArM4XQx7B37l5pKXpt2BQwYRLiTkmq1lRX5wMQ+O+b+kompfQUGsz/gcglQiglpxbze7+rNGjqYwE2/SbPXkPvvt0/WhKo9I6JNyBEen3FdISXSmxGlZGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scU4l1Lo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scU4l1Lo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6150C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716207742;
	bh=Aogv+rqGx8BxgxXpaiaoDCUl3WFoJxj9r51FeVlIRys=;
	h=To:Subject:From:Date:From;
	b=scU4l1LoxG1IYQXann6fAi3Mw3p61MN8EKMerP+PNDLAxGLskul39Yu5bvoTqf7X7
	 83lhmC75IKxtdbSLBHrLLJGBwa09E7LKwzwkcWtClHFH8lK3TU6RFKcoDqQbIVvw7N
	 JNjsrhxT8GF0M2ezitbGKsObNDQdIYqRAdqT01arT3XM3FOjr2ip0iv8AxaIAB6WF4
	 tNuHXqXE1W1Wxqwxl494+SvVm7F4cB4qcJ2KKSDfDtCXKUf22vCBZ4YeSKrt90K50E
	 JaanfUN6Fs/xEIDhaDIQWy6dgfjZ58xrJhM+/j/aQOz2fAUSLcSnw9l+dJXkbwrHkC
	 QGQjyE4Ua7+Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F31C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620774279.12391.17236212448124568125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1e110be2639549bbcc38e86efddc1a154b8505fc7c36b0b6fdf691587189d5
Date: Mon, 20 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716207742
