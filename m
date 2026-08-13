Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8240933F8CA
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786588234; cv=none; b=pvq33BuU9YBeho4wIUa242jyNu2VwzQ7EnNCfoMXpnCwtjuln2HcN82gAaDD/xkkCgs3bl8voRYT+J0pUw8F9mu6mz/FgXdpRwosWDIIj0OM7qFCYIID/OfUp9ODfg3fYWU1NlErj+sUhid/MJ4R8zjdzNwXCmU0wsW4Xn23TfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786588234; c=relaxed/simple;
	bh=n5wVYJNngwt94xSyJ/QwfjLZgoeq7gOfo56nDNUVhek=;
	h=To:Subject:From:Message-Id:Date; b=lzUWKNV97LDv3b74ZqNjO8Q5RikxGtHEkg9xdHjTLX9HaxwqID1uctTf2iDbDffdOU7fLQF3ldaIL4dFFgQTbVqVaUk7mtQ/aVcQqmOpLXSaoq0LRaRezpF4MQRKt/02Irb+qc0j27zFDuPojngOO1xXf0XfkWNY8wI0/pIJUo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uggmFfw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uggmFfw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB101C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786588233;
	bh=n5wVYJNngwt94xSyJ/QwfjLZgoeq7gOfo56nDNUVhek=;
	h=To:Subject:From:Date:From;
	b=uggmFfw6dmfwKkmEdtrnYNPPZO9qd6uQZl70ofwES5sNgX2ElPDYTiqf6ZmwagjBF
	 dAlA2aDVesAMXmGOKMz/DweRgUvbhpD02+lEJbwGCdRPp80VnwVYDIWljRvTzmg6TK
	 6q8KoIkYaCOkqwRu2n7lxrIEG4InabUcVkgCIZXR1xVk+F6fbAQnkqT/VJI0F8SeG2
	 fPsfokgk4FGGTpSVU0TcuAxSV0Tmnq3XHgnYaImTlPCUn1Ebm1hrkBH5NtCbZo1loP
	 TJQmIQXPlEyzvSTP3BvABROavkMFia9eW88CaP6pQKT4GpU7vrKoFVLma1TpvBwaZL
	 BncgtLjFKLbcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9167C5DF64
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658823368.4329.9858189303785065227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe510f04192310008d5014adf765bc4a61e66124cee74a34b2d1cfc74e3291c
Date: Thu, 13 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786588233
