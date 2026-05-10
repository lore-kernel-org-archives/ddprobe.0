Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3220119EED3
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778407234; cv=none; b=tsWlFHXdWtoa/Roa53KRzPYp2WkFzyXTnNNVt3X0dHMO8crT+shhzIlsmcDxNLevu0phWVwZeGOF1V0GAys7z5Q4qtEfe48kca/E6FYkobKZv3Zw68n4ulAJO+M4SiLT/Z0eOlnJBkBE0yLxp4doYv4G4OZOpQ+IgfGXJFvyUck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778407234; c=relaxed/simple;
	bh=kPR4/xw6+UXHlFizsVSLzAEjDWgJkvBWN+qJ+wHtvfI=;
	h=To:Subject:From:Message-Id:Date; b=Vp0gtGcQXEd/ldqIEDbFrTCwO/Xuc/7uNGkG1S4HGyup8i8GaM8n37o+APv2Xa47J3Iamy9/mLeB8ynhqjqw5knT+PKJmsueb01AN4zsOmlvr1TPXjP1WNNNlAGTsLf3qkqVlWWXBbPF/E2aLgXdXyn8xig2PiVJtPJWJiDI4SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+Trc7NI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+Trc7NI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF6AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778407233;
	bh=kPR4/xw6+UXHlFizsVSLzAEjDWgJkvBWN+qJ+wHtvfI=;
	h=To:Subject:From:Date:From;
	b=S+Trc7NIydHk1FhHPrhv4cJJc2DPyXXuu8rq7W0yykxf6Q1ASFRrzcNLeJU0g+w7U
	 hGSFb75CGsmjPHv7lebvDX0VtZNF2PMWqTBl1RUBAGfLqhLXC9VHtEEkSDQFEM7sOg
	 XGkJn5ft/gMC660zjN/5OvKubpsX6kqLD3eD7XULHqedrmQlyTAvSH4lYMyNIXq8WA
	 Ilf5IBge7JjLuXOnTRzUCRUo4bio05kIDHzNv2YG1ex8+Qgty7ZZbXphdjdNO9V8Ao
	 zOJKUDiFOFmxdGPQwXe5kfBN1wZGqmaP5NAlqfWZijatc9TocfCqAIH4vXGZ1ViQA9
	 0MWdL1xhetRUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB996CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840723369.19266.16935958840805474354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b63abac00140f0ed83ec039e768c2fe962e0da32f1b45c16b306a9a0e39da85
Date: Sun, 10 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778407233
