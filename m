Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5431C9EA4
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728569154; cv=none; b=Yrl3GmsMm6rYHCOGvyo2rxUC3AfGPgUHdF27vMMHApr9WxgrNXl3cWynFlu2f3IFlOOPCxHCr0HWpeMj8bx/Wub7SLRVTD9vmZhqr7Wh5OFWXfRy92KokTYLVHDuQIWtlsRbnxKb+rz3m7kutFl6s2Pca6SFfjEiHxNjVufr6uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728569154; c=relaxed/simple;
	bh=c7YcWwg1MqNiQGkuNWRCtZ2dVL1gCKZiA1BSr1x4eJ4=;
	h=To:Subject:From:Message-Id:Date; b=tpYEFWg7LqlOqcOUtx5N3CX7umTQE0X77ZJ118QBC+0Mi5+FpxbUvGNCUWo1wJGQQrVm1ZNMzWx8Nn1MbAk9au43nDqd5jzzQomUfgU8eXRsBzlmWEsPFETeUe2gcO56Ch6wBLZ8cfj9cQCka573WqOfo+7VJkGpRIu3D2ndgPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0Vn56Jw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0Vn56Jw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1D9C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728569153;
	bh=c7YcWwg1MqNiQGkuNWRCtZ2dVL1gCKZiA1BSr1x4eJ4=;
	h=To:Subject:From:Date:From;
	b=g0Vn56Jw+KNM8E3Kj157uDsB9o1xAhc1tIGg226Rpu0HbGBn3J7iFrDYnJsYt1cnO
	 lzZhkwSsiW73VBW6D9Jb9nEiCKz63ccvyMr4CPud9SLP/xSadsOWFWRmEc0FaHye8h
	 3ytNgY7fXLNlBygNWfjNDTYkCZ300sjG5L95GQqsSsTTgay367qpdpEfBXFMrTPnuY
	 A0F4k0ouHeCODMOqQrvJa1BphPztNOWpEbeX00dyOWUpiQkcki266GDwprQq5NY5eg
	 O1BMvc3lMIOivCUFvQTKf/RhNhCf2jrb65E/CCe9FDhL1HwdVnRQBE1GIv4YQKMakR
	 Df8K9n+gDt0og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976EFCF11F8
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856915360.24789.12525131116478666997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b672391d12354b066f86144fc5d1c1f0c8e139d3090d88e911bca1caf6559bb
Date: Thu, 10 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728569153
