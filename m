Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3165C3CC323
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779786754; cv=none; b=pehTQE45Nnj9RUxGcpwcajOUbWsDV4kzv6T4alaKTWc11jnGRwkxl4ZybJmKQ/dyf05zHDjEX4EnQRODDnbmbw9B3hiv+D1jhJWiTesQQXK2h2c9Rb9WZ6EnCYaat+vrHNxXL38RsFd+cUZkb6NF+5ZlDex8yFKOslvorOElq7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779786754; c=relaxed/simple;
	bh=HCrJ0BgvLg3IOovThCYYRnOE2v1gNcDWYjliaaABRt8=;
	h=To:Subject:From:Message-Id:Date; b=YykAtdziAZBCirMF7r2fLg2vCUcGlfBxLxGHEWMSrldA+824Mk9o2UTCf4DaZwEYjWmgA7M5ta8Y1pV8toxR7mPK13w8T+UXX5goZ/sv4FPSOe3Ah3E9RS+CyTbgLeWe2IYWa666nw/O2b+RjVD5QqqFDvhKVNnZUJ7OljDD0dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyAUm3XL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyAUm3XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C683DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779786753;
	bh=HCrJ0BgvLg3IOovThCYYRnOE2v1gNcDWYjliaaABRt8=;
	h=To:Subject:From:Date:From;
	b=jyAUm3XLJsYoOGAIdRXk3K8omiaCA2C1J6RIjJJxDgGkoes2hg76L8Ph4Z9WB3uhP
	 bozeXzZCWPABPd8AxTg83t1Kpu42o7h3xABu3btjdKToPEkL488cydoPzDsUpTiAUC
	 Ty4upVVYdNqMHa0cOZkKzALpeaUTxjGYCuxHLoD6vu+/EWxvAciZMbaakp4aoa4Y2h
	 iQ6IssTBqFTdm13cAcZ1APCtnBa1xM2nmIun/1ko5hI7fvm2txONnriYkG668jcsak
	 lC/ZxZdhGeOdopmryqcvHluOCiVklWY0vGX/yWvQE8D0xEBNevcBYWwpViXvm+MGGv
	 7Gn8H3k0aoZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC207CD5BD1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978675369.28953.2349032473785831322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68bac56d9c6832e8f9c90348827e6a13b849cfa1b01e921b513cf77dbfae7f1c
Date: Tue, 26 May 2026 09:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779786753
