Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4351B7F2
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706282296; cv=none; b=LcKbL5Gac/GPym44NcQI8uvAWFsoIesygVLjh7vK0mFFPoZFuWQRpqFQsgzLcJ0KdIUhre3P4hVqDvhTlT5af903LhXAeEYMrCqPadATB/dlisg7Ob0WNcsVk/daiZIeg3zhdmfhrz3al7D7wM7cAExWxk+SnaJMD5mFb7bLPQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706282296; c=relaxed/simple;
	bh=7c6KbwMWThnGNZxRKTwQzZIZ2HVOoD7EPZhAyM5f414=;
	h=To:Subject:From:Message-Id:Date; b=Lj9jqYvYkMVVMlzPwJQIUVDul6nCPgxEx49QYGF/6q7lklkgiPNg77whSE78nCfHMer8zB7MPOWHvCfPosw8vfTDPaHGgfc0omViWNjR4gkRbCXnC83uarSWfhwyLnn1VTHU8XmydujolcxFk5ncfaDMmmruXtBJkTluFjoxsH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOX4nSDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOX4nSDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75718C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706282296;
	bh=7c6KbwMWThnGNZxRKTwQzZIZ2HVOoD7EPZhAyM5f414=;
	h=To:Subject:From:Date:From;
	b=WOX4nSDcQAF1euCUX53juv6TBTDuUU0TyJ2kO7wtoxctaoJzjw0a1pmxDAZRM2a0V
	 72cg3G2+Z6h0lppXaiRFblljPUQ42sEILCr24rDwGJtu0wqqO/Z49GpSEs+EQtLTqE
	 lq3dLp2DzKFhdBbuCRCyWIjnsuVHwS8Fs/X+eDFeGz46ZJDr+w2Yp1uSwI5q3X/jds
	 qrakKqRDQiyX6rN5w8RbtiRrE8blWFYvromVi/zOGA4dyQZp5zEh4UT0hF+P8T6CNx
	 S5HRc6XulyFFBVWf++5nMaoPfT2bmKpb+DiPOiW/YPXFXmOyrQZxZzXHQ9MYktCw3q
	 b5wRLZgixCzIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7EDC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170628229637.21835.4413972964640619750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2994cb7df0c76d06f3b7014be8a4c59c249446c45057221428ae8820021e141d
Date: Fri, 26 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706282296
