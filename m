Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261272F0669
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761211794; cv=none; b=Gy6FAMiAfwOqbAQSMrebkwbx/d7L9wdEshun/PSnE1YyBOM56iSR0ICEoOGK+9LlE3juRGjCu4s3R7jub/EQLVyRuoWPBX0XFREv0FQHFt1uoMDffcb6pQD+JLn7zFp7g2sUEi/STuXaS5RIrpkOeY4J4XIsCudkgN6PeAaGMPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761211794; c=relaxed/simple;
	bh=lMtm29Lr+nQ1vxLKWgu04+KFsVO2UKTcnahc65CeoxI=;
	h=To:Subject:From:Message-Id:Date; b=pNZtAPcpfxX6dtYYim3jzFYj1N8o24S/SPa1QOiJGy22CFFsaZXPoLul+AAhJHMxJIq4qfXoC+AZX3FsLdI5d62p5zRvrPYdx5XkCzWgV00uu2IDRCAiFsf08l3i7AP50MMXF5EDjq22Ec/YrHdhBF8pFt/uYzKQEI+AP59YcgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWBJUsHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWBJUsHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4999C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761211793;
	bh=lMtm29Lr+nQ1vxLKWgu04+KFsVO2UKTcnahc65CeoxI=;
	h=To:Subject:From:Date:From;
	b=GWBJUsHGd2/adSCWBB5aFz2lJpXc584Mb+flFFVMBG+Hr/lDNcvGYfdrgozH1XJ2C
	 Bpn2Wyl6woc+jwlxSJHHBFN0vkQwQfT9Fq/tGS4XjuRO2LPUrVAuPxrKH93hi/6ulx
	 LlLm4X7WfuTapIAKJXT62LTfX9gc6go7+xYgAjwZaxYN16rnTTOGlsRqUjgBMWPtul
	 oGgVCP6mnSgspavgJrOyIwFLjXh5tn6oYUwa98n2zQOOr/eBLAoexjVoioUTGYiCuW
	 mg5AhDtfoHndD6oxp1W0hag0GwXE46jYeVdATfUqSeGyZuo/qkOGvW9jtNAvUgo2qY
	 6+SqPtRs4ZVoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359CCCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121179359.27419.12241248712594260616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedd68e6fe0b8029772c2738f0f1b0dd9b98b6dc903a143f84b93c398683e60a
Date: Thu, 23 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761211793
