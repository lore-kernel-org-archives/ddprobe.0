Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7114F145A11
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715571143; cv=none; b=Et2FU3V2LvMLgNF0C5KLKnHFApTDroPvd01KoVtFN5q9wJpA1nH/W86OcjEzGAO43ais2xdm2IVr8Y6JvWZOnPMb14w4nuOngrlsvXj709Nhi7vsRl8hw+ILQ7IMmrQNEJqQ78rX/1UizaA+AB42xyKmZpMkRxxu5fUdlZacEmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715571143; c=relaxed/simple;
	bh=cv661XedXDps8YJ1MAZIZ18HP5vWuPVGWLFQZuQEvDE=;
	h=To:Subject:From:Message-Id:Date; b=QojQnkEq9x8ZvyoqsveHGal3zcIyKrPhSGyrbV36PvDc829x01dtYfUG1z5It4EbRnojMOzm0nm1Y5+cTxLzA1WdLX76OLqxf/DgSP0xbv6MhSZrYzxpeIwjx7zEwct47jyPs7LbM1CKCIHz8sbzxU2y3Yuali04v87S1pSk7F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swmqQN3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swmqQN3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E063BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715571142;
	bh=cv661XedXDps8YJ1MAZIZ18HP5vWuPVGWLFQZuQEvDE=;
	h=To:Subject:From:Date:From;
	b=swmqQN3g5Zx2hlx15zkNCstyYydzGukzTlRXWnkcQt1OjsHrdsBtT6j951Q8K2/Z8
	 NTZaJBM7ByVNpRnytbA8XGEjIZPXiLzOKcZqDp3LaYAVhGcF2yID76kDtN1eUYFWCO
	 3eaDHCn9+NWsDe8soq7VhRxAEYY57kDnIt/mtLAUX8dlExa6HYjgYSM8u6RkwhnJyZ
	 n+IFe2M0tC/mKNTC/aEE952mibDtfOne5c273Pc4UlsB5en5BbSsnxVxIjHamvIppM
	 CcN46w4T/rUHcCoPEpGMZ0X3LcZLyLDgQOu3UqjXgsaVhLw4AAsXYQP0dWtwBm8Luq
	 52k0T9DLEcw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED74C25B5F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171557114277.1514.17779981398101541747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18a7c572f9152a86a25a22318714e131d15d3d1c122c8ed77688a66345117c5
Date: Mon, 13 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715571142
