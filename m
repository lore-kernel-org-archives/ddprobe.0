Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD8A3AA1A7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788793234; cv=none; b=Fce6IxvNTh1yK9gpxTK8Sjo91imcGpui43QRtnLUPrsHBJDNvWHn7/K6UfHke4Frkrs3iF7k+Hw4xZow0zpxpWz8UX2lUz4sm5hhpR3t1AbC1aHIJhiXqG+e9aUvzbXPDsf6pcbFaqt8RrH54EDpwi7VIJuIxYM6ilykNg71s28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788793234; c=relaxed/simple;
	bh=a/2+gkBH+v3TV7HDdtdCkhV7f5QKfJr2NUq6nHsKh0k=;
	h=To:Subject:From:Message-Id:Date; b=SOnrr/e2BtaVZnOoiKLzajNqyy4V+WBFI4ero+y65XFzzT2+HTKLLawrcudHgmCAqsxfB+qgWeXRODBu2MdYQX5cXg/DlmNrj6LJQ1sNoiidvK5iVoyzPqtsm40SkRVlddTSw4k01IOdUgEiN8oiDr9p8GpfCXQtOhFQgajPXic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYOMgAlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYOMgAlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D81C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788793233;
	bh=a/2+gkBH+v3TV7HDdtdCkhV7f5QKfJr2NUq6nHsKh0k=;
	h=To:Subject:From:Date:From;
	b=PYOMgAlOLurquiRnUVX4/3EtsJcNudryOqDBgjv1FMfOO//JBZnTL6Ou/19Zojntv
	 lqYlIur206yvFHn+hOv6TprNnvwOD9zUmqMLhpkM67TMAY7wbxpN2xCw5XWL/NOHz2
	 L5c5Gt5DPNumMDY6fVi0o/RNjTZHhuyufAoA2+NJ8xa1h+XfFSlQghiHzsz8Y6KgZI
	 MnVelS491GQ5Y3FwZagOlgCB1dFxkyxVaTVqzDU5s9j52fWQAgxrzhqW/qKBC1pQ4C
	 +kicAVcjhwVjYPD9ksNCw24QmN1SULGS2lbv1QKpG1cW0y9HOOv0tL32ttnsIYAMKO
	 WE9hPKOLWGmlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B193BC79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879323371.17773.12191448009767298169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402b08fbe8906d1bb843b23641ad9871c488856c7e6db27115c0f985f24dd05d
Date: Mon, 07 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788793233
