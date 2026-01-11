Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1485D1F3BA4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768143834; cv=none; b=FT6H6ZPZCywy41Vc5ej7SdEUHi1YYF8MwQwasywuS4YiM/SdexSeCik8HKW9wWFQ3NMxv4idXf3ARv+tFHBl8GGzFUs33gMrWpUl57CLI5ehabGQ7JEFNkzGjSKIVMKIPmMGcYdfuDu2D4TSxozkq5sblCsm2Q0kUJNsdJtHvAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768143834; c=relaxed/simple;
	bh=D8613aIqWVvRJQTqESXDFgQcXft8fkC0vMZOlzgx5mI=;
	h=To:Subject:From:Message-Id:Date; b=jiDwVfSpiMap73FAIa3DijQyfXKTIdYrIAwfBJYrYskRHimK+C0m54cJAix2/vXxwcs49W3iRvnWLHmJpwq2XkE32g/LkjdPYNfp0UUyPO3puXrPD3jyY9yfwHEMTcNvSi7wvhUjhWcgaYQOQZGbb0p/J1GTvO81oEEwQXXhGK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSZ6R8u0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSZ6R8u0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768143833;
	bh=D8613aIqWVvRJQTqESXDFgQcXft8fkC0vMZOlzgx5mI=;
	h=To:Subject:From:Date:From;
	b=YSZ6R8u03YWseVcaaKBJH1wn+jWrlQ054RVyG/z6s3f35Olt9Yq8wm+oDN5ff532D
	 ZzeSv1J7aLcmqpFmFqfyih/98knK7Ot7n68aLvPmdOLn+F0gxgE2/8qiMmEwJzRp5g
	 atrsqch0+TjLjxkgZu1ovpkdCpaPieRWGIFYr4xIPE6RHIapzmk2kJQ6PS25gxga2e
	 +92e5itS6oAhw+ewTmNi9gIqKNXllft2hcHNoo741NjvvZ8ZzqtR8Uo4pp2rwoV67v
	 H+OK96SBBRExtKwh90o8mZe9FudOZmMtBIVvIS2yMPm0x/6237Mb97iHixOeZQycwN
	 4T7MNtRiVO9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CFD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814383357.14912.12343797177777715123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea915099e7a568cf080b931af41b8b8ba32717a05d1eb15ef5a2e812efde1ae2
Date: Sun, 11 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768143833
