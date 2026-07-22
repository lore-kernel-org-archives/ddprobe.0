Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E862285060
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784698714; cv=none; b=BAGIQIJug6lmt4Gj460nu5cUeZN5guR4BClhfhio/FZuNndESX+YkwEu1AKm2IojpMrOUzoj/YrF9/lvbe34mrnhY0bKc301ulLI7rDVhno6/JRgfceXfg9t9QKGzd0j2wKVKVVFf4CzeY29+Q7/RacbIBJPa6RTTKC4s6kMwyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784698714; c=relaxed/simple;
	bh=7di0rz4+KHSexH6azp9NqU7kqdRLfKkAUVsriy3lRIk=;
	h=To:Subject:From:Message-Id:Date; b=QMEW9skYHeaRq0ayH3PS9XKk3ZgAvcZTfLqd+3Ox77/hegDYxsYQIWw47+8H0W3ZTFBu32yOs08Lia3qBzPIr4AhnIapTRu8j0Lv+c5G4uvm0RCoVD03Ypx80m++PIF7zUg3HKy2BNK2UEKimzjoIF5R5U0UzbFSiDIb6PPdkmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hu/2uxfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hu/2uxfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6586C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784698713;
	bh=7di0rz4+KHSexH6azp9NqU7kqdRLfKkAUVsriy3lRIk=;
	h=To:Subject:From:Date:From;
	b=hu/2uxfSdGI2+VqN/3L4yJyIg/AYzkEf9oyrcXROOQeEtvkJu069I0VIkZ+VKpNvJ
	 97TfEF3EwPGB0zOsXnSkuu+XMxjPy+0+GloLiuLwKH0gQZy6BJSQgCKNhRAjy+ArxB
	 AHOxlf6fcH2TfqQI5kbNWsii3RqfrK2KzQKMjmD3JxbfG7FjIzyF+CE4bQB3elU4Wz
	 KYctBMk9yO3elxOJZxEEJaV1BIiQeMGpXKfWLGal2kTa37fYHqe77t69NTFZARlxl0
	 Q2nPK7+Q4Q1RahvN4TIOM2IViDBqhESJXiKUAVPyCNMgJa0T9UjDWLXy4epCX00cy6
	 JtY7rXY1m/jcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3694C44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178469871370.11036.8951244525516090300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d446eb4097fe0f0a2298494d879e52deb42f6d77acfb8bc3525c9c2a41671ea1
Date: Wed, 22 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784698713
