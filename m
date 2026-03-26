Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062C023370F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774530894; cv=none; b=uVJGbPEBLaTsDnNI8F/SHc5xgnY4EKnKEs0j6nUyYkZQheW1igVOjONAnFibhSCEUPPZ+z5SrgsXckFFPdTkc48DlHF0DrUOz4HCY1BlIiXhejWm76/2yztOmZ7iURnUTE6YIMsk8xfkHMjT0mNrdEUUVaWlBZQBDbIU1AolXdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774530894; c=relaxed/simple;
	bh=j8vpqC4sk1mLFKKruZov2+UJfgJ63i0NFAG7rkibTyY=;
	h=To:Subject:From:Message-Id:Date; b=HlspqKdmssMhly0QBHcN0rhJHKdsA+dq7hCWtSiJZmGMNvt6c9FhSdpmmGPMFR2mg1dHiCObMEQa6yaKQ2scaoBx0npZAm/qRsezZSF5sDeqI4whZUDJl/iXCgKP8Z476MynIVmuBMMVL2Vh5fM61fMFkds9jXxnriCriKaZtGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRylfyhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRylfyhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B1AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774530893;
	bh=j8vpqC4sk1mLFKKruZov2+UJfgJ63i0NFAG7rkibTyY=;
	h=To:Subject:From:Date:From;
	b=RRylfyhJI5P6JeySIltw8cfcem5sDkyy5wGSeP6r3ggpQxQDNg6dD7Jc2bPEjzJ+p
	 eokrQto7ezXdt27ZWc++IgTacUmLkjOcn+c2JPBQpyL4BMC5xbsRyChBKobQvWgKJy
	 R1T5H2IFEDR+Ken5QfeTWKiTCgj2FhkLeXyF9ekg1qOrTfHrIhyMKqX3hPcQqlMGVD
	 yE0rzDA6Uwx2czmP5ozOXJn3aUhknuxhAW6PwcVDhW87Aetl+5xcrURW+q44q4DxPT
	 YxJdpvBvDgsgReFUqh8ki016f+aBh1/IO0gGwYb/eTE//PelKqixEhdmkcGLFBvF2w
	 wbQa/0f9Gr1RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930DF10A62CB
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453089359.3266.484594690678106012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11d6324b40302cd17386f5420366833a3e78832426417ee0df276f98bf85b26
Date: Thu, 26 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774530893
