Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366B133DB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744497594; cv=none; b=RkKiD4OaOgEKKWpjj7TEV6cXXqx2B7AFpifs/hLbQuPxnko54lQtm5P1EDOKjksdg3hZ2XAEayaAnxFhtLM1vRhdQgP6kp9vcPBVnssKEzMKblLZ46WY+cqsV8aS/ZmbNij7z3BnYTta4viR813BlPOJJ1X6MgzxdoV/JluD/nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744497594; c=relaxed/simple;
	bh=XLXl9KkqTQ/QgL4i+BsN3mh8aN8t3OP3/WAoOFzUqaA=;
	h=To:Subject:From:Message-Id:Date; b=a4lDbqnmW0iYoBfzzoGnJMvsKmmNlOOFQCamNg7HPdDQCaLHVbYHklHf+HNjqeT1p5kcyFE1f0ODZPjYcJ9RxPKHcdxrQaVdDY9SCv/1wyngEoHMIRYCMcBTvm2VD6+8zIgyPiMO94r+vocDTETfvKH8BknYua0kfSixJY3XO9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZsk0pkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZsk0pkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAD4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744497593;
	bh=XLXl9KkqTQ/QgL4i+BsN3mh8aN8t3OP3/WAoOFzUqaA=;
	h=To:Subject:From:Date:From;
	b=fZsk0pknoWYrQyfJ+/qk7cSsJUmdZOKnTknlVLRW+8Go9P30QGwzCzOUSOJcFjGsO
	 kY4vEEI3tUKjz1yu+djotKpZNivnEffaHrXtPjphE4XjZbS1wQ3SHAgfydVYUJXfKy
	 VN2MKExQibJvHGfDUFAUi1NRNYStp7LTOcBrys3bx8+QvCSCILlSdCnOVR5GOaR/Ek
	 r3YTMRpm6jZQBwY50cbXhcU7qNe+iZdNO52nE7dZs1gyAiHt9px5pCTaeW5CegDuRM
	 haFmC5y4BiZezMEVyYFlTZ/p7zVcFakq71qIjQwbEMyfzMVWAHKzQ033YRCdxZeI4B
	 odJ2ggKXVRPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9576DC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449759358.11124.14409857508754361980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d664c11b071ea626a3b3a5d0667843c2052276eb5f55ecd62eebbe93e229199
Date: Sat, 12 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744497593
