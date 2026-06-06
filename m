Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A451DDCD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780740874; cv=none; b=lNKXK0RnEz4bdcdcAIXs1N0ejyW9/5C99SLZMl5MBK3aXAeMTUsIWxqWh3VMjzQKfbdepiIIewW5WhKRPgUw2QIgL9G+UZyxg78rPRUocYz90xXPQoUfANFawRCvmPN8Ot62JufqEVWDpjGgzxRSyGx/x9bci2478L6MzxDXILY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780740874; c=relaxed/simple;
	bh=LcDG7BbSSUs69OgE8CzAEAlJybReQRRa2W2FRZ8Gpj8=;
	h=To:Subject:From:Message-Id:Date; b=u7dvZ/zB+wd7frAvX03Dk6Yd5a4p39en+RQK1HewgrFUXptLEak9RCG3AhIzsEWOgtPkD1COOn61J88NnzrrWzni+PGRXVWpTPgBW+qTQ2gsZ+XOCFcBRmtcAD4iUpkGHrFf17NQskvA5uOfINME3ZNi1gSsLEZbnUJACAFj9Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQe8rWS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQe8rWS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB179C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780740873;
	bh=LcDG7BbSSUs69OgE8CzAEAlJybReQRRa2W2FRZ8Gpj8=;
	h=To:Subject:From:Date:From;
	b=XQe8rWS+v46aqjUxVCe2/w1yLPZ6Rqh8pHE0AyH36GAeLHb3h63yP1Siqw1Rn0XEc
	 DOLk4z60iPWorBW5iCOtbRfDOUzr/GarYMqv29p4x1F4I2cCeThWYo2Irp4OFCtUXw
	 HU8fJ/3bbMF2w7IMUOO0ojmke0/ahYqVcmdtZ7RmOu1Emm/WyqG76GyNbcDNVawwXE
	 g8htJ0BEcwPIGpWXH0aKlUPE1ez5r4J1PQylv2Vr+3R8Mw5QxZz3kboKnnLh5Gx50n
	 cW7j+TrxSD8nIg36gD+SIo/a6AKvdJrRqK0ITpjg9swUYPW69Pr2DkfqLAFHkSrpRA
	 vLpnmqF7b29Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00E4CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074087368.5961.5484420453420915855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4182670a5227520391d12a6785f995a9cb592d008c1fcd2cac91a8f74c6de45d
Date: Sat, 06 Jun 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780740873
