Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7501A294
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767060234; cv=none; b=X+Z/cWqSWYzLeOV5uJcwKpTXR4xJfwBV3lHoFGZbPr/ANPXaUjF2QUL7G04NZIYL7kOrKoWjYsNeDSRPt36dUIsmt5FRslp0W5SQfub1BcNIxBigb5eqFKDU6T5szWm6fpelHvTpWOgwJXiH1N7wt668q0Un5T3TSAAVROqBKYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767060234; c=relaxed/simple;
	bh=79oIbqjjobNQrc5gvD2Fe+EbJk5jgA+pehd2PNTe1rE=;
	h=To:Subject:From:Message-Id:Date; b=ISfXFnDURTWhwMc8wsvRKDO6Rv1em3ksUQhsmLFQQkHQsKYjnG/rr7Lrz2FlFSatJenVbS/YU8CiLcw+C/wnaHmAn/UmJdcJii9Shj7QFMUkiPw1eXtazBHND68g1oK5Hhec0ew/Tb5K+i1v4Ej/Cy1AOT/4dV1EKaccgEdKNj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFyf/N7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFyf/N7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CEFC116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767060233;
	bh=79oIbqjjobNQrc5gvD2Fe+EbJk5jgA+pehd2PNTe1rE=;
	h=To:Subject:From:Date:From;
	b=HFyf/N7/6UihvRMbihSP4LpHHIIOOuoUDU3WwlqQtDwnMf8AxLHLLvMudTsJXgboW
	 E+0pUZReYgpQg5kvi/UbE88DuxgUeF3tTHdmh2CqtLIEhdgbvfACAOI5vLFqU0EsCC
	 zpHBTRaJWK21JnnoXOJ2p5cNT/KW/dLDqd2gzSBhgAwhdaQiL/GsWip09o7Epe5h3c
	 GE+9+bv+FsPxmBaixfgdm6/erILsNmjT0oibpSnaDD+YtEeOeBVTfa+qRhwJ+yem1q
	 7MXefIxFYoYJ6cpnqwjUGe4vfMlNiAggESRBQHdujYf+bQQ1QPlKOdwF5qNziqgW4L
	 nio41/eNFudlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A67E92FD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706023358.26175.9357728659005854421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99863e603649ab4ff268abdece3226ca4a59c60ccb2fdde9ad8dbf73dd078e2
Date: Tue, 30 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767060233
