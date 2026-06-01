Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515673DC4C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780333474; cv=none; b=a0PtW0Lg5wwfYIyvnwWLHUqFgy6NhacV6jYZFewvdFXCEM+qylz6xbDlyCPTg7hZ2X8uXtNcywntGmUCP9M+I2xqNtLejZCwmn0wPeI3MjBvtah8hZzppKnIWDyseUM/+q8xoV4U8oPYccyKp9iyif8GR48bVyHftMRj6hBpZOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780333474; c=relaxed/simple;
	bh=E9Rp6Rg7P0aTuExwjhEaOkUNdjD+PdhEA7ltcfx4eW8=;
	h=To:Subject:From:Message-Id:Date; b=jcgw8PWTs2O5SaV0jd+e06695YLvU5yt+JcP19sXNnQmBtg7I0qMtgNeGSFNc538tG9UrQuTiLPd/cx+4Ka+8/EYWBUl9CTVXiHEG8/P0Uk28BafCKP7iOjEnvfDu2vkv0fNYdy6j9fIbWZsoRG+SJbRNAu0ejXxWOEAEis0F88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRKhN9Gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRKhN9Gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7924C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780333473;
	bh=E9Rp6Rg7P0aTuExwjhEaOkUNdjD+PdhEA7ltcfx4eW8=;
	h=To:Subject:From:Date:From;
	b=NRKhN9Gsi6pf8PziNQmf6kpfE12j+q8Tb2kYeuLpioeGFSCDRim37l7UmOCD+OUBT
	 2R5yzG9aSdzViZ7KduNeqOliOojb23MJG6Yx0Co02QNS05yMF855muQUB+sY9yIJ9y
	 o2dr+gvkfLFadOw7w/DWYR55imgAfYc1VH7vb7QX6ODzxOojN92D/eYdBYJ1AZGLQo
	 343pcMB8RW2U+kKCm2H8G4M3yyUqj1aSyYEjIdyCabJE6QURNAVhP5XjIEVRljLIGO
	 jojDNCs7jlFtpK4m1fkLIajZExrwU1I161wiqwsa7e/l/pvp+hR7zAO4fMah5VaX+b
	 0uPUjWQZlkwwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBAFCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033347376.10300.14606662635795233854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939ba35694ccf48ac5d5ea8c291c453f882de61a378b3ff60d2dd55b978af94b
Date: Mon, 01 Jun 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780333473
