Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C524A2D
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717655843; cv=none; b=qsX2v7Jb4i/nc43JVozGEjE8VEJV9unJjuQIbzRRP8ZNvoU17hamhibvnvFgdMoGpyOnB0wzRluF1R94e18gyux0WfExS5E4AIIs1cICVLk5JkTXLoYw3IDPANu7y3O/Ycf0wXTEUWodE9tgUnquDGRngMQhJDKAOfB2O5xBE+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717655843; c=relaxed/simple;
	bh=hqo2OYxFq/i9zp/+Qw+XczmPNuFupf5//9gbYnmbXYo=;
	h=To:Subject:From:Message-Id:Date; b=uuDx6sL6zTgmRPKMQUtmoJj8VQ4H7yuNPxIWyPQkCzjNa1wOVbkdtHJfm5Ko9++6K3rigvo0WWZuMQPpRWklhkbVWvuGxz0ttlW7E8l1D/WCHSgUF8Kd9VgFw4YQXGdv7+8QlNxfVPBSxSgKsUsOFds02Nc5C2PipjyvGcf4648=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js52UetG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js52UetG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3977C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717655842;
	bh=hqo2OYxFq/i9zp/+Qw+XczmPNuFupf5//9gbYnmbXYo=;
	h=To:Subject:From:Date:From;
	b=js52UetGOn2CKMKKmLJecC1AByLTRrIz4m8nte8FcufknJnycDsxKTw73hITuCCjm
	 2iDx5maH5fSHITH042UmLuhOZ3KpZ/KNjmkKPsK016nnA+GIBTWlqMCzQ1U8BoCZUH
	 RQGJjFJCH61k0dVcgT0l0x9ZS+0/ECJ6cAZrqg1cmyO3+TCXfP2pdJUna3uFZ4BgBd
	 NNzvZu3RcewfDJ4OCybKLDT+4TC+Kx7tL36A6gMQrMOveHM6MK8KfK7/BGsuViLFm0
	 K+6JzsSyIOAfTDcfXvuOy4HuHhJdVyYz+ST0Ty99EOduUiwxFM71ut8mfrfbHfLu2z
	 bV5KHM2VhbAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF349C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 06:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765584277.12124.2601257891101503208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd72c6699c607822c63edbca46db8f42ed18a1ed47a1fdaea9e5358eda495b97
Date: Thu, 06 Jun 2024 06:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717655842
