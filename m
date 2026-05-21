Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38220314D21
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779350434; cv=none; b=mUpW49XaVPLtNiS1+Nvq9ImPfAZELkfWK+rY64dFxLa3X/n0zDZwfPAuQrRhTzWPnE3ZMOAsv7yosOmMarAAz6CL6cZ/RSQGazULS4AHpaT9rYw9iUzybcZgaXh57kLcxFGzFU7ytlcr39FS17BakVBgJ9b7eU/WOVylVUhlubk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779350434; c=relaxed/simple;
	bh=ogPojG5qPS7IKe1n1I9ynfKl6g49j9LFjmrcrPE6Tgc=;
	h=To:Subject:From:Message-Id:Date; b=i3BvFyj10EDVHjMkQJEzSgStItl/qDFN9gaz9jYe+eWuEtVrk2DJGhX1AvhlfqCgonqptrbui2caVjroD9qBJUGmUGDQqzRl7p/qzITeMzZ/jJx4YLrgbIL5YNbCrFH29Rkda00MGb2M2NbGmGKXB2tuYN2ou5KvK2wVu9j8xWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipq91Lyh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipq91Lyh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C890CC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779350433;
	bh=ogPojG5qPS7IKe1n1I9ynfKl6g49j9LFjmrcrPE6Tgc=;
	h=To:Subject:From:Date:From;
	b=ipq91Lyha4U4V5Z+LCmkTp/V7yBm6erscmYLwlih935GgwMXjJFIGjDKGl1zigmIF
	 WUmx2FMGiCiLXiZz9OhLN5fRaeDnIby0d24xDMeieTDGne36voqx9SOu8EXvT+zdkb
	 FORv3UL7bZEPzffPno3nZBtmhIYcNYm/yagxqhHaLiFi3nF899Tfbe7sBslEPe6rr2
	 Vp1+5RsbCDsJuFxnNgMmLp6RPTuBZ7JjszT34zB1r169Q14XXrw7frgoY2CyDStCrr
	 qGO2ZwlTtM+GovT4aAigIJckdNX1uuTKTx/Tt8G0WhMA0jZxId/itkWaIIHcUs1lrq
	 rw8fWbSrCQrAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD793CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935043376.23139.8736950750868976058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6694950156290b0b7073d1ba72370431433a9ce01af7790381c3020b2adb56c5
Date: Thu, 21 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779350433
