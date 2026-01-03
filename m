Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1357213D53C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767407634; cv=none; b=oBInTVDHRpjKYaCkGU3d/0vvPTmA8VnKeZ/c7amF4ukrxIky2GUxQtZAu/YsbXpEs5EC+HLvOPrXp9W/5MjmB9GsRTy3Zn7zQ7nCND7tSwfjWDtCGhZbvSVrqX+5XarSiXqZjAY9enEi6clLSxfr7YzWzwb849jg7sq5iRe51hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767407634; c=relaxed/simple;
	bh=TzfdrUIj2dQtsZyC0jrd2uPeHhY3xSIsVodOVhbLeqI=;
	h=To:Subject:From:Message-Id:Date; b=LSaa4goP4xPOkshdw0sr4MaPC8TiqtJN2dEiIXGMvCv81JYylVmUjMsKUxYkCpqWtzuRW9P63bwwNxSgXDImSkSS158vAxk4mhrnVcP45rcDi4c5Y8J4AiAgpooNyKcy/gsMI0eGC+i6xVPizMXcB2CVHrxuoTJugCI2puxjWnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfxGrR7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfxGrR7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A654DC116D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767407633;
	bh=TzfdrUIj2dQtsZyC0jrd2uPeHhY3xSIsVodOVhbLeqI=;
	h=To:Subject:From:Date:From;
	b=PfxGrR7nC8o9zAFkyPNikwx03f22jpP7lyFw66C3IEWjQ2G2iJcj111a3fxxjesvV
	 DN6fN7PDzEW4qZawFuofU4gTQfiS89lYImiEfv6xvu1nX1KM1sumXWi5m2+YVZFc0y
	 pqCK7gR8dfLMq/4SsfMy6MMXSzueXNg7INzZafxhlUiU8BAckX9qx+vO085weqGuxJ
	 521ZE9i2zvkkDng6v+FdeojW5LsPeMOQnx9fQ/Yf2J+dlaBCkbC2mBIcon6/2m05Ro
	 wJZfMaQHVwuAzNRHovZ8UhnD6Yix172XypGxSFKoHQieCFUG1z6AnFrCT+KTSI+MH9
	 UPmMLRevz6ZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94839FA3727
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740763357.6794.7684191867535804329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe7b1ae802191197b99ad495aff0d6f183df1163c02e8fb0a58f5ea2c48fdf1
Date: Sat, 03 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767407633
