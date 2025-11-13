Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054B2512E6
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763012994; cv=none; b=mI9L3rO8Hh4v5y0mD0IyOcfEpqkC0Fj3u40TdnbZwA1JNxEyrQAZ6dueXNXroubu5rIsvJ3Ix22gkTvh+wx3wqdEWM++BbDo1Mh1mGugG2nl5/op2kyRcWXB7vUF0AxAcSOd1V/azw4P4+JDQZ+czVgluZcMsbGA6Gz4mNZmWHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763012994; c=relaxed/simple;
	bh=S4WFRYBPJAvLNjxeUtQm4bV5CdIBrVxU85/Mvxw5EjM=;
	h=To:Subject:From:Message-Id:Date; b=UwSgQevYCAPjTEtrsHQyX1qBrKACeOU4Sn9Bd2eyYLobtE5aqcRcAQNCAIyH6yVARk/Mj6O7+Et+broqZsdx2hu7dZlxvstOd3VVgwwWYiUoyYixzZScII7cWf7Z0KCNRg6t4N5ILRVQUZHS5k8WQNW+C6HANjIdXwcXiGVqjTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gx0kG2OJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gx0kG2OJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1036C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763012993;
	bh=S4WFRYBPJAvLNjxeUtQm4bV5CdIBrVxU85/Mvxw5EjM=;
	h=To:Subject:From:Date:From;
	b=Gx0kG2OJvpPeOD0/uw8rk1eQ8oCPfI0Odoukk+4clyA/+ltaKlE3pefnqrtaLXzf0
	 CPOhaFGkpKUIl/KIITA4Cb2Rm0kNOFTd6v6h7lBOX+WXl27M+0P58VrfdFSat0+wjb
	 XTEgVNz2W59rKOive8wtsmtKwOqSEmUsj9JvaljsF0R3yiZwzaQ8DJXzfSHxifRAqI
	 iOWnkIFx1pFCiMhvqIl2wIvOnDKX1jH5JqG61VX/yyu7oVNYHn2dh7OHS1sQDGsC+w
	 izyKVyYAXj08mkIAW0cyPEgJqS/608UXS3kSSvJJqjrkYkf3HeUnPNZkbq1Y/NV2V7
	 X4O7BB7UIzA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005DCCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301299358.1001.4168191264033081660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f52f63f4d39f06f3bda067a478f7f64f25f6bc851543a65e95beee34773af8
Date: Thu, 13 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763012993
