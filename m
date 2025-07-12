Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383F71E4A4
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752298194; cv=none; b=ZYFpzx++Ax4lDC608Mrm5bSR7Jxuo2lCya83DwOj/f8mkpdBzdlFdJvKbF8qxRbxcfSFtehCSnWWSYkzwDO46XXztCZMPCIi352pIOy44N/4frZkHnu960M8ED+u/W0P5sYvrUxaIQ+d2tufZ9HZ9g2fcwsrjZewwEQOO4U2vu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752298194; c=relaxed/simple;
	bh=IMo9wvFLGN/G3hqkqE9Z6Qr7HK0AO7ZHSGwDOD2sJ/s=;
	h=To:Subject:From:Message-Id:Date; b=PwXYwukCiOaB8NYOtehZ/zzrvtG2cV4GipAUpo1U4S42wJ+GZvEq8mondojCPHV4p5mGgPFXIFbAJVzI+EIO12+7djoX2ANpXpbQfqLnFNorGI9/l54ZjP+lZZRUZA2+0/UmeWNJnDFg/LBAZggMia8D2oKjEO4dV//7sER1pac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lA3iWyeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lA3iWyeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F7BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752298193;
	bh=IMo9wvFLGN/G3hqkqE9Z6Qr7HK0AO7ZHSGwDOD2sJ/s=;
	h=To:Subject:From:Date:From;
	b=lA3iWyeR8bA9RyZnaPgWkfwZC7lbETVjI7SmYBsxhkAOZEaiKbMQ5hyFSeQyxHSxF
	 Z9UQIK/ZoYbZlyQQI2OU/vMP3zKXJm2RTLFNceiITUO7nradfbRwmikRj4YUdZ2+3U
	 7wAp8mFDrr7e0WTN02S+81NPeY/dFnDPYgWblYCPLJSikNi/+yl0MxhYfx6dtjxTiB
	 UsY9hT3G1fOtfkYiwYMptZNK1qQlZM/Q1T2SQ0aVk3oZgb8U8Bjcyglq6h9gTNrt50
	 5EJzange3ap/ZJXenTbpkTIyAMsR2fezvcSO1AfwDMAlqoMWSYgrmf1YGZoLUS42hW
	 84mbbpjhQ9lNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927F0C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229819357.7949.14200809577673708167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d900dcf08e14e83b6e52894f435beea485c1ec1c0ddca07e47749dc3c73e3c7f
Date: Sat, 12 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752298193
