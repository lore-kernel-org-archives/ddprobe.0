Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCDD24B28
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787184634; cv=none; b=EYeSA2Dlk8EugpRatYQExIYrOueq7cAT+svMh8W671RKUCDSRQ2XdSqqJjFhKlo3peVgJCNMnexjYqlGJs8ziVVNQHnQ0vTuKhn6xA6C2IMqZRag5LNCPZT3427l0lttxcavYnbG1QJNh5oVfSpjvwVnvka2TdX8QTz0mAyCerw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787184634; c=relaxed/simple;
	bh=FWO+hsWOTxK5iqy+vg8BVwyEEgMJ7fREIyIjOe+R4JU=;
	h=To:Subject:From:Message-Id:Date; b=ZjfaRvL6vndWUMEbyYR/jD8KqsbN1X+yJkoLC+4gNjWc9HybU9IcyhpzahQwCUNZUAJWlonndJmgUryHvyzwpq0UcYPsskLyflssbM4ey3llaio1OCd9JeWqrxOwNcP+5eMaFl/Dtfd0rrdldyZAHgwJA5xQauRRQrY2RRnQYfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNOuxOD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNOuxOD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB71C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787184633;
	bh=FWO+hsWOTxK5iqy+vg8BVwyEEgMJ7fREIyIjOe+R4JU=;
	h=To:Subject:From:Date:From;
	b=mNOuxOD6MF/Gkj5GZ/xJBmsnBYxOy3s/cndnbsJNkl8v3JNKtgNDDUhHG/vtv2W1y
	 tJMGfRnFtmK0ieXNcHC+UhOJioRqTunKoG9vSPMZvEcawaACvkpKZZiAerWrL3/iZf
	 q+/qiQimcwqWjveh1CJmlV/HjepAlg/4Yegb6n5O1dqdEZgrUAHwemgqBqXlpCsZ3v
	 57NB5SC2xd0gPlK1u9olfUjPgM7oA8ELHdWBh07nRxOcui7ACJ443ovF+q7cz/se11
	 ri8qHi5ELK6eRLBBEo+obDTFXwoXZhAvcWMkXWK86PsIFSTYIz+hzbrF8QXZvgUwd6
	 5jBpFCUcT84cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4442C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718463369.13748.17837373494089266703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952bdfef34726090fda7c58a011f5fa75df7f477383be73719df0afccfbdec08
Date: Thu, 20 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787184633
