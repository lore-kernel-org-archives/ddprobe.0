Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A2D0179957
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716977063; cv=none; b=UuhLQ8JXUXU35JK08++AuwrwWAtWiqd4kbUjdoeKkJtbMnUCZ2O73Iys0t9Vf6U27IfcXPCwb6gJ4YRKVgbK17wxd91LfGPt9lw791wg+LDZL8zSuFwwas7Cu8pz3bgr1/NPPgFvz8LnxNkmZLO4ck/JvJWyz8hb8d7MzdEMOCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716977063; c=relaxed/simple;
	bh=ZpaHUqhJECn8qr8Y8SkbjGxLFPm6G2Fqh68hXxyGac8=;
	h=To:Subject:From:Message-Id:Date; b=BBwMdKjCqzky0VKfQ9iZyCUxE+h0FFJdKNA7v+p9wZJJCjTOqN20p3qx01b9zUgk3XNJD5r7VSoRRhHi0hcTyRSGvwLTA94fWrf/j5MEx9tW5A6SEDj/iNQL+B1d/b+EFqdl4x4BsjmzXCa06r8rDJow9YHsuD3RMWZdkBbe+JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSpvk8ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSpvk8ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 155DAC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716977063;
	bh=ZpaHUqhJECn8qr8Y8SkbjGxLFPm6G2Fqh68hXxyGac8=;
	h=To:Subject:From:Date:From;
	b=PSpvk8ejCO5eb+5j1vZD7zlSMr7uNCzmsJmlC/4vxEqh8ji3aYMxDtsyxtbZsFMpj
	 vYkrqqxHWOg7ijlA3WNhBkvhy2OC1Hy5qzXikPQdamCBx94qhbjFPJv5gazY1BA2QE
	 JuTqvsVzhvxCz3/1U9m+WtsFD1gbZwl3HwkRpUOV3IPBo78nYMSCHC8fCAsjXeEcXl
	 n8HwOa02evLeDsIqmEyMUtsIDszcMjXdmmJ2NajFbVp8c4L/ANB26Dsk30kYtkW2dU
	 kgoHbtFU7HcyUUUnt95DXHscyW7zCta4IsqgV6J5/TC76bxGJT0j/gz8QU8Bhh8BVi
	 KKw+GtQvIwTJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7697C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697706291.9831.696217350126112740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9264a017824539c2f863da9fb2af83eb5650f747a03f69a02bf9805ea708209b
Date: Wed, 29 May 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716977062
