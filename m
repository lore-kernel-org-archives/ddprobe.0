Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACD01CBE83
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725637554; cv=none; b=kU+HwLWcS8vdJEfRGqYqwaWVWPFXMxb4iF9Jdsfwmmz6pBhgVvUxSPic9VAKPv7eKmpi4miZSz4WuLFvIcnjsoufx9O+7IXI3Iy3NHzHxnt7jIVzz7C2mzRzNQqwQV5W3VJ+6SSszX6Bu0Y6yNOUC1oSyLpZpxKKYwPNBx8YIEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725637554; c=relaxed/simple;
	bh=uLx9dIEDGi2vmfLW7tjUR4RxfU9w7WFm5dJsm0fMNU4=;
	h=To:Subject:From:Message-Id:Date; b=DNeY8DbDBrpbcHpr3TM89NVCZwTTZRZM5ciF1yJj3ePzITNnlVuVb9oX4oBBg/hkwtwpMBkaTDIw6pbkGFVi61vjpIUhwLe1sEkQbOtYwJsUwX0FpTpTrPRFioJEzljYvulryPltyD8hw/RumwRXZs2DAufV2E8iOo40XsZJVA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d28tvS3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d28tvS3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F6EC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725637553;
	bh=uLx9dIEDGi2vmfLW7tjUR4RxfU9w7WFm5dJsm0fMNU4=;
	h=To:Subject:From:Date:From;
	b=d28tvS3hGPKMLyo7xv8ogfDnu2WQS6r9EES+xn2poRnfz2ePoQUS9uADKr5qTevj6
	 HFNrSaiDeuYglFkoYQsFjAKeHRYJ5yjyiwesbiYJJgeSjUDN3KQdBfUfLKFZxuSLH0
	 pkqLYhpOgs3sb5d2GDlrQYd24ozgDuSozgg+xeOQwqDlivQc9nC+HgM19hPt0TpBaP
	 y64jCbFBWkkEP/MG0caJKjE6o1z0/jeWhRUKpat28feti2djv5x0atsYL8dfyrLG8E
	 F7L8MMM5jh1SXzI2iyc/CvgBBoPxGSYDsG2wAPOOyY2YAPYoJy4OkhYIfGOVpnjJMl
	 Ll47NVn02Pk7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97467E6FE27
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172563755361.20752.8098773626395607121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2a91fee6cc3b851424d9836fa35657778bb2b452b0125fb8c0e29aa69bec77
Date: Fri, 06 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725637553
