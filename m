Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72686146A94
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505723; cv=none; b=TsPsdIgRJnYGA344WTll+oE9cc32ZPo86tu82p6M5LaKdYXqJsWS+4jcTf7ID//4wwrY5Wy+SHGkQV8X90105/evexBK6jvbIvuBkbyYji4aUyAtGJlayNffg857eBMzCMIQFazE88Cmz31okEhwJFCTR3fpZfTBvrfin3A/ejA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505723; c=relaxed/simple;
	bh=bSffrnaMOimhCeG/nzuk1VtM6sKZcWALUi1jlNqG9/Q=;
	h=To:Subject:From:Message-Id:Date; b=NXen/iLMEH4Dkb9uRjjTqoganKfsUAnF0Uyync7idVPuepaz348DvuyvtCgyYku2fH0frY2nS7vQoIFerTkjc7SEG96l/ShVjTvNRQ5l7yVfA/XwcRsTw/hrB0bogIdayysPWtc8iixIKmMnqwoDO9zQoKeJ8La8oJ7sGxSmn+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLw7A5+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLw7A5+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 066DFC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717505723;
	bh=bSffrnaMOimhCeG/nzuk1VtM6sKZcWALUi1jlNqG9/Q=;
	h=To:Subject:From:Date:From;
	b=dLw7A5+iFbAVrIs2yuczWN6ZkgTxPm03tKhx8DHtz64DZ1/IQ6unJ9qePhF5yxyXk
	 Wh2cVWAM4kWNnWXnm70LCDGW9BLfM+uEFJeiy1Ob19zxdX+ch4570hpxSqHk0KcsDo
	 lGZnSn42afqDPhPXWIDYqmzKRGt0bK08N0NH+oTFKt/a2Xml/WJgzMhh+D+SUFKP+6
	 SCmzj7C6JGIIln2qYPZBmp6kI1B8LrLtixp6EbQgCervdbq0F/2QToIrD2/dFZdIYD
	 yWbDtJfcK70HjeSC1g/YZezgS5h8YPDbOYkDjUhCXUsCWXBzlEM4v1c5k8sliMDs2Z
	 JwXUesoTTNCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6113C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750572279.5295.11473577791705048874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8601742cb34f016e7f945413559c67df2421f9886088a123e1b64a04a68745
Date: Tue, 04 Jun 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717505722
