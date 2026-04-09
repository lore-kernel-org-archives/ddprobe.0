Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8B42BB13
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775696134; cv=none; b=maayLvykPk98ilO/s69GkpL3jNEck6KgOFHa52HQtLhl575Ll/yTugmrqVoZ3DzHxs4IblQUaLwoca1J13vVI0XFDrwLimSo2O1dBLHzDOkImCYMssL7Tv5ekb/H4dwUdgne2D24bWtFqHAWOyJkpe+zDNTVsN7AFmzwIzYiEJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775696134; c=relaxed/simple;
	bh=A5Ooc1PwY4SQzYhfLEpKv9YqAdkIUIHlu4w22fnNKJQ=;
	h=To:Subject:From:Message-Id:Date; b=DS/ibnV9Wglu4F6HD/v7h7UimjUFSKA3gxidyHTs5+j6tzaHO6PR0ParxxUAxKagjvyas2xTjFOW7PhFt6Sct3EIxQc0X/Lml3rKYUemusVWBPrS3Ko6Ssq4NLzfK1msTFI7NNL82WAU7jK/ZVGJN1XRVF+3afXk/xndYm3Kfhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zptfs4fv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zptfs4fv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF62AC19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775696133;
	bh=A5Ooc1PwY4SQzYhfLEpKv9YqAdkIUIHlu4w22fnNKJQ=;
	h=To:Subject:From:Date:From;
	b=Zptfs4fvxD8q44SwhhYcIX4BdVmc1M39MnuJ5PmiCqsVIXqO1IxkHlVQNikM8YFPO
	 01Qw8G6tf7CMyOQMu18Dn9nX9tMEkd1lI42vB9fdnaYbJPH0JJJ9eAPVy3fe+jhWf/
	 rC5iVAZgUKdpx+AlPUf13efwrdaUmx8YKIHBYsSWbfa3+JsLi4r1fTXGgufAJqfIQj
	 XX5t8/MR3ciLodKKene/oLUJyBJ9L9DDllAseSode8bXHqgSvneSMa1I7JxJoQbY/U
	 sUBz3r/4hWsZGWFQa8g3gXo6VWZ7kzxMd1iShvlwLiksBk/aCuPyD7kAxyLLJjWhBb
	 b4AHFU6dDgiKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64710FC464
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569613368.27466.9816624017947851102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac68e4093a17c1a9bceeccbdbc629d1acb44f3b6e8d5507f98f00b91010baf66
Date: Thu, 09 Apr 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775696133
