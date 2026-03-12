Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93BE3264C3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773324293; cv=none; b=Bdonq9yl1Qtiir+WjzVUHEAaxbQoYFp00v8R28cW1gu74Vzv5gZ5oGcCsjMZaxnN9N8B6VIrQhVIKYmvF87l9SCVxojWoUVTitp8tWOFuCFlGdfdspwiRSSTMECTTcK8t9DMdXotSURROgqF9kQ4sF1UTLJB9KEaZ/xS/+SZH64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773324293; c=relaxed/simple;
	bh=GLPoAt9vzv1M1OwpudSswLHrhhm9o1DuXCCmbB8qIKY=;
	h=To:Subject:From:Message-Id:Date; b=JeL51UgKbU7+0e58DTwMSgIxgS3AvWWggN50PAnP+EtHYm/iZXr7oCp57X7VgFBvSBp3Fyid2lKv6Sdl/SGyk+eMxyBO2yjm3MyWBmVRllA+/aUhEBR/v08foJ935NxilEi/DQlOlvMs1dJEL4gAVvPz9Q9/hj1eVmVKGw2C3hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMIV4tjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMIV4tjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC44C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773324293;
	bh=GLPoAt9vzv1M1OwpudSswLHrhhm9o1DuXCCmbB8qIKY=;
	h=To:Subject:From:Date:From;
	b=pMIV4tjpWQT77b3F12i+zc8tcv1P8fi6lnwzcJHGZ7Y6My2T14LVFgoK2EUw+6ARS
	 2HqcM784wqgsPrzE0Y6AiB7Gn2Al1ki/3vC7mBKGtxYU+eYCUzdsqDUcfcWkSH4/rb
	 J18Mtwvd8zxa2p/8mdU0DRGtYg9nGBBJicuSGK+guJjXzUJajVqtRyfKLwkZHdLf0h
	 PE7w7u54vOIi5f6u9SjTMduCrWXBe/0ECrLC0tbpwkeI7OLXgyCkAiQDLn51fOV7Ua
	 F2EJVcxFGKHTIRUKBvLWPnGTt8d7ajIUF26t5G1BwVxV7A7VCM+Gwsq/0GD6yi+OJ7
	 3sbZy6dotJELw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040F1067023
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332429358.21128.5465647140180627373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcc2356dab5033ba995f8e803104679452f422ec969fe9c883450560ff024b2
Date: Thu, 12 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773324293
