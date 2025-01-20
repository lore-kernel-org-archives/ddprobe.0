Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC06193
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737331554; cv=none; b=lfH7+vGw7EDKTroRucCUa+issjQrKFKbwJOCc6jcZxHQpq7Lh3Y5YWYP+k/qLBqSDXzqBf558xU8s7zTghuru19+Ceh/E80eoY/4agD9nbkEtUC0oLsDTNvRH9IJStJJSInCbmrE4JSx5TR2FVh2o+nB5seMzrjToViL6ngY4Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737331554; c=relaxed/simple;
	bh=25uaA993fz0akhjpycfBBzljyKAqHg2SXDegkzM39Xo=;
	h=To:Subject:From:Message-Id:Date; b=Tz6xd2uAFF9ABEaS3uO4vjnKhXs1P+FAgtkTDKQtaL++sQO53h1K+AMU8s/yTIrYFQbqf0d9iwnKTo32FX2pMEjIRBfSu7qKWTiUUvuou4pMHmgL8XwgAUMANxhoAiQV4qczFvNSyBR94tFpTKneOA5KhzP/+CmVd66mwWKhoY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoUZazer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoUZazer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7B7C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737331553;
	bh=25uaA993fz0akhjpycfBBzljyKAqHg2SXDegkzM39Xo=;
	h=To:Subject:From:Date:From;
	b=WoUZazerCDfVdB+ecNRbqW3733ioqMdnHC5KSBKZIl8MK69VzTOl+KoT+1Gk+3Uc7
	 HfOXqafYthbrEyfX7ZRwwjJThUqcc2FMFOASERlFEXixj5OHgBSODRfqt8E/0rhs87
	 qlKASXTvUeb/AkPp9MDd0H6EfwsQ6w/7Daq/eeZSq396JDnCYg5On7GgFLyormuk+Q
	 UEXMcqUhB3kNMTXuyRWGWaTlHU2eS4Ecpggf8h2s5uJf9j5TH1rZrRcksu0ABS4OqD
	 LtbHGIaIVeGLq4bEdl1hW1e1dG4bzK30iCvfTiSlsN8n08U8H7YMuc6i3AW+5FPsqH
	 mRbx4lQBe8Ouw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950C6C02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733155359.31567.14339796954982649147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7203a1cb6acf192c9c5cafe6f11ca0b60f0cd26e079631a35a0a49f42b401293
Date: Mon, 20 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737331553
