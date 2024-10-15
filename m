Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D517F7FC
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728986154; cv=none; b=tug9VeBhdSBvqxgUPWVlv7RXCu/ISx4qoCEU6r0vQNcJsK+M2x6ONpVa/9rhFWYjnbklc/w2bHykM4WgiaYpzwfhbQziUd2RVMXrohmJj191D01dhWB/2iMjIDvw9CgD//Qr+TNS6v3Hcb+2z8rI2Sm2D2RLHRGhDeX19dFeK7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728986154; c=relaxed/simple;
	bh=XBQeDV3AUrh6AOYGwwxOTS+dlc/8NJmJd7dgWFRWBtQ=;
	h=To:Subject:From:Message-Id:Date; b=Cg9LzZIzrSfPGsQaCWxJ+41lVxEkfPlR/ZAhlxXQDSGMO+fUN4l6n9LepOxHw3Esyyk3KTq40e0jQ7FdJtakzt1dsiAVGq7kB7O642cxuvDinBVSGLb3Sa++Dwe75gTaGYDn/zpSRJiq5VRlth7GZ9ULCrR3qlzu/t0TZrCwCFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQBTAHjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQBTAHjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7EC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728986153;
	bh=XBQeDV3AUrh6AOYGwwxOTS+dlc/8NJmJd7dgWFRWBtQ=;
	h=To:Subject:From:Date:From;
	b=WQBTAHjNTO5iZGaYTeakn0F7I5DD6ZAD9RwkpxLmQzYGQeHALt5291D2sqZPqbuQ/
	 TaP5DWt0YGisD+EjRsngN95xE2deoKtqNvQaE/nvxvQyt5I4dOizmz0DZIaxOMr3z8
	 UqHy7HEfk192ZxfmomuqxHvMdVcUukMozkG0mRj31hPIUwjvgPf8D3pPmAYlyMGthi
	 w/jszXb8jfbGvVY0LSeirAfRSpQ1ePna5jsPXeYFIWtizjtXApI+DCa7QYEnJB8A6i
	 ClVeYa6suQMAJQYBNQQWumBwA5m6DJKQcR6Yyy7fMpbuy5MlKsU0RI9tyHqw5AhqtR
	 kDX58m4wBamZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96623CFC280
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898615360.4914.13783709330021427775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245773eda22781cd8d6605fdf86fc8f339b45d8f054dac49acb2950c20565eb3
Date: Tue, 15 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728986153
