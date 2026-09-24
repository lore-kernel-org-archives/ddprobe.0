Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5311B463B74
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790284234; cv=none; b=K36lbK5AAD7olSojqCn0+dBx376WfgGji0X+aZVo0SQ42X6maIQadEECjbBw+NeCJNLOf2zGQpIiTKjtU99g1dQqmIzH3G9C7aKy4nS6raTojRvTc+AtvnCtbga7OYmw2diCq20/Da7LUaj7gxQO3LWQSeAl0MDLO8re1PPviQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790284234; c=relaxed/simple;
	bh=f0DRlL/SH2h3qN7eP1vlR6VDgfzyl4b1eTaGqjYcZnY=;
	h=To:Subject:From:Message-Id:Date; b=BYTPqVNx1eeWcbrtlRIUaHTz/22weDJ+RSlXtpwAlXMB9RgWe6iBCloePxw6wrL9lEQ0gvhGWkI2w4kinK5Adyzt4T80Xfp56PGZjJhVBuMbc9ICucfclNXwYJIpvmoj/J475x0+FVoENvsKnRoytOcMdbvgm7kFkY0cwU9sY/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQvYfJY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQvYfJY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE013C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790284233;
	bh=f0DRlL/SH2h3qN7eP1vlR6VDgfzyl4b1eTaGqjYcZnY=;
	h=To:Subject:From:Date:From;
	b=FQvYfJY8P539AeEtSbVkbHVKS6ioVvOOXlZ3fUT21UyPT0PUAX+VU2FZxcBOKnCYx
	 VopSDB3/NvcvoWKS/smTA13kiZh9HS8bJP7yw6CJi37bepK+udbCZA0ATnr2K9QTLZ
	 +SS0D/vqG3hZ5d80oEFGP9PonztJJao15v2HqdbNq9RdUpr0qADcki2vO9wTga6yj0
	 fYauLoZ8AsW4KOTK7afabXgi5NttPQGbXJfRXH2BcQ1Lq88nShT+P3N0VJTJaLfCze
	 AI1l2M3JQeknpDhK1QUhaYAAwdSXCShaBciK1ycGHtNk6KKnoV5oOwfCaENbp7tTe5
	 GJiBMvyzZKLsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81F6C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028423373.17329.2884586608898410795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b09136f32b7aa695790700ecdfb2f6337bf8311d272e3013c19a51e35bcc96
Date: Thu, 24 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790284233
