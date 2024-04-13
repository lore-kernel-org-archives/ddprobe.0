Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544EB1CAAD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712980163; cv=none; b=qLQYXqIji7Qp0cu83wpBsjXV+G3yf7HuAMiRa3Xhw6wtaVtMgtVAnOAewBwSs2V2hYMiWxNlMk0ZsnJKSndki9Qu0LYjeib34LjGb7pxuZqtwM6hwp5HahBvHxNUPDb3AshJM9+lrpvGRkbE/A8w8IzUz/sCV9DzohV/4qntfVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712980163; c=relaxed/simple;
	bh=ol1EjARbUgO5Bb+IoUf1HLx8WkW4Si0HFHIc98n59BE=;
	h=To:Subject:From:Message-Id:Date; b=nxe1joM9lX0omxsMGx91T9k2MrHok6gQiG2Hhg6E/Ybrpkl/CBsZkD3oZwLuBhGaMhcfUcwZONxEU16BoxYbhl8R0OX1jxwgplAXUA57hjrUELksJegPMT7jQiHnbneL8+/cVLQ5dOdVuogXF92VAc+h3Qkc/CHLSBmRo9O0dBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olqbCaTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olqbCaTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D922DC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712980162;
	bh=ol1EjARbUgO5Bb+IoUf1HLx8WkW4Si0HFHIc98n59BE=;
	h=To:Subject:From:Date:From;
	b=olqbCaTSL5rNSyz1pHMrTED5wnDD2mJ5YpAUeiOnY63kP0lVIr2K5jatkj0RMXIfx
	 e+vWRp3VAhE4GsWh74uKpKgSlW+8l0pgvZe3Q3EXBWpCiwxfhe0xq0AE5mR1G1silc
	 WdaPY3SNNMv4iMSjAUs9A45L5+jKaJKwSwjZpmoLQ2cjiVJwTlpIbRyVsWdPEf/B8i
	 MtTNlL/+iSRhizz8prf9pwkPOv5q4jN8XPZsRdXNLCApR81AgVVmxtOGPEEDO8fJwn
	 43qCsQLbpr8CURJKbvORX8a5zJqIiqZafhCKcJqtHAjmuF39EnOzpcRikYdGcbpo/r
	 bCa4NTSMf2c7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE95BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298016277.5285.6956687368639497883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8241a21f098aa60b04260541612ed749f5f81e164c1a257b0bc14d7cd09445
Date: Sat, 13 Apr 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712980162
