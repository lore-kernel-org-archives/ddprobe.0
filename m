Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC19C1DFD8
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737289553; cv=none; b=mrcIaZnohZ8aY4cAH+usC+5bYzMrmQBlc/907053+O6bV5Ka+vJaKmVuRUgO9BCBvLUGKLHoFXXlCfvSGaGHSV8Md01wUKb19Bu19A/G6sZ6k4Jr0WBkGHFN+WvmziPVHPMr6vM0l8wtjeSxKhO0fDbPvZkVVSkFsCnjghvt794=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737289553; c=relaxed/simple;
	bh=jb6n1iXYZvsHJx0LBGX5aDACLlZdogOmkNZR7ucXg4M=;
	h=To:Subject:From:Message-Id:Date; b=qbdiWeguXC5nNglo+x5/3Adk51CE0EbBTO6DXG8xSCHFrl9DpE0jNF1ZNIr5tL89aebqlsWKHSdhtbJNRfNOcylmb2lZeS5ftYwd51s5U5IzBzoth9BuFR3Z0Br+ATjvAv1wX5wfHbwBHJdEeu/O0+WxdfSjEFON5TxaD9ni2Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvzdT7jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvzdT7jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24BEC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737289553;
	bh=jb6n1iXYZvsHJx0LBGX5aDACLlZdogOmkNZR7ucXg4M=;
	h=To:Subject:From:Date:From;
	b=mvzdT7jmi86jN37NXrP2/1P2Qj3lOqWtv7g/eU7d0tNYuy3JJX9jilWNcGoaAncPy
	 l8o2Yo23pNcKsOpTnu/Ok0rYqzEHNhkjjf3wqEy0FLM6xuhgYPkKEYBJ++AxTzefq9
	 78HJEKxk69rI/D2AARxkeh5WJw6B1H66bwRMaFNIZVZVjCiOaaQMcilUWlAEQbULdx
	 EBFhPnSb2DQ63gIczSMyCAkiwi9nGxQD2i2XOEAyvoDrMHvG03f9nSb9wGmfG0guwI
	 HkbLqzLS7QkYcdQGz+t/VVG0KjRvHK2VQi2hVHUjYl4qdezH7asiPjodF0lcbzzMWZ
	 Nnlfn0xNSvQ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F28C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728955359.15627.11760500088633781258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5697902d2b2863e9052c235afaf4c8d613bf65ea69721e98d6e0f17ba6c75d66
Date: Sun, 19 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737289553
