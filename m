Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1991C2F5491
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755078594; cv=none; b=BeUTachDcgokGRDdb0xr5pTBnf4jxCSE4+jbuZjOH9iEiM4sH/jNBQSBTA89AhiKD46bhfc224AkFoJMOAUylM+XM/Br4F16mEmM1gFUWXoNX7CnLO2vem50ojBjQAhl4kMeSmA/SlVZpkEICZMbb7H+v0tgt6mt7iscDGQKQOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755078594; c=relaxed/simple;
	bh=QteJQSQuQ6VdhzVDZcLZUIL5wncFYIAmE2vh60L1PjQ=;
	h=To:Subject:From:Message-Id:Date; b=r8N0aosTgfMNsBh/zeeZTT0rSA1ueqNxpGEJmxlIo3ON5dLgoAY2cDzT/R2hhtsevveRQzgyoAZA1vHZRK3kgPjkXP5V9cxY2ctBnmRGIozdLwtO8SO9/gLLsDF72WFiILSooP4HkRDD2PVXQnLGF7jzz9hD+GrxEq1EFDmbj+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4l1iMhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4l1iMhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40C5C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755078593;
	bh=QteJQSQuQ6VdhzVDZcLZUIL5wncFYIAmE2vh60L1PjQ=;
	h=To:Subject:From:Date:From;
	b=n4l1iMhN0iziouLnzmg8VW6vGX95psPSfR0X7zH9yPZ9luPbeO3h2g00mirymPx5c
	 EtN6zR7zzfDmf9ITIEbt70/pfaaJAvxVh4Mie5zOydmKuZzrC4scei+GPQcGZh7Kdr
	 Lby08VusQ4Pf1uMIVIiUx6d/05V0GYR08b8etYLSxDt5JEW5IOkhZUO9NauvIyoZPQ
	 a8sYbZ28Bw6VyveM05zIc2sfV2XpwpHF5UvVK/Yxn4wUWnq6OwVsJUKIuDmocUYcYk
	 f1N8JsEQflP5ow1oK94/3E6dNKDFEV9TRhpWRrAbnzA4ox/dXTuasECZHtJn0xPJmF
	 04sJuxU2jDrXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4CCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507859358.8863.9843253680590660887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43bd7bf0bf64f73fdfb9da5089fb8b8faa88f643464cee3975e20bec026df49
Date: Wed, 13 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755078593
