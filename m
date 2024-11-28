Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE1533DF
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732760154; cv=none; b=LmOzeOUG3G0Qr4TcaHoFVCumaSzhO6eg0i4aK4uqSWdrJjB1XLrUoyVcNSWLUgTM7BHU52/hGSvjkFlpZwZDH1YK08APZLCnAQ2BwxfwHiDAxobpXQCWwZ3p6OUEZtay4s+2CY/CVEsS7seU8gq+nCj45IgH4QMow2Wchg2qxyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732760154; c=relaxed/simple;
	bh=P3YPRtAaN85yPuAcid9oKXbgrD7ftRfnHgW4DYsO2Jw=;
	h=To:Subject:From:Message-Id:Date; b=BTF2AJS0WAdHPHOoyLjvh3U474pWSl/WFGIznqX/HNixDVit4rjZcdlmGRe3egRWom3C8tvvTIyngsbnId7rQpwQOO4ESXJiN9k7RO/LUzWMPlrSTRKrJeKgII+xj9I7XIFu2KVP8cmar9EipCSwI5va658vNnfyI5iu/UsQ7+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exWz1DA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exWz1DA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42ABC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732760153;
	bh=P3YPRtAaN85yPuAcid9oKXbgrD7ftRfnHgW4DYsO2Jw=;
	h=To:Subject:From:Date:From;
	b=exWz1DA7Xs+veuyo6pjDyr3lgKJ+ZyCr0T3GbjKgpweQzuikMopOnMvK3zRqjyJkw
	 W37SNRDT/jSy6yRtH/DOyb73/AH09RSsE8KOSeUVM36aO6/Si9pmGpVXiICvx9rjHA
	 DJfjccRvwF0VYPXSYE4RUMnkkYT79elxn/sXiNrZRM++7YeKDKTcEIDri5fMGx3NGL
	 Mssox6Ih2qolXZKzGopcCrdMhMbnvOoPRyGZAOQukos27QU+KJWGEK1mWckW8G6xlg
	 7erNRSXiyIH1C2ws7ZiMHKeK/QRC8iTjc/STkJffgVd390dOCwXtxxIDLe0eo+Ckq+
	 o1pc8T4+QRG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F12CD6D253
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173276015362.21743.5256225703010508595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ab35417cbff234a0572723f2bf26f7480b9d5cef4eb2a7eb2550a384007906
Date: Thu, 28 Nov 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732760153
