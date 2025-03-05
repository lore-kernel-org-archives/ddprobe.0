Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324742AD2D
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741150734; cv=none; b=dvc2o/RIZhRCh9BqMPC3Fb8UKp2ygNcsYUAB3PaFYkX/4L9BrsIbQkd617YhEMggaGeIRHYHrbBpcJh1KOydi00FYgMeOJug+DN4B1k0n+MBNK8uLI8wiABiykGx1MmOyicGRqGa8d72lx83krENLHKGcm8A/73oAcn1O4g+l5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741150734; c=relaxed/simple;
	bh=avux2wYygFZ2ialexN3Cv7xlRr+FhOKwWSNzYLSxmQg=;
	h=To:Subject:From:Message-Id:Date; b=JrOTpZWNznaObMgKvlcpTJf0+JSlt4ydBzZnoKaTJjhunCFYVTvEuHTCEZPpatVnGq96GZPVDdmtlxL00+/aEbcVqlTFjQVXP4MJ25I1u43sIZXJ969LdPPaQTH0qsK960lLoEYbMFU4ErtL58Rlf5x/uIERXC1bhojUeArpp84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+ASYyyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+ASYyyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E93C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741150733;
	bh=avux2wYygFZ2ialexN3Cv7xlRr+FhOKwWSNzYLSxmQg=;
	h=To:Subject:From:Date:From;
	b=H+ASYyyxbDGdMQukkCPO4XhxdaTvfp9p0ySKxVFlmzsTdu7jSGlXhSSIQW/4f2Ws9
	 5UXlGPLjzwrA7OBxuJgZgOMjX2Ei5eY4TmPdaaxp6P5CmxrHc0Fx6Ry2zwnJgfhN7d
	 J2fzoMynq6teff6e/Zil3XMIWTIF076uZjHoeukeT5txMIDJI7MM1X+TD5f+lNh3l9
	 OWPMjxSD9TlavwF0ym8T6i4nrLp0JdRk8NwKncycg3fqhMusYV0eLJWyPr+JB/7fn5
	 A9EyZUySSFtQfb7BswDkBKDQrlGZjxiCzb58mzitXETwjtEOz8o+r0g98b8J67nty2
	 w4QooA1L4lrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A512AC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174115073366.6324.8148765032508385353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbae6c0380e07c1a29ca72ffde2ed9f58055847f138beb26bbb9aa4c7e0b3c7
Date: Wed, 05 Mar 2025 04:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741150733
