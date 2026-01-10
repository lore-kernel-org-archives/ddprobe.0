Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B13D25EFBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768074234; cv=none; b=j315bo58+XwiKvceTMVcoGqYeMitS4ceQM520m5CYqkqgJdlgbIWfntxfir1queoWCo9K7XdS3J/VJx2eeJNoqew7WL6hIsesAN3XAZ673OflG8ubQkqfVXTa6b2ZcDv07Da6FL5GrV3lW4qbNf/gT+2G33KAqOB32g9LIWqjCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768074234; c=relaxed/simple;
	bh=8YHYoJ9q/Vn+7TCdghTLy0KfI8vasJGXTdysGPt3Hm4=;
	h=To:Subject:From:Message-Id:Date; b=uyWBMFfK5EMRLNCm2PoFKw5cDLzOczVPP7xl+VamBwyQRAg3aQWwiT5yIUJZ39552RDV58FZQhvN1mtRC2xJ9cmP1mjZsmi39lJh8cAfWU2O8HhCylDtmTCTU2qrgkDoTPz8YS1YdLAXHLvU1LsH6WSe1k4FJlyRMC+3M3JDL64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMgnISic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMgnISic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6192C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768074233;
	bh=8YHYoJ9q/Vn+7TCdghTLy0KfI8vasJGXTdysGPt3Hm4=;
	h=To:Subject:From:Date:From;
	b=KMgnISichJcW0lv/yHUkAKtkqj3nVmzgy0QHu+aFBhRxoaGiUndHOiNt/yaqysYzf
	 VuepAYQPAq50bN6FIauTR+ws2VQiLxpYbvVi/rSzoSWiLM+sz7tPT9SXE8DJ9hHneI
	 c6XZdBBii0hxUbh1L/JYR7u7AfDpko9/hEaN65axKMGw5Wuu1mAUqNq3WhK0O5XiYB
	 vjm4HDUZm3KWMcDGYcZeAwSY6sWVU3Nx41ZOHOp0VxDYXy1GOQ5TQtHNqmUVSr0iEL
	 9Sd/0oqeQ3O5oYBdh2qBVcyyZRcWrJxh6Lf+SihyRMv7/aMZEhdi4L7Vcyv9F0ivdh
	 gK+1rq2VkUSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B8D277E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807423358.25129.8977658428429196801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7717facd422d7c8e78b7cf88213f3c58220837624bedc41d920d02fa6008653
Date: Sat, 10 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768074233
