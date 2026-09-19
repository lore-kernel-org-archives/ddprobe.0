Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632C213D51E
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789811434; cv=none; b=W5l04f26rjOdeuTelKiXoVXDGtBIRdlNy4bYYY11Fdx9AFlExYZz82FPwtN67qB3uUbb+dPygPxxJ+J3JbiqwlzwnLNbriVoZVHIOEZvY29t1xltkeywqLFCzO+B9UvpvN0slnphKhssIZCCYKqoOlLqDK5W9wy4bKdaZOZTsZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789811434; c=relaxed/simple;
	bh=7OKKDMWbHBGNe+pBxG7sSyZ9uuqGyopFtDxFbjtM2PY=;
	h=To:Subject:From:Message-Id:Date; b=VJHOIerVHvrE5g/Zfka+OOnCIHGP3lKCrL1cp6qnIZtdBfZhS+aaTqiFgXwk/UY8OJQ29z7T9Ude2Yb9kNifVjzLa4Gc44Fgdqwc7ZjKOwDTZwpFb7sj/TEzbzir2VlXrGViOCO8vcS5rJrVx/Epy4gf8ZBu9rLNEpDlmUKvPi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJxoRHZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJxoRHZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA0BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789811433;
	bh=7OKKDMWbHBGNe+pBxG7sSyZ9uuqGyopFtDxFbjtM2PY=;
	h=To:Subject:From:Date:From;
	b=AJxoRHZLvqMx48C6q98Fhj3EvNoSJq3xMXjiet/PnXCzF/5dDataqJ3+uvXI1Bgcm
	 HieDhPmM+4bhYuEvPYNUDQ4LDr94fA0D3yY9tgYbZTprGlvw8cqcug28PF8JI0xNXD
	 zqJ9f61BjPRUVel7vnj6Gk4xXrhdg8O3Fm2Qdn4jhxVDLDpbAFkekj9sbMxmSe739g
	 9rsXl+opIqS1yYEpwVxrWj6WcnUebHMqskAvWY1L4+02vWMd0ytJct35HmeLiSr5/C
	 kpRP5uqtoUy9oj09mOUaOsqkLEAK6Cpf3BcmtWjT9HIbyXDdDptxZXBNG0ItaMxuub
	 aSzF5C2sONvOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4055C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981143370.7915.9000576133184517424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ae4025f57c07508f85c49474f95a94bb5b6629b7b2cac7c41ad8a8b1f61b24
Date: Sat, 19 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789811433
