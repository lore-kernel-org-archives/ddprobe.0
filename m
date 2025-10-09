Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B1D1F7580
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760032194; cv=none; b=Yp6HidSr9mb3RQfpAkC2ig1FdvPgzRyiWdAglRN/8vU2qlVPJpJBMm6iHWnD3OhrUXa/83mehOq6YNy7/bjgyFlA2uj38YPL2F8BUxgkEKrDyLgyBvrmSgR7scztVn9aG9RqTRgeU+b8UsTxoaXttxUuZCb7gMvMbB0/WGqm2Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760032194; c=relaxed/simple;
	bh=ay6/Ld/T0Yenehvhqqw/IXSPP2F8lppCm3ZDfuqqnas=;
	h=To:Subject:From:Message-Id:Date; b=hUhktUMj+bB2TeWAdcgQf+KQcqKJ3s5jFKo0K+MJy10IGh+20A9mn19giZKV9EsSZ2E+c+C4D85Roaa7O2f0jLOT5JYVn3gxuomrAiI/QSmehoJMmHDpcgsftCPGSfWMkDMjsONsumNX/IvwzRq4rTQUu61uCzBxVEF4AZCXTQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYNnLtak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYNnLtak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F121C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760032193;
	bh=ay6/Ld/T0Yenehvhqqw/IXSPP2F8lppCm3ZDfuqqnas=;
	h=To:Subject:From:Date:From;
	b=iYNnLtakZH248GNkkVJOS2e/1mz77Bp7V1L3njdTFv9pMM+qUxRMKUfITVvTMM86E
	 4Sux8Ric+SWWOUCWTIZR/D7KcfSXNtGGgoDCNQbJpYEX9Z7LRXYI6RPsVyCrlUFQMA
	 Y7hfS+iYjLOvpDdASlF2uzKzv9LWG30FowoC5sHoyMfM2JhAvTYZcI2VHY5OZ4IPY9
	 LMy7UgUl8F5jucyoQ6z0853WfAUO44cSrPxRU/SOPU/n8AqGt/mibAFyjJtdKHHU6J
	 25Db1AHaUz0CbFhz5f51afsyp96TXaQ3UpTKmSE5nrMd1g9ypqcXsTuO9bWCpAvJUp
	 rv0hq2FRtCj5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B7CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003219358.5511.1841389257611185945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52af92a458573b74590983bc553e0ae411ebf5e5d5c7c8c2f086eef0d32db76
Date: Thu, 09 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760032193
