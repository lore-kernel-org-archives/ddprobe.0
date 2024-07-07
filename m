Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C95C4405
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720326383; cv=none; b=mgt+tDLft4rYInsdXL5p7tGT/34SFO3LRzUZJEBC70acvap7Vl1Jcn/GQLs5+k/yoU2Umb4xCFoUxDQnUjcNi9iDW+GtM0upXa41SrFJUAE0+kJPtJzVUS+/CPCl6gnSdA7SvRn1BVdnskKM0HoaXQpPfj5S8JAeKNZIOxvDWE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720326383; c=relaxed/simple;
	bh=m73snfdu2Y40yOyREeYCyNEuNyK7zDmrjjx/5daM4Yo=;
	h=To:Subject:From:Message-Id:Date; b=a5mYqAdKlpCTRZoqyjdQ57t7irNGqS0ZqqaeeWjudp/5rzbbx1lc4HMMvR6kRGl4j4ZBUfWAlD3Xy6ZbgzcdbTpuGQcw3av+DWgAnyWUXq7dZMauQJGWL+iElYJk5c2MFSe5LH+4iN6oND+5UiZt7+Pr9IkEtIbELbwOagWzojI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMPoQByQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMPoQByQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD19DC32781
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720326382;
	bh=m73snfdu2Y40yOyREeYCyNEuNyK7zDmrjjx/5daM4Yo=;
	h=To:Subject:From:Date:From;
	b=bMPoQByQVf7BW3ZWcLVrAT4IaPX26EMLwZ1BzC2pH6rb6fSDJxY1QptAaI8XiGA5p
	 6jvbTjuB7noLXh51pjGSBcLsqV2Ub9aMy3k3l5Yrfrc9HUGEvZCoX5W6YNDsxeM6fZ
	 TLD4NIHedTLAYZtl/spBgFUHxrL/p+cqaSYcSP2BtgQz4d+D0K3Lu+9MojAgjUrFy3
	 ReitIypMeJ7iTZlE9f0Xu6LMi4kjjpsNpD7GNVi/Wd0Rj42z92aXb7ctHCnYYs2DBq
	 JIsKSxchsm1hKZ+KzpTfLNzp6OzgHWoKk26Nlcz1oYC48KaBaWZ0stpxvsiUbzUE9a
	 2qL97B0a+TV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C369BC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032638275.12524.1260591645770982330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f9249b040dba2a90a2c586d911cea34238c579928d9af6d02419e4acdd5c42
Date: Sun, 07 Jul 2024 04:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720326382
