Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4103C257854
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781760394; cv=none; b=M/m0saU5yMO6ZAxv7mRijzUU4TFMECcm5TFUooXYaTQWBjIoGygkW5UROea+g/jQxKpghT/USfwMVspBPcaGtic/Bhi4CXZh5akr2jjGRM7yLoVAa8ppBd1pfgoiez6ZvjSnuQRxDR1sL5XtvO5F1nZ0TCCSkGo5lHvTc/B46Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781760394; c=relaxed/simple;
	bh=iT/eG9Y4HiuOZAoVdLQUtpHoVTJKOn22/QG5AIHRmXQ=;
	h=To:Subject:From:Message-Id:Date; b=nPNSgXky3ROl3TpZPaMlMMKOvmRuVDWTJACRTE4r6i88MrEENxHtM2L2VJSjWYzB5vU8nUQIS+O3+zODrVGViivNI+v0PW9WbDll68Vt0CPBxUzvvYvEi7ZYHcEgD8ubNMWFsAwsbHk3TMyDuHQjvaUVWRDkWp9gspqqiJPhcwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gulQ7m2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gulQ7m2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D42C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781760393;
	bh=iT/eG9Y4HiuOZAoVdLQUtpHoVTJKOn22/QG5AIHRmXQ=;
	h=To:Subject:From:Date:From;
	b=gulQ7m2ic2IRJip8Vvj3zd5W9EZHiCldFhxD75PitMULnBPJfmwTlL2n/ALduNRZT
	 UWMXkupmzuvwqXxH7owGJCTOcSyC43r+oUyv2Ce23Z9wn6FjlCeaQyPGtX2NNn6VHl
	 8MRlQcL7gaTHYIbIvi5Koxbb2y2ZMu2lvqYAi21jvDaA1DVoctUqNyZYYr5Jb2MA+K
	 jpkow76eleUsq0Sr4+g2ImUKa+YtEY0SA19UjxK0X0XrwyP1bBBUld6mQhMnslwPj7
	 PGsERTwH/IHAO9vh27dWHKyd6nnoFFeLcV85sC1W4tuM39xHRMHdDnrM6X9OlEXrtz
	 n17OM2TwzHfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A6ECD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176039368.14331.10905971852417933491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691732e59d4fb97121134965d2fcd58de4c519d11ee93333da1e1ace3fbfb69c
Date: Thu, 18 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781760393
