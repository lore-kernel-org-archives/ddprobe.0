Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B00CC141
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763003394; cv=none; b=mjJMg/DamlLu9OnQvutitjzxOIMgzJY7dLSGaCZ5fkoBMLqN6fZxCeevhi/S+sMeDHbie19Vz4XiyvKI9elQ5Z8fkOkhxU2O2Arif5+p40DN5riZIfNmxhViz7YWHXA8DeA2tAJjaR5NWjwyxkfQT/jVOXCdeKNFKkYKo7v++j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763003394; c=relaxed/simple;
	bh=R4xE4nv/jChDZBlYJZYb0UBz4n3rivMi+LObMVcPZ2A=;
	h=To:Subject:From:Message-Id:Date; b=up1EPdXodqSz77OpM+xbEqb6kGyUfQm15Wzdfq2APKiDc3EFNZJiy1TmM13CUEI9mv2GEFkuTgi4MlPIA4nW13xt5owKc5OSLnNnyRG3Q19utKPoOTQ9O14I/SlMi9jfMpci9/ERLaix9eZnqk6xr9MeOh4/0k/zXPLGDebtcbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCij8Io2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCij8Io2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A561DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763003393;
	bh=R4xE4nv/jChDZBlYJZYb0UBz4n3rivMi+LObMVcPZ2A=;
	h=To:Subject:From:Date:From;
	b=fCij8Io2qhd/Kwn+WBefEmCpWtYwnORytJA8ZguLYmuOUg068fD95Nv6zEKwB+7ir
	 iOm91XMP2EnbawyWOZ3YYbVgfD92PYH5Vj9mVG9g8WyJoYz1JN1pl1NvtY99ghX6LM
	 8nbdVNlFEa2eGHWctD4K3cC7/GjZn6lsPuznCjLY3dc0F3yOCff6w40ERU9KSp48B0
	 LkxKqRUyi3iTQ1+EcY3oTiu3tXXCqSexUjmIB80Ncz0T8mw4eF+71mrKFcgtXlRaAV
	 672dmbnz8ss8ZFDNvKaLQJJ6fM70C6Nt4ItoMa2BdUlMJsHiklppk+TCgN+h94UIbd
	 rCbwNkOG5bjNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958BECD4F48
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300339358.18039.14905622070443108422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29f6f3e7e272506492f388c5165e6642d525ebdc7e8e44766582f33b6a34cdd
Date: Thu, 13 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763003393
