Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0003446A7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779337235; cv=none; b=ppG8rehDM8NRNrdlAAKdds0vYTcyPocJZ+PtyTMxsxv+zMZdjr52kfoPy3BWdF8siubLIugHYRlDNm8E6t7VONrpvx+b+2W+XZlBQHV4ZwDEfN6Jq3+ZqcSgn4JwCN+5/YrSzhGbRUZMZQRViO/rGVDdDf0hLJ8McvffJ8hDPTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779337235; c=relaxed/simple;
	bh=eMX+8+vk6AU3C1H+TJmS9MiCuX30gbkBfoRYHMU8bbo=;
	h=To:Subject:From:Message-Id:Date; b=lMCm2SAgUP9giEtBM/dMefC1EQMrIvoopZ/jiNbQvCzmB1/jX/yZTRiIFLrEw89fwUov7hdNI0t3dE9/P6aXdpssuOHrSoqHllHdcy5fJ4h6czQHUZoAMEf+na4mKV82tqUOF8jYhx4H5WaZKxOCACLr6SbPQKrGZqNRmylWDeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBK7O9Yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBK7O9Yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0647C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779337233;
	bh=eMX+8+vk6AU3C1H+TJmS9MiCuX30gbkBfoRYHMU8bbo=;
	h=To:Subject:From:Date:From;
	b=dBK7O9Ytet8vNcsm1FMwt2U+F7Ey50Yjai0ikQTxYU9hLKbHnvGx3NNb+PMInhIL6
	 8XTTJ2z5Mz/sJ2+6I/cWX1Qx7SEu17qstH1GtEE8oQbW70nDGPx/5G8OPlgPrihW0M
	 RqE4hoK6FYH81q66jLGTtchkqAXAg0Y/WPC8hmY4YJ483PSii8vGzxJrKsSTJT+AmY
	 hhEQcLi1M5REriR5kB73Gb0yVVIjn3+1ZW6r47fQU2ggoZDlV9xOHJMhGYv4q5lwx8
	 QxoLuM4HYURrHGwSrTAjuVFxHkD3fLYUHxQGk55asZT9c7KtNRutgdZR6X3l7fJtlU
	 jvTTrI25AF2Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39FACD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933723372.12312.698987891215371324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e544f56c7b8bcbbfaf3de8f2f23609f00fba5cb2a8efe523af4e173fc2ed2219
Date: Thu, 21 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779337233
