Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4D32F6578
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763985714; cv=none; b=D6VJsATfbBWLEonwf5KsHHN0nUkNiAxmSs53c6pW2tCDig/x5loAyJAjDcPEJ3icotDrMF1brENxZOAfJDBLM/+jhlys+zMis0fduSAXPiSkwnihhSXaTvTR3h1Lyt2pkY/qa0sXf4FQnF7v1rptZylrZKvhWDNaiWSsZCcQnEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763985714; c=relaxed/simple;
	bh=ycD9gu2T6txs+yn0L92QVCQRXMVft8w7vd6yXGjROpc=;
	h=To:Subject:From:Message-Id:Date; b=QDTk/THrH88B3dUgeBGOVghuWlrr4AKtiGDcQKuKjN+EGrQiuesXsxVWlsogk5VsR5s4prnqbF/c9AU+HfM4+J2ZdASiP4W4Iz3OzudcukQsbJZ2wNyUiKa2kKNC1WfSQSuhgRl3xBBU4JVdXlYUOCI9crJL5LrCDaBDS8KMc9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiELq59O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiELq59O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA96CC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763985713;
	bh=ycD9gu2T6txs+yn0L92QVCQRXMVft8w7vd6yXGjROpc=;
	h=To:Subject:From:Date:From;
	b=PiELq59O8DqovRP8S56aRtV8kU+ySmhBBZP0n8g6skSFv3df7/QCLk9id9Lj/cJlK
	 x/bm1r7gRiWNlwd45mjxhcrT38qNH3yueLRT4lv0YAKCU0N6DZJaH3uTi6VDOVablx
	 3FC7DPAOBaBA4TwhyrbXhBaTkbNQErdYhVy8sTzMDsGMXEGxz4zWFdu9R34P42H3Qj
	 bsabzXL3z3Uimq8zMX/PTbalIq9+bnuqD1fjKRlJ16QDQKCUjhJDIDXMh9F5mkEBF4
	 aIc7Vw+Uz0t+G9mR/9DUZLx6sqOK4VU+65JHdrjzOzvUvQpIgARBGBgalxSq/mXSdE
	 gmbogfyCR1WdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9786BCFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 12:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398571360.6072.6775511096885227821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83de920fae57339673cbeffa452d63848c8358b8b626b627cf1ba8c633f7f084
Date: Mon, 24 Nov 2025 12:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763985713
