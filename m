Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262AAEAF1
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734885954; cv=none; b=e4P/EFcsCWiKuUSQBUIpsHtWS3J0S0Hl9F/benr77B3xIICV8C7JBACMhAS48w4o/6vAR4V3akYPqtj2+lKvvgDFa7v8Me0pLh6hKa9vFOK6fCkzy/AFltA5Wum/eIZEfvtgdnKUW0xiOKpoTSwr9tyIpBEuAvKA69kuUWNIOlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734885954; c=relaxed/simple;
	bh=IxOGctB8l6T+TVRyDxSDqefP+/4028mPtA9+jz9B3Fw=;
	h=To:Subject:From:Message-Id:Date; b=ekqN2s4U/pixMuYJq5TjUpJUUw9urQvw8+0rspUXOGqP1ZXQTKHS+fChPovJ+0xqMMLXu1+tXKL26pJoj0oPrWAJogJKiUFPorwLNzRvSpseiRum67giPk1oC+8Wsoyd+g3xzA4Aigp/SpP1oOsSwVWwt70StIB+NpqPhMypm5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA3OfDUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA3OfDUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72CFC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734885953;
	bh=IxOGctB8l6T+TVRyDxSDqefP+/4028mPtA9+jz9B3Fw=;
	h=To:Subject:From:Date:From;
	b=SA3OfDUrd4WZxDE2f7Af7fHgVnVh+m1WrfBQVZyhytaxGYOK29m0z73PcBZpNAVck
	 7DLCK3hzPNGg2i9iBaOH9Wgszhn4yGjZYOQ/VAU8s9TAk498wAUGEXLMs2PNLs6U0K
	 gH9dHjIHPlEthwz4TlQRhkG26T7K5rdm205/pLRGepS+e/9MrFQocTCvKOuJnJLIxw
	 85CPAURQsG2dYJ3NChgGKV1GrtsF3r5MUuYBtCcQh8hFNBjBfrM/Oco3P1ohxOVKtO
	 UiBaC0o/Mbk3643Foo/4pLNI9OqhR7eZddbB/LZbOBKAuVS8PiXb32jk5bhCMNXCx8
	 dweTwgX7qHBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93648E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488595359.20978.14766499358331077569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ebde09375f58c2e22e01eee2568b93088df91637175d2860116e348348d6467
Date: Sun, 22 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734885953
