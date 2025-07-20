Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5712144C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753017594; cv=none; b=njHedwyUTjBz9wYQIHqSWe9y1SqvvSXhLniqqtgYyjAwA0NDY69fYU0RixLjujD4K7hdvf+qZlNItQLpEUJJPo7AKxB9DmuEEVxerGr0Emsqcwb5Or/5Py1JpSQrjUzcwxoYW9hfdLpeVUDJljRl/0W7icjq58e7A7KxQNzXcTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753017594; c=relaxed/simple;
	bh=SLO2eSS8F7j/g65Fw8BmpfrpePo0FwzxlFUT+UArDDA=;
	h=To:Subject:From:Message-Id:Date; b=Oe2NB3C1vLA4wtPi3MEzI5dhYHmzI9uID+y1oqsh5JacT+mUioMq0qDe5252AcLpVTkFvmI2E2DWqVSUaZETjuPPkYRp9Ex2bS8Bb0o3ef8fJpFotacyR5YX77690V9+scL9lO6cmAJLNYdCV4Dzvgs9f2fqX2mGVP3r01CZhK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbQyvPsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbQyvPsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B73C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753017593;
	bh=SLO2eSS8F7j/g65Fw8BmpfrpePo0FwzxlFUT+UArDDA=;
	h=To:Subject:From:Date:From;
	b=WbQyvPsLKAc4NlouJGhC5kBHzXb0OfKHEUPMCOTjcHCkqqz9jxCrQnfZMVRAMSUGr
	 H3kSzBAt0yZ5JD2AddOyaQGPpOaMFhkv+n1szEUbBnOvNWgrlqux6n5GGWUbSxD1GQ
	 DXec/HqBvJfwM9UJHzwiFEdUKTJFUOyeD2F8El+/5VfHW2Rirb+pwCg176cMjvlAcq
	 ZhiFlrV1xJbQwBNG8Mq3PwcxM2riAfIZSqwpjvgyhOAESsxTgshbWkKMze8LP5luGz
	 z8FMhqioGlA6B7j2yDLqjOPcvjzrWn6Q8kf7iuQVj2ycU0E2o4mEGsQziyr2a+/hgl
	 xTMtYTk1MQpAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C33C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301759357.10674.17218860721105840118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e371adb013a3abf9706afc6efd73d5ec52ea6464a8367abae21f126b3ae8ef8
Date: Sun, 20 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753017593
