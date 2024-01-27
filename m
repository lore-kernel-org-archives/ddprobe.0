Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7B912B85
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706341697; cv=none; b=Vg6aNboH4cxJRsxgYfQk+l/JSbFB21vivNrfCuVcimmV8YmEathCVVXejqA1svWNy/BC09hivsJR87B1e/4nzeSMrimS+HdGjOERjL/bxNj7TxRHm0qI9l793tJjKX/qOrAtpGhsORgtmCflV0Zx2yva0RIv5qV9fUFIxcU25gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706341697; c=relaxed/simple;
	bh=4hxvd50ZW/SWnC7S6cHLaoAQwYi4z4M4czX0TVf3USw=;
	h=To:Subject:From:Message-Id:Date; b=uvPrC7dqCbEHAqw188eIxladorZhWviSOGNOcBRcQEn2nQtsNmEhV3ZJw7WA+Odt3HtvXBrM1o0VvGHKU25eSFBO3H3prr4xXJ+29vnNGiPvy1lLAXsBg3bXwMJko/lH9cVbnRkq4F33/o/Tw2Krm/unE9YR1f/i73WVPK5wtu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJXQssgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJXQssgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BCE3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706341696;
	bh=4hxvd50ZW/SWnC7S6cHLaoAQwYi4z4M4czX0TVf3USw=;
	h=To:Subject:From:Date:From;
	b=JJXQssgkh9J2UGxyzJvrwUvI+rNv/b4q7Qt2eY6woCvsZ6SAHiR+OPhjv8GDXZTD8
	 EKQrNupmGg95lfZvLhi+9aZcD5nteWtIfGIcNxBu8bCEH5eBTSZnYbpM6/H6655rT6
	 V9lStD2C/nN1uJc8K73O1ttUPAn4FtDn6h62XFehn870tVAQFCErcomRQAYQxGwcQ1
	 6f2GROM7P3OphHlLLOjKjvoVwVYxWfcpoTiJnp4SL0V9OG9WLZmw6dnDpzLm5iNUmh
	 ZTfmGVjfwmPoPrR/ho3dULHfiIdT32AjtbEUH89Voi2P20R61Q1eK1E6h1Klk3t3iV
	 oMm+UmqaNLafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F33FC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634169637.12307.5165399859023916226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f328f3c61421832e6de8fc3a57d78c69777395a35b9574720f5ea86de451efbd
Date: Sat, 27 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706341696
