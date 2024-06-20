Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7893B74BF0
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718919623; cv=none; b=Lt5R1KhizXxztJBxF+cm+WeeFb0Z+258fMXqnfQ9Pc00X6NOSr7CjcGwMFizBElOymzf9PezEhEEQ+xAFHQyAg/dnu1BDLeUSVtDcB8vfGS4OSKLPsMQbYmRaw3M9ip0mjjg/+lU3vCyF6wHwC/s6fClkrTKBUvzkjFstKAxgCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718919623; c=relaxed/simple;
	bh=ddzM6lpD/phK0lHfQ+1wM9KOuTW8+jbIGic+isb4adc=;
	h=To:Subject:From:Message-Id:Date; b=YJjYlWgZZa744r5zi8zcHCS3VWjAOzmCIUKgGwqv/e8hf5Lpq0UnmWR+HyWZioy+iuvtIy9/M2bgyW4phCpBmJn9WMoARoWYQinuPlGjPG0ynGfih5O+7FnWdbFxuJxaOyrb7ZT1McvG4j/LkBVpvBgyr60/GnFEyz992QQpWuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+82wIkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+82wIkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7E2C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718919622;
	bh=ddzM6lpD/phK0lHfQ+1wM9KOuTW8+jbIGic+isb4adc=;
	h=To:Subject:From:Date:From;
	b=M+82wIkX3Va9sGsNEMnnzifv2HLUoLn+qWaFS9zVTVKk5+DkLyYTpAQNtG6e5LiCi
	 hLaRrbjxgbq7TQWNmM4wzHGEipbnnloPUqrd7pku88tAHzXT5vcSORegswSPkgA8TD
	 c1ZEf0KPFLsfF34RwUOarzI07ob31dMa4fDj/mAtwRW1auw1Z/SPkx3lM0uqWCdoTs
	 NFd+61Ee43oRSHXNiMwEjwLYobV5iV2uFOH1e8/67y1nR0c/i9Q1f28nfHDNoaUon6
	 8jr2Taf3J3j2NyH04Szzmg8FgZXXyNWnSb8bQcj9MmtlXMb1DRmno/gE0L3KPd6NIU
	 7HRM811ejmZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8660C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 21:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891962280.19359.16544294865649476241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c766b7f8af8377f4453a61de09deacff8ccadab11c7d0b69061b916b1aa56f
Date: Thu, 20 Jun 2024 21:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718919622
