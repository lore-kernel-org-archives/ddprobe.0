Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3304C143C50
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724489754; cv=none; b=Wn2mJrGrZ/G4wC1nBrA+6wbosreS4Unv1+EHDMH/KvRCTIvwsrjdobqu3klp1UD2AOxQ68l+aTtRFQhsMpfuQSwT6ztTJjAJtYrCoEmhxrmy86Xl1Ar/0+HiCOeJNivJUHQYt6eJOvfMawzAp/yhe5bl/5eojazngCzpLEMPX+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724489754; c=relaxed/simple;
	bh=t2NUmnWwZI9jMHqm7YlLk72Lr75Wq4H8NWj5/SBJj0Y=;
	h=To:Subject:From:Message-Id:Date; b=qKc4Aj6vTz6VT5pFqNVW3S2ELT9fG7P4JwxyEQGl+vRr5hRzKnLlOk/pRzC84/WyqV2UW+J0dYFqDC8sc26IG8iQGFfaO2MEfKioC9zGG4YF8VRuOyX/u9Vvs9NhcGTWmYysiKkjx9qhMaAJ6p2HSxT8hgYnJji52iXVJZoVsCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shZ2ilAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shZ2ilAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCEEC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724489753;
	bh=t2NUmnWwZI9jMHqm7YlLk72Lr75Wq4H8NWj5/SBJj0Y=;
	h=To:Subject:From:Date:From;
	b=shZ2ilAv49OPvRbYwG8agJGe4fvdzAlS2fYnjvL8A13O5mnWQdNdf2kkuiZi0tvsZ
	 t5W0mLtFY6z5waPhAiCvM324WPj8ERDeSDDzNFAUStaTaTaZWCkMlIgBIGT9HiZr6w
	 WB+dD1C0hFCYzCeKlUl070uvpvQHI4lH+j7xwJQVNHtgBqO7Hy1tBto/xbj9aYgoyb
	 Gvv9IbIhqdSS6cpavN0ccux+HeXaoSCXIkVQDCuMVRL+q8yWWHW60w7qb+iwWEPj2w
	 L37DvZS3QrsnwGY9AwzHVLLYuAcYe4OSYtj8Q6Oi7ceiBXBn/dkZbVV7XGtDvUZe8t
	 TBiKSigr2Oc8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AEBC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172448975358.12152.13224891696648277014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ba71e0f6add0a5568c4ccc59112e735e3ed42cc276b6fca82cb3ff9bdff824
Date: Sat, 24 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724489753
