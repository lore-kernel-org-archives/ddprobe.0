Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8ECC18E
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710893296; cv=none; b=ICorX1aNM8PzTix6Ej/mzIvv8mMjdiAPFil/SNmCq/9g/vM+Ghw44T82A5FPj4Hr0wMpOk92hX7VETUx1xybTD9z0BNABGamU+Is0L18CGUDXTAHx0wdiEsHMyFFZKeCsB3+QS0aAwch9yVxE/Rum1ZIKOQ6ONdv5o3W25MTtQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710893296; c=relaxed/simple;
	bh=90PiCzGgDTASpwa6BoTqlglZ1HoeT3W+qhy4/RYCfBM=;
	h=To:Subject:From:Message-Id:Date; b=F20nDnSbOxErn/i0rDvT7ApPYvIYlgTCGr7p9uHpaHdR05DDqY+xClrFVbfgdRfqaLJIdh5JRbdxRh2U6tNldfrywOIqXSQiWx0lFI2UXVDWVrvIdzniUte+tGAsCB+GArS6Y6UKNqp1fdufzZAMJo6wMLm5pPf/q1x3aI2wEA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNtP9E3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNtP9E3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68188C433F1
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710893296;
	bh=90PiCzGgDTASpwa6BoTqlglZ1HoeT3W+qhy4/RYCfBM=;
	h=To:Subject:From:Date:From;
	b=FNtP9E3aS6ZZMSVd5Iadf6BFlhW1+Rg6PLuECPm2KlRMRmV9x6xz6D4oyB2ThVIe2
	 pRsKzP7lpmF3T3oj7ud1kS6dRtmf5QrBBUrOo2QbGGejGYqGmM/QeuOYzMwBwt73Cs
	 HF7ePTBMGjfT8cPMq0q034Vbza7LZ1pPSAWOGKBp9YSAnWvDdvbRMwXeBncPQObr+Q
	 9I7qsZOYgaNw7EdNXwmmrC9S+p4nSGWwP8drwWXz+yqhGM+CwRdGxwYoqrtQY2EMFX
	 a27Gzsryz+/koDMgyqbH+65XziB+SivwjytJq2y5aqLRAPGjd9gCj9AJfRyXYSw05S
	 qGHmQvjG/YTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C637C54E71
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171089329637.30654.8738290955795485373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c6af3b4d4d1bfb2cd8d2234c52ffc8f2dd53d83e7450249cfe742b641291bc
Date: Wed, 20 Mar 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710893296
