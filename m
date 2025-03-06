Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D257D1F3FC2
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741264733; cv=none; b=GoBu+O9fJlIKGFkGcr0SfVEo/4/c7+q7fDJo/0u1SqY0rhlKjj8lPlA9OprfSDp5kUDS5O7ksefNWIS/n8T8Vbs70ISWXQDZbGdPhVfDxBaZo+g5Oen+HV3LdEEAbZmMMFX4XOLbSzLHFep6eyJLLxOpuJEakZNQrMBZW8R+bWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741264733; c=relaxed/simple;
	bh=tp6u4ZcXMGJZ/Jq21hNT3HCk3jL1uguptkrY+Eia3hU=;
	h=To:Subject:From:Message-Id:Date; b=cwDb3zEpT88/F7O9BesftuICDaiLplVjGv6mBE08dEcDkCay/VUpzX0QlzXus32Toue830bFSN8kaQRV3GLXc8pTHQkZAgjZXO4NB2Mp1cmgpjP5k+egkWgIAtmAAMta+2UhpU4M0UhZSOJlTfDk7kXSvcZ0ejivLQ4zqmB+daw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l80ZelR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l80ZelR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B030AC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741264733;
	bh=tp6u4ZcXMGJZ/Jq21hNT3HCk3jL1uguptkrY+Eia3hU=;
	h=To:Subject:From:Date:From;
	b=l80ZelR/Yz8ExB7aEesO++uR+BQ31dxVyQ93acjw973KFkRFir7ZpaNh26PS86u0p
	 dnmCnlox+o2Iqcv5Ge6qoteqj2qALUSVCCOQ7zUjq7F5nFTh2kXu3MdMEy9SLNsQ7+
	 TUrSSNXejGFHMyM5RU+R0mNb9M4bLyW3ybzXuxzWyWgZpvf1dFEyyEr36TPkKF8ovQ
	 PHciwzkdtcuB59BquiGKVP5/D0YOl6CYQRRaJChhsIWt7nFKRcOF3KNyE/Wz+J7ic9
	 zsMNBIvZ5jYEjHZvFqIn4myDuYA5fyTTPjMCbgn9m1XqlBgK+YxIqBUVmRAQnkrCff
	 GZj4pGL1wwfng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE1BC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174126473363.4659.13448708825198065394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00825345f416f4770709bb9be66dcd3280d10f03fd77900def59afb9a697daa
Date: Thu, 06 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741264733
