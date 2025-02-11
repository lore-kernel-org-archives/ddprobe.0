Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6217C1D54C2
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739255397; cv=none; b=tb4PikZl02hw/L89iduCgTADofQMVWAYUi10KdMT+OfYJJ+NFpohl0cNw+f+K6eHxYNgQLPeSm/y6bAZVK9FlmRbPQ1AjCBvli9uuqeHS8b7UKTmmL1TdE7vXKP3QWODiIF03U5I//SiKuywltSsj19cvileE7OlFGVlVP5m960=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739255397; c=relaxed/simple;
	bh=sfz+At1cyVxFoiq6fWG4IL0Xy6c9y/skqnPPQIGVrMo=;
	h=To:Subject:From:Message-Id:Date; b=eMtLcOZiw92DsmvTYQf67Wvp0Mi0dma3s1G1C5nRf4xJnAN5us9lRd8FVqt8BINp59rweBllwh0Qivn0kYbbYftYEXj9Y47csyVxM5xKCeQOjlcFK7/1ui05mAQ4eARF93qWvegB+iLsrVtu9ehWbwB45N766X8N4CqiiKbR228=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6eovK4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6eovK4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8439C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739255394;
	bh=sfz+At1cyVxFoiq6fWG4IL0Xy6c9y/skqnPPQIGVrMo=;
	h=To:Subject:From:Date:From;
	b=S6eovK4jAHVCGcMOL1MNRNBNFuXi7k2JKEzdMHko6YgQjBX8bp0Gp6pH/mkY//F++
	 JMv3+8EB24C6S2QH6TRrRUvPQLqS7YAyQHZ8LPyWhf9QCMnCJOzZoLY3IX6kia2xaf
	 2a5eMXZ7tuhdQ9qZB8GfvHwsJv4FNvYMmdntxYZcGsxVJ4Wyr661ntkLU50B8HFUKC
	 +8Ki9bu6NtKcifctdyHbnIoA9DNBUHhZFX1VvtNYXCK6+wD8K58RXKiUEfZvW/H7+N
	 BfesNMS1ILHkemzyzo1mTsZaB4nzZBRrX2z+O3J1/K2M5OZsgAfifJDdLb4BjiJSFP
	 C+MkiMsQ3ikZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6401BC0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 06:29:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173925539431.2275.15912969818877864740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c2d6b90ad1f30f195c93131662152a405069c54132362b35e392520406288e
Date: Tue, 11 Feb 2025 06:29:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739255394
