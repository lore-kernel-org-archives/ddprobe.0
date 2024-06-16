Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B88761FF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718524703; cv=none; b=dEevnoGjPruXLl7JmL7HaiuF5zfCWKHfXOHYHlYzfhobJbCJ+y1Jn/tCuN0e3ZomGNZPt5Gn8VzTkMKQ/mqXKZiPYkPNwshh82GrpDB90nTIyq3+HpBlP/ju0GbhApIio9G84O5iLrWJWB2rEfFKFRyzqhVY3TxubBJ/I5Uidik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718524703; c=relaxed/simple;
	bh=My9I8EoJ59XviUTC3Zgm01qqHfZjd9jdwDTNncO98sI=;
	h=To:Subject:From:Message-Id:Date; b=ut0/tEHKytxGqHMM0Gs31of6qt9mVhZK0UwJ+ZIi+p3eRHFKKXAmtctckaRCkufT/xkvCQag2phynCvQkR0Oiq+FOv6AUa8nrgIsoOJVPFAx0iVypLLscLrHv/J3heFH1No6GiI+gtfQfzDvwxvKngu+wrE6YSOZKRIUOH890MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgwCbj2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgwCbj2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0495C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718524702;
	bh=My9I8EoJ59XviUTC3Zgm01qqHfZjd9jdwDTNncO98sI=;
	h=To:Subject:From:Date:From;
	b=GgwCbj2uxh4Df76tB/kJ2/x5kddSbL97a6utDd0QQeImJX9VC79N/MsSrRlOz1kdu
	 iqO383XVFANdNVQyqEI9cEDXBPVgfuMTQodnMRtQk1hoWypTCeTtBDuGnZ577JjUGT
	 PXwqfNiA0D1UDFhe5xXVs4WCeAM4bDcgKPi5saenjmnxuGWEGgIaN2JLT9exTxM5XS
	 fEAgQNnhvN68iZklBRqru4kZyj/de7ruhchkmIHDI7mqgKUnxk90UCWf7A6zTIFN8X
	 Z6NqZ1NkcquWF7ClRcGkwVekdcBz1Ajpod0Sq/dv68CkSrX/T6sxwTvoxTbKk0u2rz
	 T5+RsbMa0V8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD07FC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 07:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852470280.12700.15748742492986219688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5932562ef6bb803e3c1da211fc5bd33dd70152b8d035d21ae38dd5695538386d
Date: Sun, 16 Jun 2024 07:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718524702
