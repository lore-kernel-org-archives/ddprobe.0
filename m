Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCF9A92E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774560894; cv=none; b=XuyU2vgm3xzuF+dOTg8p2YucfJV563HxcnY/25zkbODOajFQdRYWnAPlhwLu3zbVJ6fa/dHAqGjAzkkhGpBF1AgYHAxMEeFv30f917DkpTfULMUpmtWuhp8+j9U3WlbpkK05ZUmUKZBQ8WMauuxeVg0TpTKQ3Hr6FFwsexyha1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774560894; c=relaxed/simple;
	bh=SLd2a6pfTVEr7q/UlbY5siUFzqF6tfyfQLusJ1WsXNo=;
	h=To:Subject:From:Message-Id:Date; b=bAvJ1QinIBNhSygb8mpCKbgK2XJRabyqxA38VUNSlsAE8dXpEN0df4f1NaS5jsgNPMwldHgaymX+SA2dl6+2A7Rtc+P2mK2An/MgTkP6u5Tz6FGqgTzQ4/jwbQcMyoQIYBMb2d5FiU7FWE4wmNeqouAcBCrcykAWnoAwRMkX6MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrMFoCjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrMFoCjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5A2C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774560893;
	bh=SLd2a6pfTVEr7q/UlbY5siUFzqF6tfyfQLusJ1WsXNo=;
	h=To:Subject:From:Date:From;
	b=XrMFoCjCTVIA//IQbPk3yzp63rotL/FvskavwceMtYLr4Yuj1BMFZdErZtGZRr5gS
	 in2O2DUQh+cLV+WV2unpvhxiv6ZkzDOBGVJephfZe3nDMbnsaMpusOkUVFm4WQXZho
	 RXsouz+K1PO4wDogHgux59tYZorItgoH1d8hN+AcgYRCnp3xMOu/omKYaj3rh7jYIq
	 tvazpUyJmQpaAPQWxiS9eBvAOvjby4T5nGCMya2Kd7EassJ43sIIIeByO4I8w0LZ0E
	 QYOl+vSeaMpxfXamtHkHpRT9E+Km8kYDsv2QGTXP/AzVIWZL/R0OJFykxHsD1kaV15
	 fGp3+INJ8zIJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A60610AB827
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456089362.14752.6046017774045263842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a9b8ea05b1c1ba7cab47bfbea0cd8aaed5ff53f82c4c27d2a937752e67ed32
Date: Thu, 26 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774560893
