Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6235A381B1F
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784084314; cv=none; b=bllWjUuIQ4nF3lUdAykzo3CPTnExAdQeX1ksMGAQkPVH8mXSGpw8S1YcK32tgKWT2bZLBsG1anO5daPYhC2UY9BanUbwhA0iIOQUqz0GG2nG2OUPQdt9nnB5HY9EL9q/gy2LFmDDa9moLINifrpN8LVhCSbOiB3BqPB2kDkQjbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784084314; c=relaxed/simple;
	bh=wkU2ImXeit9WG9o6imbIPc/1Ou1/IgS3mJhb6SrX1gQ=;
	h=To:Subject:From:Message-Id:Date; b=dJdNsHYHF/HwaMf9W+hGsFtfDu2p6NGU0offn/XTKeguBQNLdwARavWd4tN4G+QRbQeGvAjzrNwPHSWqHX1E0o53bTeDihrEmUs/bmxVOeKSaq0jIC4kFZ1tIbIwzdJTBaaI2g7jXf1CKC9XD9e7EvkIeTQnKQbgWOA4OIXsRH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkjsTXk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkjsTXk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8CC3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784084313;
	bh=wkU2ImXeit9WG9o6imbIPc/1Ou1/IgS3mJhb6SrX1gQ=;
	h=To:Subject:From:Date:From;
	b=tkjsTXk5oc5Wx5rrEnl/BOV5mu+pA6yP+jX6t8ca+9IRZzF3fhx5RIyppDxqqZPO+
	 6bUtJBNua3sa22EDw0LJjE1AlYP73pkbEywuRbW/ELJ46ecQ1jC5K/X0ONcNn4wG3p
	 AHgdiDLBKvTT+ERWZyxQV627E0vXw83xvJEndE1jxx56RXvT4C6GGN0aeSaiq/IHPw
	 Yj/dzRxZNH3VtY/uILIy6lIgIEPROIGKzOgfCGCsiQTPQiD/UdydZss/enUA7B1gVy
	 LY5dV+CfCFW5ZUrA2iQcXUV/4uT2lb2u9NLyxo3YC5LdhWiEOxy9AqcF71Pz0JWZUn
	 n9c9O7W9bjAdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1449C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408431369.8544.2748820045374841827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7abd965202b01c1a0ba6b056cc684e82ec1513d5ac2a9aa7b105c835121539f
Date: Wed, 15 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784084313
