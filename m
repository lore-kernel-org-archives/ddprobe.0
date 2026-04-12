Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283F0282F20
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775988454; cv=none; b=KL1TVP4MhENNHQBEdSFwZzWMdnHi7nYX05cYp08j+Fqs14DxhQUCKHj20Xr+65LEnMEpQbEocNIeUKyIItDU4lfQk4UFxhDVXPB1iflwaZXtqeDNhlArM1vaXMMrZmbq6UDfiGLEIIUKxztLfinbHy0zoOtusTEqMY3lWVs87Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775988454; c=relaxed/simple;
	bh=GcwRx1ZBN1Ag4ETJsI+DPpE0FGU0kQ6VpRT/0FcAcLU=;
	h=To:Subject:From:Message-Id:Date; b=sDNw0zk+h9X4IJgG4fvzhoJcZIsaN6s/wP93ojswpwMZ291GSUFmAd3jZ07yWI7Lt/7Ps3QK3wBB2zXBfHFZLOGirNmGwdNMo62c056hVmlKwvarP9Qn3WuOGmJRl6zVN/FKOySDf5Iys/OSv7OfjOK22yqjw4rjj4rVDPirU/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAxtOS1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAxtOS1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C092BC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775988453;
	bh=GcwRx1ZBN1Ag4ETJsI+DPpE0FGU0kQ6VpRT/0FcAcLU=;
	h=To:Subject:From:Date:From;
	b=LAxtOS1OC0Pi/ZfsD56r78ONENrfqcx8eB4clnWRdUGvwMtTpjGQ3gm842VI+MWUi
	 1fE5TfoNtmjdwJXhIx4geESEbZTAgLSQZEhm2KnYJfVvOU7N9HOwEhZn4HQGoTgD+g
	 kD7t2glbbHHrRgdm1vqX0dCbk3iayIlf7UXrOrAiJMYJz1TF9In9fvxKK412k8mYDJ
	 ZVww3RbIaZoDubg7kydU4GfrQPZeQs4BgW+9lCeePvF6IGE6YkoRdup76LlpB1RYYH
	 t7x0KmX0O+C9q9YCSdN5Q0HACE1ntks63Vur2QoFV7rKhbRga9JHvMvwiWUYCcrIXF
	 JIje99JPifLiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD028E6400A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598845368.13792.14957642331357595576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01943edc8a17e4240a28b86ff8cc6430835d7d61aa05b584848d76e32c4b1976
Date: Sun, 12 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775988453
