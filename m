Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BECA2D839F
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754894994; cv=none; b=Ndx7tONiCZh3ORR/TOH4OmH3bSh4WQ3hT/BtN25baTOMpSnNeI3sVQhCSHIEtcuoH1RjdVMjxQ46kSSlGsDmZnsbbYH26ieQzhgHd/ec26jGjsruIPmlSZ2Nedu9uPGTTiRzekzOc0s7NjR2tsRxYo0k6yBG7WWQiDhmBMtGIEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754894994; c=relaxed/simple;
	bh=mh3eNIbmfB/6m2MSgqiNq2hvIvYXJn8OjhrvGzdprAQ=;
	h=To:Subject:From:Message-Id:Date; b=lxzoxkS5MtDCzfyRja3ruF8xaIgL9NKDpWDYEAZ+awcmTc4k0y7T7qPxdTvKFArWZSw2NZyzaLAj8Xi7z1nkzOfrCHyTm6ZcDzRPP8pcVY1lTCbHjgP4DBG4OooEPYm7SNT3PjadxfJLlFqCU+5wnzV22ECddpWgRLZFGn5SjtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwuGvQQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwuGvQQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A010DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754894993;
	bh=mh3eNIbmfB/6m2MSgqiNq2hvIvYXJn8OjhrvGzdprAQ=;
	h=To:Subject:From:Date:From;
	b=jwuGvQQMukzZeIrXhVTPrqQ5EMx8AyP9eaIW+7C8a6aWzFlbvjT1cPZvShmhLDphd
	 kvsMliyrbLNkzhfiRiryNnpoWzxRHZS1EWZs/B00Zw01VLdqcBfzO7w+3K1IAuELkd
	 61VmVQQUPQlX9e2QfGh3ekEUC/LBEjA9P0hhAAkZgnaiXJDkoFXPiPgL/EM8LaKCvG
	 hjjPKEzlZEc3EYsxfAdT2j2ZU21rq33rW8j8NcbMJ52itUWHDTuH2FUhX9ubTUP/kv
	 VuvIqfieqSwqoXTMCKiF/WljGzaUgCfVFoIz4yyfgkamsofM0v+D6+YgHW3O1Mp/rs
	 p0Qu85E8f5r+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92471C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489499357.24600.6549931767691523965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3e3774c9b789530466fef9c84ae9f6b8b242cee69f29f3f11eab813108d7cc
Date: Mon, 11 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754894993
