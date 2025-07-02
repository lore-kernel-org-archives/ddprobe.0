Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F74219E8C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751441994; cv=none; b=dieDV/S3gy47pdItxEGiBtEHwyUbQiK2FQKQPC7R8a64XMB4VPNGRalfLLZ92ttCvvj6mg4/xXx+bDlhBI7PBOfRiNgFEKr4Miujwh1H/pPnB34P73dkE6gwB2lYpOypLjzS0PFCw+BDb8LnQ0815tBfTKDdmCT4LW3mT2ssJ+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751441994; c=relaxed/simple;
	bh=Rdz/cBGqeynre+W/zd8YWyDOvzRy6mK3IGivYHdmeR4=;
	h=To:Subject:From:Message-Id:Date; b=PUvQHvjVytvKtUz8yQzED6Yb0Wd6lZFfBlaCUVUJZWQ8WHMUPl5VTAnbYXbNPAPgXznV53ADH9LVtPUK4DuXwFZT1s4Zg6DOyypsqJ8WzG8rjJsXz7DC7b78gifwLKUrFHzrjmXMLwpnyfcVx5GT5K0ArmMJj+DkEzEbCZNGvOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHGhbSqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHGhbSqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04D0C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751441993;
	bh=Rdz/cBGqeynre+W/zd8YWyDOvzRy6mK3IGivYHdmeR4=;
	h=To:Subject:From:Date:From;
	b=lHGhbSqQT7FQHH87ko5RwV+rYVlVtQ/yCDTxJf4jtE7H5pi+FzI0m2QPneXXTIsc6
	 cUgTTlBkFoYyFw3z8gR9UPw2L2fH5FslK7IaMk+Zsd+TLPALBzvhgty3w45n4GyG7P
	 cJN0LkOu3uqv0zj8f4y3ieTas6lYYGfBrdEebE7jSCUBEzo0Js0TkAwYTvxY9kXlRd
	 1dP/F2kn2eeitqjB6DpWp9L7Gj7ESckwGrlEASTP/ZkUF8zPHIWfGiPDVfDIgvBKur
	 8qbysyrWxk1I26YAe4QEhf4qvgxJiiPMUEZyJihitCm6tloO4SUmgkhMEJJABqLAwI
	 ERUENSmW3BnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC77C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144199357.26720.1450527897826324810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e422f0bb599fc37a1fcbd4cf5b920ee1e942d272ed50200991cfdca8ce2db2
Date: Wed, 02 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751441993
