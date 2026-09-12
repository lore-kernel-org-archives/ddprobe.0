Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF182BD59C
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789257034; cv=none; b=fv4O+8jim2UbaPnRZc6T+RDPmTefxs1NURhe92bMK1x/bZIhDnOQ/bxruwVIqZhSXGoYAbxGBitNjBKKZQGkDCSwWIhBYpzxwhZt8Gq2JDPudilpZq+K3FMZrUTEFKpoHot7gA/qqbLUjNLCqU+tEncTGhnEKatB4k7fLr3BVok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789257034; c=relaxed/simple;
	bh=slrhDoMVu7RLEJjLKUDwTea/vnKfR2yyQEuvj9wFNyI=;
	h=To:Subject:From:Message-Id:Date; b=t7axc8JlnRH6hT5ubVl+IKhjb2dyAnkDa8F9BFkgQM2H61jP3u7URfLRQbHZbXIKYbel9jFpVppfN7u8O5VNywzikbsPQreK3BDdEskKfH9Xri3R9rxGiNuHlDpE4E0YDI0twpa0TVSGgZIcAQvfV+1a27ndpYBu7regKO2mohA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv6iDxLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv6iDxLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7095C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789257033;
	bh=slrhDoMVu7RLEJjLKUDwTea/vnKfR2yyQEuvj9wFNyI=;
	h=To:Subject:From:Date:From;
	b=nv6iDxLQinzkDCk28VWbF24FWEporUefqM/13xaN+ujQFE1tBI9Nnr5xDNcHF3BMy
	 zZzomxHELnotzF2YZTnG6YyDtMi9ZZZ87yLWooS3MRLDMI3RD3s4n/LBvTJE5cj3Q/
	 8zw6wYEND1X2NVtIoT0xRSo7HiMDGL7GLXXbrygDrwew0G+oOnP0UhWw6aNVRGqqgH
	 Mh2sSipv5er3yLSdbmzcIsaKTYU3uemZZUWck6MKpJW2BR7dSH3+xFENid3bK+1UdZ
	 0p+a26SlrNpBANnYV5BpEXWjxp/xYWpAdsliwCF7r3pNw8kPUHBDGq6wmK9JBH79KD
	 LXRYU6WmJoGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFD2C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925703368.1119.12324968449348729032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9f97ab6014a03953dd30f67ff9e01634767568376885c5c468d21a9a578956
Date: Sat, 12 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789257033
