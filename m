Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BB023AB81
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779151834; cv=none; b=PEuxBZMTDE/7+KXoBuMKm71zVvxBYBT/9LsOk9QQ+Tv6QxbRWdOClUiOU1D8GsX8uwssyGjmEy5ZEq2s5sgsqmZamRJWQ6w57wCkfkF0M49odwn4v6A7i44Qm9viF26Mn8WpSEWHQ8rHQ1Mi1hrtlZn5AA0HqSbjSQdXxdPxzAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779151834; c=relaxed/simple;
	bh=F8z0VYAWEEkMNtw9jSIeeMqU5y/TvMam88z3DtIOT2A=;
	h=To:Subject:From:Message-Id:Date; b=ERmxYKI4QQuzY2E5Ivrkznuizto9sTGcQlFa84czrLH8aPIe9dCUqefbK5fipbMcsghNrGQlkqfQ4mOXXF9i3bnwAMZOX3FRwca+nURiu492ienfAl2414GtM8jI2vYiYr9K74Y4E336WzDzZjc9WP7g/9jKIopzgdi/RyuG6gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9B22GIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9B22GIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28FEC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779151833;
	bh=F8z0VYAWEEkMNtw9jSIeeMqU5y/TvMam88z3DtIOT2A=;
	h=To:Subject:From:Date:From;
	b=p9B22GICTSBWLc7oc+1OGGt9NFxAmzCBWbuPrW3RPdMp/LcshuP5/8tNjUVsCM/LP
	 HJzHCr3/8SLLmSE8ZoKJOlnq36i5B5x7SD3c4NbgZJXF/D/j6eVGsPhnoBUPJN4yoV
	 Z9rnE/zCV1X2k/gDhIGotBfTcGYSmHVrRW6gXgCI4HWU/PvfEMvlRbt+pjicx/absV
	 hwTpW91dK+NSY7WhaIki5TmRAvrI1aIuJCPtDHU9VmUsKMSknAQ0OXOLBmyZqCHgxg
	 684BVWJhNMJMlJWKu5tiN8San5gFaJqJ0nVE3DohwQ9qu7g3rZu9xTnKDvbulCem2c
	 t6QGiJPV/YdAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD276CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915183368.30105.2003297472415400534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a68b6afce62be7847985d7a38054b294fc5a973ef066ecab1b79376e1b33b35
Date: Tue, 19 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779151833
