Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D4B125D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751389794; cv=none; b=envtQBSZM2lpr8L0wZgo7kntr0c8Fq+pYVaMdlLSjwtUP6WD63NNgsMi+eAu06teUWfYtl9tuI9Sg09vt2pn+s4X+hJP/+QHWHQYOZqjnvFQqXlJtOhoUBbw3W3wOL2Hyy7bvhIErKlI1wuhnKT4bx4LihQDqjwJZZTAnGqEEJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751389794; c=relaxed/simple;
	bh=xz17G6dsWHFGZwZL6hMZXtU2r0Maeb4ADzbemEiC6NA=;
	h=To:Subject:From:Message-Id:Date; b=Ih1cZ1/AAdTu6gYJagVSNQQzp68poGAg3/GL4slGJErNOpnhfyMdmzuAY8NnYJz+pm/9BhGJcfIH9XrSqjFH65IAxZp2fefOD2idGqgUWcKkIpy+TYmgR5KjooiVJ8lJbhuhiGPqunqiURkf2nNB2KdkwGh0Ayrbfr2nAIYzDa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R57cCTIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R57cCTIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF810C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751389793;
	bh=xz17G6dsWHFGZwZL6hMZXtU2r0Maeb4ADzbemEiC6NA=;
	h=To:Subject:From:Date:From;
	b=R57cCTIAFJKsq/VQnFsKUwEMi95KhT2t+AeQh2IYJENJCX74PG9PEdOF3lxgHCgkt
	 7g2s+b2FgE7utncMBR5k66I2DdnOdHD86kh/O8q/3loIHoKaDIEA6aujyZOgrKs79P
	 ZiHhKIJwF21FnwsBd9/tpFmdTjmQOzWQe6vJdobK9lIIHvri3jMP64kwpmBZM8SWnE
	 9UVVL+gmxB55NONCmbk+KcFobCSvPPdLnKRpsmh6033vkLlkMn1+A0see0hb6/50q1
	 +U+PkCm7I7Oqw6jF/0Jk3XezzvL4xQLqs4ri4qr7XNxaamxp0i5YmvTPeigo9xcuAD
	 tGrD2PUErWAQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B9C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138979358.29882.1550394896917738113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d060c491a0a01ab708492b2ef79117178184b12b3fa1314d6434b7baacb9b89f
Date: Tue, 01 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751389793
