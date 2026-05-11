Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E21243951
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778481634; cv=none; b=TGAPTyX05dU7FmJTZv3aoKF97y/P/yzcPEM2DnXHqEM3lGBgK5Y5PZS+Uj7ZWZo4H8c9Rns5PAtztOxUXgOZo+pCIrGbiRdxFJkO0mideduoM1quGqZy+7F5jxv7jx13FZToEdOdkqO/13lQn7ZQp7/bIAeuthtiIOVuoRTQxPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778481634; c=relaxed/simple;
	bh=AFsACxX/+zpcyiNWGYQdgLoBctPszO2Cp0W1mLm9K0U=;
	h=To:Subject:From:Message-Id:Date; b=Y7n9Kz+QAPo+cp3EHCD/tFSnffZLlch641QUeO0S0uwNaxy8UVNjH8mCJakBiARCIyngG0qoj4S+fvCwYI2FxKRhYDjHy1LrjICI8JMkIXDBLkVLzE+flqiY+KvyGIoTsh5EWORyhuRLQyV6Hn301cQ85Uv7H3LcaLEw4TIA0lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMxyYkS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMxyYkS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC99BC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778481633;
	bh=AFsACxX/+zpcyiNWGYQdgLoBctPszO2Cp0W1mLm9K0U=;
	h=To:Subject:From:Date:From;
	b=OMxyYkS6qOW5aBx6QMrVfiv5fObPPXYh6vjgmynuGQ8V9hzfNHGfeZcCG+u20w39e
	 xNbibKhkPPIIX+3MmBeNHEZWEUKlf+P9bErE9RamJooaMwMRJG2ERxYAQA+6F2e1K3
	 8TvEOi9zBltoUjRgRN1xkysEolH5kA6jH38D+PdkPiwvCcT8YPMmleKhvCNxJDVdNT
	 2vaVhrncDd5izLvgW7Ir9jf6/ZJ2scwc+F+S8gqLBkonVzhK0fAE7VB17Z9U2WDHpl
	 iXD/372I3OcbTBBNK9QzZshLa1vnzS8Jn5dmgsWjBj0cX3/diIoAdIt93W9VW9kNti
	 MNLxgk15WHiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8763CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848163374.3961.10252049211662030622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b30df7e746409db13d2ff4d769256851324e4500179719b78e6e0a06bd8a1a
Date: Mon, 11 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778481633
