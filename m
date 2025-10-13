Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BAB26D4C1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760362795; cv=none; b=YM1XyBTwxgxNftwRtJussiLbp9ePprHTjM0r6dn1ZY4w6mvHFLt6hGy77UUZ8OkenC5+oboChxvpNIt6P/EcfSap5GtlS8G2SSMPqqFkd6AZjNZW6SR5m2LZkUkZJxtSDyflUuqZD3+YqBDKxNmBR1ZK3xlYvNcmN+XJOTGcdJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760362795; c=relaxed/simple;
	bh=I7zweT1+i4hhUQ8YaIpuXagwsehmsuSFXgdqjI+cUGU=;
	h=To:Subject:From:Message-Id:Date; b=CgB8+OnewrphZg+02rc5a/qlfanXEXKdxtlPnRfxpeZtZY0JnLpVYgQH/NUgRgtV7NFooASjq3pndf9YwlZMZn/n6pGMaVjXHTHe/sX1x+vUo9Kf7E7/8xfWQJImSraMNnKgw9YZLiOHOjPGBnOQgD7wNk/Aseu1PEaUAZ4MgqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLERODzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLERODzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19BC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760362793;
	bh=I7zweT1+i4hhUQ8YaIpuXagwsehmsuSFXgdqjI+cUGU=;
	h=To:Subject:From:Date:From;
	b=iLERODzSCsR/tUJYH5Q+4isCvKVHKdYMci1aC8JKLkG9VgwK0mHQDpYi1O2EFejnX
	 aS808cV9ItxsO6iV4ifWpRy2P5J1k8yc8b++i5jycEEuGujZKpniBgRSOMe7u2kxyk
	 3OWhPUDrGxQC0YQvw+YRXRvQFf5aobQJBMPOiznBJYV0XHDpCyhuqNcObkiaSt88ez
	 50DBIdb8j3T3umJp/IfapfLjQKb35s/b6IUPIRNIVNwuEU7JpYz6Vk1IWyp1hVyCBr
	 SNpRdANSlm/Kd32qmXASb+okqZs9dJac8/65A3F4B5YARgFRa2+TBawnv5rwiFeq8b
	 yi4cRpQRCZ72w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B9CCD18D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036279357.31795.3241321337604771874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce58a496a9cd58321bc4acec959edcac90e565c8bc01f2d83ebaae7d5e2edb7e
Date: Mon, 13 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760362793
