Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5591ACA6B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781999794; cv=none; b=dr2vN34+rV7ntXPc7VV2z9IO0g/vjaj6hTxMhmLojrympC3Gf7BpDSzL9rXhaIcBxEgsc+CG+dXoHbJNUyTQlH3L7+KHhxzeO8M8UBdFCxyhhnGXkN9LE4DlRp2wj1FBnkl3K00joCiJJDlnsODe39w4W3wbxvi00C5DRFa0Q24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781999794; c=relaxed/simple;
	bh=jk3DTwPegyzqmLWo1XB1rDcJ6ZawyI/WttR5d/ugiDY=;
	h=To:Subject:From:Message-Id:Date; b=r51+txQcFVjifUF89xtcSvsv+ViCcAKLUQiY90C942R1mkVoSUD9aLuOLUZJxD7u14gJa0Zpg+Fhi0mEFk+xlnOi/rIK/KRP6EwEJSemGJIiUmSnQnsQOLKm4nJ5edYjxEpCUBS3BMRUTE+f0tCo6tUrGTB9V/p15vbA6K+s+D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyGbh5Dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyGbh5Dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD143C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781999793;
	bh=jk3DTwPegyzqmLWo1XB1rDcJ6ZawyI/WttR5d/ugiDY=;
	h=To:Subject:From:Date:From;
	b=RyGbh5Dy5u+E6zgqNGvovKpIh4kT/143qBDIZumCUKdeaBVQdZWIwc5wXJSPJhXld
	 RZbJeTyh62ux2ooZqlpqM1ybH7c/+QtvPJH4m89nf7zT4j/JjhNsWPqiuUKKq3K9L6
	 dZokItbVFjk7W6yo+O7bA3QLyEZTSAYIVXE2W7N3FFqF9b+aemkFxC4yLc/DMX7n/9
	 QMm95LPkfkPBR2aCZvkv/IurIpQvHQi+2GYpzFZOe1nTAZslFQtUGR9I4i/1XngLDs
	 VhXHSFA8Lh7z40UShCYjdCSCuEVJEM7wQPJ/BzqG3r9C5ElwSHVmRIz+jTOTL0Zwc8
	 7C/oC3RMzRxzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E73CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199979371.27843.13310851153909212207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8f9259417e19cd4477ff45f5e34abfaba13f1598d9df41aa0010a1ae86981f
Date: Sat, 20 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781999793
