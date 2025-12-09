Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F342272602
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765264374; cv=none; b=TwgWVo0H/zhuPXnbjNAxIeJcvUTwSsbN2nVY/E20y+xX9sCh1CCQgS/rMomBFFUxjYOEpBXYZWCCy/U6MrSNfWMcACwChyvgJLyUoUViTjCMuhD3cwX5E9BEinbc4/aTh/dy/NgDBHTi1fXtWf6KQ+RJ4u/XZChYmYFU8mHOcRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765264374; c=relaxed/simple;
	bh=A42ygpdYQkxCUYoMfrddWCrrgR5mgGbAXwnllAV+9KI=;
	h=To:Subject:From:Message-Id:Date; b=lg+qWKh72DU+/PtWYylHY9xpv3LFm8kMsVg4qR/fh6oMvo5D72n+CdeipvVqi53ZE49+ONTEsMbRT7XGUQYGb79jP2GruQYKznyosSLnj6LujRBpNMGtdMflTFDHA0/QvqmX+9h7vGpoUQDnG6FTekzY7cvXgZvBd76ZfdiDuY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW190lxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW190lxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC20C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765264373;
	bh=A42ygpdYQkxCUYoMfrddWCrrgR5mgGbAXwnllAV+9KI=;
	h=To:Subject:From:Date:From;
	b=IW190lxmdHHM6or/Y0hFygz8ZZbV5L0IGLs8zFrdWN5iToyxPP4VkXIx1ba/WtF98
	 YdLu/ZW9TWuojFQA9PUGcxQr3Pw8Mm+VTXtbqTQ++hLciK6dn/G2aXVAUkiXI7JV5N
	 n0wIjFpIBRQxTAbrwV/RbLEBrk74sXc5P/sSPdTvpzEIv3z6jCe99/TO7CNRFnmBvf
	 lE/3FIgi7C7D8G6C74e+jQmzQBTf5Qaw9Yrrr6RXx19S3pkIp/L0rehfipXgHQi5pr
	 cLZkciYVOPHoRRmbBklYC+QcJ8/ygekLiwxOKK00JUSkJt7SB+7LwkmnQSAKu8hExE
	 zGyyS+0d94rOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90773D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526437358.5218.15157014300756687169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e3e1c41b7810304461ef6a9e9b7fad7629dd68820ab2cca46580f665345443
Date: Tue, 09 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765264373
