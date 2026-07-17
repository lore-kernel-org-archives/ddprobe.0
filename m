Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AC8367B90
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784259514; cv=none; b=S4kSF8/CGsYvJT4C7TIv2regeNYFVg757eVJEAPAxIptely1NlpRZKMv0E7/pwdBFfKRDIvK5J5P/r1SQFiss7lUkwcD/H/bowtj92Y/NOwkmOtNNIyF7GGcOaeJ+IhS1eH8vSz3hGg0XvS0KKjQ3qeISOtE+KDoYdLt+r0+H2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784259514; c=relaxed/simple;
	bh=bp4xE2CJHcDfyehhQWbhTe+8lVaJI2rGF8KY1jx97lM=;
	h=To:Subject:From:Message-Id:Date; b=ddCKlKDU4aleyziBjmR2ZUCHsMZChju0Cw0PKxeCMhm3oSQcr/9JAxe7DR4jkC+7utYeN9CcpgUExsfoSoRR5ouEMEqA0SiSnShtIdNcY+o57kGmNSXt4apmSxrEjfXlRIwQdHPXqjRbQghRJqwtYxymgqeXR0LjSUhJXKX+/bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5c3Dwkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5c3Dwkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFE3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784259513;
	bh=bp4xE2CJHcDfyehhQWbhTe+8lVaJI2rGF8KY1jx97lM=;
	h=To:Subject:From:Date:From;
	b=E5c3DwkxNBjCz0XC4NWKm3fQea1P/whDH/INh31L686wTv9is8RwWQPsDkntEf/It
	 GpENhicqzMbU3vZ+hxo31dQEyUwyJ7WdH760fngGdSSONlZ61CQSplyjnQNui0WP84
	 fIszgjh9pPf8yMzoIE3KNNCZXUkvt7Nby9FxpP9bebXhO+Nslu1b9kc1tYw82XiWGW
	 8Dv6837kgOoFFfh/8Nl3WfWE8UUSZd1yBsnDQbZBVT2Kam2GbzkNWQqyaecCdJ22we
	 l/JHCQTx/Gq1OuR9IgWmkLsAa+yhUWaK+BPCX4ryWHoD3kxDpcag6/oyijCsk7+ZqT
	 N7gdypWmCdcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8D4C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425951368.27058.8310648222029929487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658a9cb5b5ab4f84a2bd346bb89c11b0bf520c9688eba999a1089b4bad7aa867
Date: Fri, 17 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784259513
