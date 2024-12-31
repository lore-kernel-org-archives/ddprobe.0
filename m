Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2E21534F7
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735676754; cv=none; b=WRu8URzc6jrO90HwA9hBDK0rNuyIuZqXu93y+bMbUKs5lYublqDCeYmjEQmX9WvfOre3bTDmEVgVyt40kvbmGqhbRCazJ1hPtlOejXyICwez63y2pdvfTJsUapBGaZH9I5JlJebTDOmdC2Ze56FFSKFpn0uDo8Q7FaEa9rY8HXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735676754; c=relaxed/simple;
	bh=OzPqwyXrgHMNrldC+mlOIfLRIc4E171RKo7VIbXK5/s=;
	h=To:Subject:From:Message-Id:Date; b=fPBAjHYYEn4lJGq0mOWiHxplQlSHpVRBixfpwzAEzNIZNqX4nPPo33b83Ppy57lxjxlIdGDwOQFTN6cS6Y/AYOtplK1Tq1R+l3MYMC+SFSleZ/cRk6NXm77nh7sTSakm9IqctK4kIVSB7ZUy0cwK17vQqpWGpICxxhzfdG3UsvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDp21RwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDp21RwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0840C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735676753;
	bh=OzPqwyXrgHMNrldC+mlOIfLRIc4E171RKo7VIbXK5/s=;
	h=To:Subject:From:Date:From;
	b=fDp21RwMw874V3zGlOcK8VZsElLxjHPdM3nHWKuhjRCD1XITe8IuxWSIcEDqT2Rc7
	 gmHgnueTmdLEfw5jRLwI/M84EKEin54gBOD6byXQz13yfktrB0czl8L/tVjpTs3mI7
	 jFS5N5u/Fjo7JQcIUtGyuFs+aWV5gUHuVjsygvtWY3EzDq6wk6GVq2fPht2RmuK+Mu
	 KUv07nJvdbvmTs/7NnCU5ff2UiRaPurns440ESZFrSnrGn3Zw9jwUo7dgCuEJ3phY1
	 wq/HadqYX1n0+zUgKkqmEUUi4ljf9aW5jRws8QaoI26wNgr30TCoZ+uLZMRI8MxYoP
	 Yrup9tcH55mWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC8E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173567675357.9495.3870492535773440218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be9187dfd77d4bbdb3cab3cf031305c2e1b169b2b5b82f2708b810a22b91c9c
Date: Tue, 31 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735676753
