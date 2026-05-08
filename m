Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F92EF652
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778233055; cv=none; b=WlOODr0rMosCNi01fE3418iKFEJgIv8oJkCY/JuxpCk7FQ7SbE+X1ZkUtCL+T1mnk2WBP9Kv45LxBSKaX6U2yqgv/4GWuplkQDdurR3HtkvD4RAlsImEYKCSF9otai+wcaxEhry3RKYUBKxpkq5eTjWxmV//WUvH96DHrBEbDkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778233055; c=relaxed/simple;
	bh=yM7nwggMQne0vIoiHNliAWUCmig7EZhZjNipOux2KFY=;
	h=To:Subject:From:Message-Id:Date; b=XKllFVa7r5CCVlvCGqiH7FenOteAlDdUfrSOCLNWOGhDSYmx9PgAYOi+EGArpb0W3B7CY9COwAyw3/M3wSDyaQMJbD2XqTAxqsn3VRdq0dw+bOYWcgyTba19NkOe7VvYP8lkAb4aVlKBku2vuZ/oC2HWK4jBx3HzLICVq1A2tvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8zxC2GT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8zxC2GT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79D9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778233054;
	bh=yM7nwggMQne0vIoiHNliAWUCmig7EZhZjNipOux2KFY=;
	h=To:Subject:From:Date:From;
	b=j8zxC2GTOEq6PTLpmZ2z3BLm/UuObN/DDN8u1Z1axyCfZtdm6CK8HeJ0gK2wZiax7
	 KDqAsQ02lfn7vd8kqBsU1QPkhkiGdoNGCml2gE8i1aK8nTwIBuWspWUT96CpKkJ8ld
	 Kr/6EoQOP1efn70o+RHmLh5YRxQrW9WdkEKlnOzdIvexrwyotpepQn2gh7V5HnHQoR
	 AGNEWFUSHNDP469ON5O3bYCWVmS8ZnhxM9IDs2+NDlewzTH2hhJ9Od/nI8iIQp2juO
	 yNnfjykjklG4UPsiIJkcBATUy+zq+9OwcVTMbyiGRKwdJrI5Y5AIY8soszlLtSlo6m
	 yjkRZmZ28LGcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E9DCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823305368.23185.6590009815447385586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c669eb67c4bf49dfc948865459f901bcb5cfe57218f09a308952417c68e9cf
Date: Fri, 08 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778233053
