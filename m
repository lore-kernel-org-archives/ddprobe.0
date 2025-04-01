Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4867917588
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743484794; cv=none; b=SKnULThkaXyssaNE86wHYcLystmVlfcjcAXoIH2DO52ZGaG5PHLVErCG5AXmsHpMr3Y3PcuKsMX5h0NwVHYYUV10BMI3kAax/PsksjvpQw+8uEWJLE9eUW8UeNUnHVqTNJ5DCd33temlE5SS8ZhKZEMp/g31LjDMwJPWD0Y30+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743484794; c=relaxed/simple;
	bh=k0y928d4k/nmQgYWEaikPYSkRn72VV4MT3qrN8mg8F8=;
	h=To:Subject:From:Message-Id:Date; b=dFgxJUt9vz2SoBznQGL+o6R6Qj2UUhqNJekTD/Kn7AYRbWKGw5Yy8aj8s/IuHCjIt7A8DMyo2+r0YvzbP+eRyYOwJMLkUuxoJKc2AjNqxkDqkxth/s98S093v47wLVGLbCkgVtW3vw1nFshqFV4dUk9n60lIMVrLAzMt0cXhxp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfbt+siC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfbt+siC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE61C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743484793;
	bh=k0y928d4k/nmQgYWEaikPYSkRn72VV4MT3qrN8mg8F8=;
	h=To:Subject:From:Date:From;
	b=bfbt+siCWI2EK3aEDj5jkQzRwkUWeOW5V+lZxy/371XC9TB9jZYKbiebwQX2jrqCe
	 IaX9gAHw4s92oc1d9PhnhFanRHjiH0jtI8tY7jThGD/sZqEvsJDiwn4bySVc4mhYMk
	 6rrCVOjotEC3w9q1mDqMY5je/SrfnIRrXbSyED/rsCaTNNcPW4eP5/pZnCRb6U+K2E
	 6Co89fuHLlGzW6Md3Yu8sfBhQRyVOnYRoZOadmGNKetexAjqWKmroEWPAGoq94yO18
	 CwRcYZS7dWchz6Iau3uNrcc9cMeyzRf8T5bjTteiTV5N2axJ+htN234FGfATb256LM
	 Ut6NGV1TCsQVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9619AC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348479360.10483.16226298690697182187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517ad5f0277677f5fbdd3c278c6dec257ad94c22a7d15727a2d29a59019ee2d4
Date: Tue, 01 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743484793
