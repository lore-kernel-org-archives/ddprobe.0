Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C8420B803
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741261134; cv=none; b=pDHg9DOyEPzbureC2nBI6rPocfinztcfpAYggxTnY2aTalXv2r0XP51ZpRxSkCap2sE59XrCCwqXftdtoSQrU5jBXExEITrJhaUeP4b50QGGQRJNw73lZadx98/B27knDJwx3rHdy0hfur9hoTy731J/I5UIeo+h4/ECtwZG07c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741261134; c=relaxed/simple;
	bh=WHirq4AkXEa3eD3XCneelHQS1WcLe47BkVdZOlTQYOY=;
	h=To:Subject:From:Message-Id:Date; b=DYqxIFuPIiYFufjk4dfFuZKvOSAbJBU2YdlpCuvuvojBkRAYWgWwBbNwhqOuxDuoHPRm4smd6mrSJQFzZqMPzES6OGknJN3HsZxteaem7vW4VPItxseqvruEGadasJwXs37RvBbEDRCVQZtksCrJKVi/NxHfj2+m7aY8KoF4Mtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3Ub/eA8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3Ub/eA8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C0EC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741261133;
	bh=WHirq4AkXEa3eD3XCneelHQS1WcLe47BkVdZOlTQYOY=;
	h=To:Subject:From:Date:From;
	b=O3Ub/eA8jycexDZGsj+ofo6fzxLsuxlxJEqaCOkM6/FB3VUrXSl+NbjYtixR3Omr6
	 PRu87S8s6rOju6ZoBLXFguRfFxCQVUsZTIehMD4yOl66UAf3EUVFc1dsgBCTelN0ow
	 IsvhukDwcMRduQagbzKT5+FhTno1ndm8WcC6ZDw6OD+K43q51WqX1qd0wtGChj4c1l
	 LCnNFTUWUUZLLCp1U0xD6j+J3N2nBN3sv0S4jTefLibDCVIYS2Z25qEjnPzb6WJEma
	 MR+X81+ajyoRgCgct25Rhh8Uv/irEztfudGvsLz80H/FlD22hP+PQTfbesO5QJ1L6h
	 /rlE+KoDCx7NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DFDC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174126113359.14908.15208553813263643464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c56be77f6e0ad5fe25e701d9272ce6830becb6c3e1c7fd65560fe2b0a64fa7
Date: Thu, 06 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741261133
