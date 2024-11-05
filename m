Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D41D186284
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730789154; cv=none; b=CLCtsDybif2DXz5RYqP+aM2HFhs489CUl9YKdxZa0YfydV3peye0YgLTeMkoHPOLI1IU0mD/sfdh14YSJnk9ZRz+6+KWWFGsBf+nGVtxERBHj0ggY47Yr/38HVtQYo7Toz4XfmXq96XylNpYI9PHkGij4xQzEqtR1ptZRp9j26M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730789154; c=relaxed/simple;
	bh=cGY9Pbg9kjRdU3o0eFQeLvwrG22pV5qY4bMj0gVsZBs=;
	h=To:Subject:From:Message-Id:Date; b=f+YT/VWN3vnNm3iCeWEILoP6bQEmwNBVBS0U2MQcIOTgUgQnvLK//jD6f0PbzD8TLqyCOUKkV08H+q1McOVzyjlOVAHeUKRpaWay2Wgz2NLgzHHhvciLI9H+6HtZwV7fLqkrYt8eq2N+pVT71QdYoT6RVMDFk6vHx5lSWxDiKg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubvDyci4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubvDyci4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBEBC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730789153;
	bh=cGY9Pbg9kjRdU3o0eFQeLvwrG22pV5qY4bMj0gVsZBs=;
	h=To:Subject:From:Date:From;
	b=ubvDyci4x4OV9paRgnfVlDGfYNoCmgfc+WSllFiBftaf8Fvf47yCM17RvQHt2oaEI
	 YcSm++EvFBpMGaKqHd4zrzFNBrfST5kOuc7gijEZc8olpflW+AaYPGOIDfrWm/nLvh
	 YZuykYZ8WFWUjZ7GSRX3KOCxagVdkGwpoendaPz4bZhRGWZqDWr/3JnNRS0hbe+dVW
	 7b9OILg3hnx38D3iXuDM3ZLPnhGceFrl3dQ7zhIzc23LkX7LQVOWYgix6+D2M5rG5S
	 7J6CTGqK6397on3cNFZvCjDI3feQ9UfEcMhkSC8cAist5ih5juGVFi7heekD2W5sMX
	 0y9fJB4Zi2Ftg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5ED1CA38
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173078915368.2998.6276526891968602257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f78e08ae914ddb3e33aa491e232d8873731ee00e82962073300aabce1832399
Date: Tue, 05 Nov 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730789153
