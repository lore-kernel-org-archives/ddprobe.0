Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379BD1EEA54
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738254954; cv=none; b=PE3hYn4jzfdYOH8ZuilezxDLcvWhhGYQDAzDCHtKDevLoP5DJh97IcB6THSf11cLds4j79ziSK8vCnrTTVbQ7TnD3xgYpDnABEtDXSXjb0w7NAGC84hrX2Sh25KDdmVjHXBjJsGbndRYK55VD+Yu9D+Z8iW14yrmrM2vqNoX/xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738254954; c=relaxed/simple;
	bh=7g3H4SvyShrC+NFeBexpP74t2jCe4ytW8VWicbdIolM=;
	h=To:Subject:From:Message-Id:Date; b=mR6DKBwG0dX2VC9pNMFHajdeXwjw6yIAOKLxDbLvosDxseF0FSHtiiyig9rZVDk2YCtrZJ/2RNRaF22R0zggw1mLXOSlxjY34/e0lkYXD7zQCgNYARjfNscRUuzrs7KcM8M+bpMLG7DpT5xS2ACMvQP6Qx28VhQW0YeyxFGysF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMiFMSCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMiFMSCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B40C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738254953;
	bh=7g3H4SvyShrC+NFeBexpP74t2jCe4ytW8VWicbdIolM=;
	h=To:Subject:From:Date:From;
	b=QMiFMSCgawoZsCeyrTC02xXS0FRRq5NwMTob2P1+ccpmwEZlnk4J3+ke20A/e3akx
	 CpdXGfUJ9IYAU388hipXUtqS+9AgEMdgAa6JaKuV+rkYy0gwXXk5pfCzpfa67sNcj2
	 dyRWt2Tjj8kz7SpE7iqlnKmiGId50T5prf5bOcJGHD7Gh0QENsneuZPlnVy3bav5tU
	 z/mHWmPi3sizJzQ7daZ/5ZD6jAiCckxseb/tIn/k6+mMGTsJlgywikl0qexiq1sK7l
	 zzBPCMHjJ+Q8ul89JC7vyhRh/t8VV1HT7fopFD5BIeUaZNp76NeGZJn1BR015KgiLn
	 PS4VpCxCRZyeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946ADC0218F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173825495360.24385.12696092284949334878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce2af3f02de64ce61e73b9507e5c4da93082044aa617e748004e6e41ac9757f
Date: Thu, 30 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738254953
