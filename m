Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8F51D5CC6
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760734193; cv=none; b=hrL7f/TR/yg6OIClmU37XD747MasI7KKI+H98zaMT1lf8VD5eJzFOsaO1SxRHibvnh27Q1t+0Y2QZTWfsR33Dmd0DSu1HRxmNbK4EI+q3THBQpBy+siSRLqOessPWf11YpW8Ki0XQi796HQetC+l9HTM8cCiTv8D6WKzcEYXnPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760734193; c=relaxed/simple;
	bh=DfiKsh4pcszeBYWhGE1oB8DTH4O0w+UeJ/zZvh+pnvA=;
	h=To:Subject:From:Message-Id:Date; b=rFUbNDaHx5Y0KjxXf0M6eHMRZPcdJVHUCR8PnbIc7A5VVUENl26VUirMHFn1wn+BZNsyezfjdlAUluV9BzKeDeZm6fq81hiiHm3hOyfKrRhrHO58I08Z/XsiNSPq4jYicR1roOemLx7rptqvfBEkkfdOye5HgLbFSYzgsMQuVyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9qT/+k5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9qT/+k5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760734193;
	bh=DfiKsh4pcszeBYWhGE1oB8DTH4O0w+UeJ/zZvh+pnvA=;
	h=To:Subject:From:Date:From;
	b=b9qT/+k5j/08Hwz6q0HA/BRkvYSZlcyjxwa5Ny+EaNAsgjqo9QqeSCVF+PVITbKst
	 exabX59iF+M2O4Hr9iKG6EucK2w4m4VFyHQdaGDtcDsvRr9Rv9WjGRc4F9UsdKhoBa
	 EJQF38xFlewHfZha8r9orPJtcVbvR9XiU3S6/T5qIuAi6AuOWAOrsnA1YDBwnhwZnt
	 CtjFaX8iXXSwrX8dIkQ0pzNEoXoA2Vi3MZdOv05IL8bKjmPAsfYuaZr350MKiMY0iJ
	 FfzxUGFPEJKUuZ3T0EwnbL1A+U7mpTVnHCTtZedJfkmncPMx2X73MivKvdPeUoTct1
	 BgjuCrL23TSvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F7CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073419358.27401.14064048921508156240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd6df16ff178d0c48cb64fc232afee1b62276478131dc8a1a2159e71a831a11
Date: Fri, 17 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760734193
