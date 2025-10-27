Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B12239573
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761580794; cv=none; b=eiX+cHtQ5B4Bj8jPFsxKtGQ3ffIG4HEUC6S3NFrNe6MxTWJD9N/qgJPh9J9ZavrGnlocL9pCpG/s17EWibLe9osqp4u+6fSkrG+QjD0j8P5917uddaiwjuCuyfTHc+EV144MenEubtbsNQ1ceIbG1kpsfdt8GSvLyHCUyh2YHHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761580794; c=relaxed/simple;
	bh=viHH4oXJPvncgoCoThn/ArFx5f7YtocSHhz6uVNuS+s=;
	h=To:Subject:From:Message-Id:Date; b=ZI6YFrmqPl2ZOa61tzdMNOFKjhtTxME0AgNCZkttzu36nnhk5OjiWdJS+Lw474OTi3bruTM3HfSSNSzxY4pmciVcNxTIWVltQ99wHrKHmx15G9QuWBwMjtnRVNuUYTDkb4pbp0aVHZ/TkZB/hekiSbgdjfGE5w5ZNOtWTyY2KQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alxMIZLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alxMIZLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A75C113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761580793;
	bh=viHH4oXJPvncgoCoThn/ArFx5f7YtocSHhz6uVNuS+s=;
	h=To:Subject:From:Date:From;
	b=alxMIZLjGbHkmQmFkC0vVlp6X5wmp96BkFhaN7bulaXpSelHdLbjl25pLxI4VbzY9
	 S0B81EmMvvWyqLAoN+q4w3rqK9kfBlJQB+RcGK4uq/xMlh+woZ0BnOHilCH/Vo60pX
	 a9p2xm6hNGTUP4rpOjOVA/M6ajmGQQ0jSk6fY9N0ksRA9XPwvye5xZQHiWM4ueK7sr
	 lai0Hz6xvxxQ6iKboCVJwbaMPgjfNqhlzL5dy115spAh7M/Doq5z55BGD4K4LqLTwD
	 Z3cgRofeJz4R3GJINCo0/iH/pIO6mj1ibRcFnkdFPfWm9GLSaMMxMa+0qgDjuwy3mo
	 0y1FLggfZMLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B4CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158079358.10476.278310355160666010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60fd43558f39534b4bf44c4a49d47c52fbf73bb01524a623293f0d190318247
Date: Mon, 27 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761580793
