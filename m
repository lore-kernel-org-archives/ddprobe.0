Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F113342466F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783507715; cv=none; b=A+ADrSi6luhDoHOKWYmVBy4lSXK8pGrXUIEVnyk3PcWrmydLge0VX0ixT3XQqK29skcTkPMLoGYO8op/O8JxS42Na6sEs2ylrV1pUFaprqXc9f3T1Ws+4kLFqyP4EcJhXDEY4eyXMju9k0X1Y4aFPDSBmofj+A66M93EPyKWifc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783507715; c=relaxed/simple;
	bh=8At+KMHuep2hDB/DDZTz1TlHE5eThfw8UkqHtMh/5nY=;
	h=To:Subject:From:Message-Id:Date; b=rR9DrhrkIxvM9n6P3VoLsPdJbNaRafGQMiJ4x7taE2ZO+m8ddEzQY8uB+YZqDHv5XQxXrGBM/hxatRQRsmxfbrDEfbjWUST1uUAWK6pgUZd3lYk5aSK1fFajSJYyPXiC1rfp4HTUvcG53eCoj3KrzNqHGWdA5xmpxXJsNkSAVmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sw3IXB99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sw3IXB99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1376C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783507713;
	bh=8At+KMHuep2hDB/DDZTz1TlHE5eThfw8UkqHtMh/5nY=;
	h=To:Subject:From:Date:From;
	b=Sw3IXB99Bw7+szbOgTjkydxXXS+Wgj4uab92U6UonTzinzYNJU4gNMKW33uPMEHDr
	 G6i3RFjzw4PMh7ZaeyzY//DsjIBbydVGweY+rDhFisvYkg6sJedP1RFZagZoln0/Pf
	 Iy2A3QQ7sM34qVp3KCkolERSvi80SRqcoBCCbgQPKERaCdRJe7O4ZII/6hCShqnUZV
	 Uzai9I1Ljj8RmedKNmZgi0aiDShljTueopXHGu6ucYTSKHBnPwObgxkxHRTMsKijH1
	 j2zo7c757dG71y57YmRpVBMWqBod8ZOFBGi52HXuI7/l4vJgHIHi9I5nG/lOxgRnEE
	 NUNm6Y1XmIztw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0966C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350771371.13583.17153360407399741478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e2465ace38a31cc614ce1214e277c953521cf59342c9fbabaa090d3d09db37
Date: Wed, 08 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783507713
