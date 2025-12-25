Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2C91CBEB9
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766691834; cv=none; b=RWitHiGTu9DN3dvf8NVwnLC5lyoD12SmKbYNnSKqU4zyaXr5nIqVH4tzEDww/YPwHYQdFOUpF7ZtIs9CD4Al++2n41gBN6TEX7lJftm7t4Xl43BkcPfc44dxZ+p1zp0MwDhzNKRugK72CDKn0v1f/ZKV3CkhiOgA9uQTn5b57OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766691834; c=relaxed/simple;
	bh=RdihBSzEnxEiYadnQclNYZqG5jWouJb7nOIzCaGqO1o=;
	h=To:Subject:From:Message-Id:Date; b=uDHg/v+OGGLjJjdykI8hnXX18KXt/34StWoW/kzjgAoMXYNY/vfDFjEOyJoqNFyEHTcr5mW45r/AkZeuT2GYvAaq2zmcmM73lSUxFmGjADNON3TDdcEs5tYqd48uy+nrwZMfly9zTM0gnvFVj2/SxZOAOrsUiXPRV+GLuggb7jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBfy3bbF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBfy3bbF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DC3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766691833;
	bh=RdihBSzEnxEiYadnQclNYZqG5jWouJb7nOIzCaGqO1o=;
	h=To:Subject:From:Date:From;
	b=iBfy3bbF//ztRLTPCZv4WZq7cv+QAA/LAC1+Sw4gnITdpmAkuJHCUVT8UH9l/tQbT
	 AcgkYxeL7+A0F7rVE3wM2MXUyo/ayYNhsmuFYffdEQNQ92bE7qmUhX3f6nlezxJMpF
	 eKoupWKnTfSAfPZqiF9MGURfTQVKwek247sRMDw2znQSmPmVcIhK8mh4DqkATKr6dT
	 TXlA3gTHrWrp919YAQ81NXqREXoeY5uLFbRmZlR0sKwxOjU43Tte4KER84bx3zqp8Y
	 4ebTHPDG4c23mKycNqmDw89ddGgBcWVI8Gokr7c4FPZ6gwtuQIAmKU8NVZ/X4rohFv
	 JEF8IAPgKd/Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93569E7AD67
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669183358.29741.8386013374313884390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daedf7bf9d72a9a365c2a3a1d8dd08ca62e4202854683241eb6d0826b5204e21
Date: Thu, 25 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766691833
