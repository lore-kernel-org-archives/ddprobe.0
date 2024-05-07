Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EA110E6
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715102543; cv=none; b=fXGcM6cUbMc+KKOCi2jv+anCPRcg2jiFTWfBdq2he3EMBma3IxR6nphPUuOem97iomzdETG/9KQ+vOoTmHAr3YEk5HpQdJD9cG+y/pT3Hc00WiomDK3mYd+GxRuIXHcHRl79+g2ka8nuZwI7VwaQY9W8jiN31BYHiSytdJgxQlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715102543; c=relaxed/simple;
	bh=dJl7F21+yIFlNnCXL035WsNKvrRLNaKv0FfV2XWRbDQ=;
	h=To:Subject:From:Message-Id:Date; b=DExk1utAt8FlSPxaQalThLP0H0vjH40UI+iKCbqY2X4roIit50r+wcM1N3aKZ8KwcX3ZleXM3t+oFkqoKbQdXtR9TMzJujV3Ib+7M0LvxwMqFVqLENEg4pfz4y/puIYVnOUnuN+N8S875o5/FDVphH9pdHaZ/Wz+jjed8m9q1to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGOgXrnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGOgXrnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3346C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715102542;
	bh=dJl7F21+yIFlNnCXL035WsNKvrRLNaKv0FfV2XWRbDQ=;
	h=To:Subject:From:Date:From;
	b=GGOgXrnH/ffT9zsF2t5B+ODK1O+zmz27oDRoL0z9JdV9kjcqQFwia7aZ89xBdupKn
	 FA/iParCZ0GbLAhwu8jgjtqZBZ4dOefV3ndmnfhEG8PuKK2W86ur5rAZYe/OmnlmaC
	 hdPrV7sulw2l1obQ5modSHw7Zimw+j2I6wsmOyYxfOJuxJHjEbH7H0zrRAY4j7s1Ed
	 FFvIcbELAf8dKnGZgj0YFvKQqnm+Ffq9AKblvLnKMZZPu3WQ90NyaPkJd9baVo0uqi
	 jAbxFh87hnjdMsSpEuJoVT9pXfFOv7wTgmb9gCPLpv4ZkhBkysMRch8+mfs+qHJKgj
	 n2er6uYMru0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C006AC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171510254277.16562.11970418913851030733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01b1345c3249bc5fb3fc15b6b2f63526a113994ba3d1a35c4cf11f0346c40f3
Date: Tue, 07 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715102542
