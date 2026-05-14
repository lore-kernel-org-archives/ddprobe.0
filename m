Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CBA23D7DF
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778754634; cv=none; b=MV1pITvoy+KMtV1TNy9e4LMRZi6gNGmDhDYNzQQym74cSKt0DsfF6YYWrh1GdcaZ554CHa+W7HmyuVXeDatjU74f/KKVnP+E31AsB7/ieHjgZOFkWP5pWFox/Qrn3U1s7kA4fUxRnGTLkSpB5g2r5otiz2Eugb6XJ5wJiVIpKiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778754634; c=relaxed/simple;
	bh=81J13wDOiOrVUalEeAsw9LSqDYKA9wfNEcAx+FAZzRQ=;
	h=To:Subject:From:Message-Id:Date; b=Irm/kN3M5QVbAFUkXspt7EUH2ICUQxlimafLKPJkiWZoIFX74KRwHs/G6W3G81HrYSQk+XUjwoP3YCi1AevsSLgdDv4424NgWpK24Du2A0+KzdNF9MDT5zTgvPzKyA9V6lQ39+qBxmti19om3j0h07A7hKqXde+7PV5B0nDhB0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMaLeRlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMaLeRlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF6DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778754633;
	bh=81J13wDOiOrVUalEeAsw9LSqDYKA9wfNEcAx+FAZzRQ=;
	h=To:Subject:From:Date:From;
	b=GMaLeRlGiiQfkC+pv8dkbpSfc2DA0x+LU/XpK6zC2cjvxNFjukficPVn2Rlze5cF3
	 AgG1I4lgdfH3T16VonypoqPeHtPDiNsy4hMPjfiyrm+eA9yKQcPAE33y1sp64xf62W
	 kp0E7lT7Q+AJnM8Sar2QbrPvkphIXA9sJRtpHHJeEBpjZS069HRNzCjBN4h+QNTgBq
	 R+W4Rhknu+mPriPJ0kaazxqU15o7ms7Hm+OdZVPlxw/TxPkqgba6MMyPW7LEO6jaBU
	 0S81G9baCl7UDM3T41DNRi6jkCMIh/v54dREN9Q+yy6F6ZQDASzlFIpUKebb4pdcbo
	 8NYA4F+J4sjgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4DFCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875463369.22328.1046601370058226688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f60a4c48037bacffe4b80a800f3606d8c241526c174ee97590edf78825b3d12
Date: Thu, 14 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778754633
