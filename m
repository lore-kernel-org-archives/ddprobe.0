Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F98440B373
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789169434; cv=none; b=fYUVL9ScS9r74vKeCc6hlMcl234lhm2Ymw/vAPVe6pwlRgsHeVLXWJ46Ffu+KhVG4M6bZyKPAw7tbQxo7k9OnbM8bm5cnXuQNNBwt+ehaXM2ckfCFhIezVxHZkqWslHbXg5OC+6B6VKYkJDNzsKMq0FttSzTYj8YjLOCxgR4igs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789169434; c=relaxed/simple;
	bh=gH2DwU6W9GNlMtVLOifjOqEocBamTFIG5MTBhUuupIU=;
	h=To:Subject:From:Message-Id:Date; b=nTzxWzefOiB30tKBcBSPoixY5ovAIVSIvjRYibREuin4ArSghRP5xV7ehpuant/oVPIIhLv2mGfvkXIS/pYgkEdIzR0KOOwPFa/U+DWmHqJ+c5gEFy1Tldjls7gSGvbU4B+L3z5XGQrTl4gSQEw6pt06Xn6asyk18gdHnT7SOTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUcZTr4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUcZTr4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB28C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789169433;
	bh=gH2DwU6W9GNlMtVLOifjOqEocBamTFIG5MTBhUuupIU=;
	h=To:Subject:From:Date:From;
	b=OUcZTr4mP/3Ng0JPJuFkol4vwirwSHpsldW5vhm7pvMbQ+5m5LZCabv1bMhC+Txfz
	 C77I2wsCrz0+q3JfNUaVUPRGvN99PaJJA1bu6lFtJ+5GddY51z2Iq6l1aVDAim4XUG
	 hg1igY/MgrOQrvanVEq84SodoTfIOEAp9nK8hN5RkTUr/ZUO/qHFQBUmSLewRjNvtn
	 GHEQzJbFa6/YDnylgR52TwlqcIGrSnpONOoBemolfe9zo6iq5pplAepeG9wBR8Px5m
	 X62PleGigKVRi/BwkOOsB118Gl/BVcqJfeCz3GpN3kXJztkB0Y2ax92cSpcyE62uLr
	 NnTbnEnGNJjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C8CC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916943374.16197.16968285924225366921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0616d61ae9ec84904a188bdf514d371c0644fe3f3535ea9f0f9d880b8c9d2f
Date: Fri, 11 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789169433
