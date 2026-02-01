Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2A82EF64D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769945634; cv=none; b=nj5K7x+8drhHU+E6cwijvF+Vx9lI6AJDBinUQHUpOxoTGh4joJeMhiCFGvcwXohGnECJxd2PaTOF8P7exBkKjVRoxcm7xs6hP0BWFGAzpWINzp2a5Q1J9wWdQR7rV9U3TRImNpkpEsLh7hA+AxLL1u70QdysoqqEisKm10i7ieQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769945634; c=relaxed/simple;
	bh=a0gG8E7pgE8Ottcazrkg7LtbgWqhVDW0tCd5dqNJz1U=;
	h=To:Subject:From:Message-Id:Date; b=CP8G68Ckn5t43QXspn74eCsag8UMjf+stGpKiVzAthezr/CHDM3LDDHqslsQACcK4C/I0oQd91d/adxGlfZu2pZHZ2bIVf7/d80RYpziR7Hp9oGQKrShCveYOHP5i7RQ9ykuJveKvNe2nucAJvugnqPGG09fgw86e+ummLwETVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbQxEQYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbQxEQYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769945633;
	bh=a0gG8E7pgE8Ottcazrkg7LtbgWqhVDW0tCd5dqNJz1U=;
	h=To:Subject:From:Date:From;
	b=bbQxEQYKg9SvODBcMi2F6Ywf+SkKYNzWCE3MRKcGCL0EoWuBEo653cJZQMyOSfO2e
	 /ksC+znsCEUiYpEZO1NKADbt3KYyNRF5IOAQG4p36S0n16en6Rlux2KnE5PJPZMjq9
	 zfzh/i+O2NYW2F/ZB8OA9Wp1E3cevl2wstXCzVlBl9NWdM5XcROGEqoWsoeSBGYBIy
	 4pVAi49xWlC1EhhaglGXz3LUWE/alKHIlTZIUg4QM//eZ4Z8dEkuzXr23NGBH8E6s+
	 q0RqBrMd3ouvF5L8P5kvaZeh6xWP/+GcNfdKd5/nmI74EyvXUyt18U98a6jGlKPeiX
	 JY6s3IcK3NM5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9429CE7C719
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994563357.21633.7558993289877638486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b65006da40f9a51549b462aa809180537b039f3feed1201130f8e9c9d4e735
Date: Sun, 01 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769945633
