Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B398370AE6
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790454634; cv=none; b=U8SRr7r0kFXNoXgbnzfTbODobUcQ7O4rT4LxYjSkRCehSSz7Rh0XDS9oONlvupsuO5pzNCLd8ptfHxbQx1p4ubMaIHNEA4uBaUQqrVCCvufq7hTkMyVACgEoD/Svi1Qkr2Kfbhb+hxtW6x3xfmm1KF7mmL+xldRCgfVlSMLGit4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790454634; c=relaxed/simple;
	bh=Tnc8iGevaZ1ogvdEdm9kAiFwhHXijZHxbf0YcPcf4Gc=;
	h=To:Subject:From:Message-Id:Date; b=PzW9VWO+LYamXFy3AK5qpGLEqkrldSHveGziHb+/Jke/HocJb2NKECuA04gCtEbhry0JDllS4d0g3HK4iBAebYUNa1pGm2J4iGNJieDla2VVCwCOiVpZRRjc87ZnTaErOyCoSiIufG4nHIubU19ox+jeowA7bDC4h2ESifG0oBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtUnaJ7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtUnaJ7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF02AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790454633;
	bh=Tnc8iGevaZ1ogvdEdm9kAiFwhHXijZHxbf0YcPcf4Gc=;
	h=To:Subject:From:Date:From;
	b=TtUnaJ7BGnWGAssl2+OKHskfjSL9EZwkXniivg2FtEd1kf/P5V3uoyskR+HjAo+gJ
	 5Cj2AsJ0gOhD2PNT9C+PmRfedTsHr0CDJ5otU5o4kqhan0D6oJuJrd0d/JAsAQRq4K
	 C8pxx/1iR77I//KiurIZYy12f6ez+/OKsBXkiS4DklsdFjIDhjSsMA3fIpfzYGi3bd
	 NBD+U0AbtxCSWbTPR6mrwtWeoOVBduIa09b3FCqQ1PK8wdzrSrwf0Kh4WUdv6gQiJn
	 IzBTuWX1tYGQdO0NqRZdUuEZq7nPdn09vr/Fd6fDzGhsCpE7IwQparwfd8KCK5O1MH
	 288hkT38EZaKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF5C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045463369.31818.4845462057988836870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6baabf0c108b3dca52d5c28a611505104c4562e96d376a4d1843423ca60fe7b5
Date: Sat, 26 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790454633
