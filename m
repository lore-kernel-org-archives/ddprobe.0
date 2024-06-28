Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF9C182
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719551063; cv=none; b=Et5tlCxC1vfWmFSgouQ6hkGs/CZrS+HasgFgWGgfUCgTOWhV7HGDpV0g6GE9Ginzn765AS2/6vL+XO+9dJl6rgiK/PToVyXcG2x9pC91NXza5VI/xwzDgCLcoRTPDiRu5Tv7gbSU4MxyKfKyGBF2/ELTYrBwppe1oFysvcw9ReY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719551063; c=relaxed/simple;
	bh=NX97VQpq98KKntIpysj+YCit7CrPH/AFW4rYgxm1KJA=;
	h=To:Subject:From:Message-Id:Date; b=OQkptXBUIliLX2MZMSO7+on5aIcNGwUOxgPukaLC2s6Zs6YXLJfEMybEpYYFSvqL3c/2Y5A43D4jSG/rz/KncHNaeMvBGsM3SsxByVdr79ntPRtV2ltrypms1itom3B17zSM7krP3PjfiUhLVnkVylL3ORcKQmAD4T87IbeLiWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPdTYqBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPdTYqBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DB9C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719551062;
	bh=NX97VQpq98KKntIpysj+YCit7CrPH/AFW4rYgxm1KJA=;
	h=To:Subject:From:Date:From;
	b=RPdTYqBy4SMcIcJBZ1EulbDQa3r7hOysPu6DE0hOaMoDEzpj6IlrvWhEHIZXUdGDX
	 ZoJSLeXpEauoVLWPZYc+TDgtwD1rEPo7jZ3PGAxR/nrz30+/wuEhe916EkPQ7p+A8T
	 rYcIU8oRTlzBaFBMfyh2Z7DHW+jzYXZ3HH9V/eOOZqZsWJzpYu8fX44MdxA0O78OFG
	 rJhWAVLsE1EYw9RqVV/tpkEedsMichIK+gafoybOaDLi0w5HCVPhiFAR3tHKpUZvPg
	 w2Unu/sHhV1eKYmgeqkTlUqWMuLGQzUv1HRzo6DigKy96pUv4fm/OWoHBVfXJymeRC
	 5PamvUJYliKdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBDD4C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955106279.16840.18165405962526314275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c680b51d1e9bfc9560ed33ba8f8b07f6fc05bd02f5fcf9c3b900ce6b8c44f4
Date: Fri, 28 Jun 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719551062
