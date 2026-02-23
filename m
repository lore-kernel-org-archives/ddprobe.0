Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2421C3C08
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771865094; cv=none; b=TD6bUMrrKWoGcK6dWhSOXlTs8iF8zvo/yao9So0SZn4BMBn6RnQUva/j7srU1u+M7FlUNPnptCBUU35Z4t5042AvOsq+N9smzyRT04WGBpcMjPZYFIxFqp1SuJV+nuXcy3D3SI+4BwZtsqZTU1eaWkN3SF4SSRVNIq1ens8e3VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771865094; c=relaxed/simple;
	bh=O3+1QhgPS0eWCEmRE/NXL+BXixMmoDWiuaabhdao0pY=;
	h=To:Subject:From:Message-Id:Date; b=YQ2CXMclJTT/ad21xCbu7VKjfYB/mZRSQgM7JbZ+CkRIkVsyoTnXuVHlfLqM+HbgvkD12FtwtKnkVX/Og68AEvbrFF/6pk7Kyxfu7rAakxHaeYUpnVJH3/0Z99koCA2J7glcO00SCUFu6AoP5+P1NV6GNGXgLZ7sSZ1is9fbP/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VApRqrPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VApRqrPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD69FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771865093;
	bh=O3+1QhgPS0eWCEmRE/NXL+BXixMmoDWiuaabhdao0pY=;
	h=To:Subject:From:Date:From;
	b=VApRqrPEWWhy4dQVsbUyKUOX8jLOVgW49GYBxTYThFsrH+PLVHRXJGuDL1B0jxNyH
	 dGPiRtSu+bAF4We5yY20rOacmi8yALPs7Cp176T0ArBpC+TA787IKin+tiEjAF5Wby
	 +FcXn9wLZSQuvIHPox1tO/zhYnhO9dpDnAiabGtx6vEzzhgxL0TyAdm/BFeayxxdb2
	 eeUREZiPmR7jpC3Sth6B8wIYMlZcMO9Z/TR0MIwvPBalKKU/x93IMXYKqIccz/gVi5
	 yQBa+8a7LR6z/fs05nDNLQLe7ZKu2WLPONWDgplPO/5ur23yatWFMZChMj+8Kr3MAW
	 BOrYnTaeicuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C775EC1109
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186509360.28302.16784242212468259078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6f473c58d86778a1d0c1cdaadf41775b676bfddf1b79cf487b7e4ac46550d1
Date: Mon, 23 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771865093
