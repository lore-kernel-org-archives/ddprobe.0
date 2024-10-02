Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3729D196DA2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727913354; cv=none; b=XK3I1jEpUnBOkaqqi/cDCDbrFnL4aW8tkW4FkE5ERfHHd7P7XV2blck/q2dXlp7cwwK6TgAY31jhydJnu5G4mzi+5gNf3Z+8UvoON/47sI7G0gTDzxh5X8zE+0wrfOe8iKXZ98/o1y0l/ub1PKw75Wu5JBverjR/v2vtEd5QMFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727913354; c=relaxed/simple;
	bh=rXWrCWXrVxlB4F3EbDNGWB4q5gur1+chZpr84O14YCw=;
	h=To:Subject:From:Message-Id:Date; b=oh9lJxCq7tawvxBegJiCyFGdA+AwmW3CS6BWSi39vnWW0EnYi0PO648eKphnmGbNdPV+Kvfmx75KfHV03CYzQIdKMuNrIt1SqGQsGQhzhEcw5xlOhyyGLrdnR5N3uD+NzvXbgSS1qa58NwGnZ5cAfkT7I9Uq515QHKzO2hZpLpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0yPVTNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0yPVTNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9799C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727913353;
	bh=rXWrCWXrVxlB4F3EbDNGWB4q5gur1+chZpr84O14YCw=;
	h=To:Subject:From:Date:From;
	b=B0yPVTNN6eNndxBeIwG/jAXSVn4LRb0tJ7C2oIDvugM5cBRlMHci4o+STIb8w5Rf6
	 SyqFVezUCDSPZJWwr0WCHWfCVWenGWgIAG+ibQryZb7PGjH8/KIXINWtqtU57cSCto
	 ZhHkEap/aUnmzyx3CoQk5D/VyAT3r3zyRMwDuzVpstm2aBfQXKPzZv5M/o2E46fF9F
	 V2kPXOT2Wt6DE5zOcq6mFQoTw900/oM9VclRuwF7xMD73V9FSSVlHufiHKDs8lfAwM
	 aP8qGRuTYsSdgc8QHhxSK38piZAKeZuOdeMymVVNtKoQuN6Xlw64rAmMPUoN+cpyGb
	 9EH3hPAAK6tgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB4ACF8549
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791335362.14507.5045683109588286275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5f4848e343e88897f282054db50867fd1e1fbd82285ad28993d1b7c0c83c4a
Date: Wed, 02 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727913353
