Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC01122D4F1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744130993; cv=none; b=YCGqVe3rQlXu0YT+kRP4SfCuG40kdVjvxkZrL+AJvsGLOZ3iVwdbM5qKGz9llkMjR95WXLltDCLyFa5If56/LdQctRQxtTK00eqD1vaQ9uj0pgTnfejjXyXxQbkQMN+PIzfr2cR2cmfxpuC6GRq4F027tYj67ztz3o6vBQ5+5GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744130993; c=relaxed/simple;
	bh=Vi/VURqFp7OkJ0iYP4knUgDZjKKs01XEPMkswmYUUj8=;
	h=To:Subject:From:Message-Id:Date; b=cmvzInFckjSf0NBr2RwNwSSY23OKGXwuJgy1GU3VeGnUs8ZiY5EqmRcR8iD9Pvn5bS78hMNlzYMWahiP+AiOZB5ljofjJZVu+//nnmcivqaCmRIps9inYELBKBJ3f7WLbDm9lwRAlXEZc8GS/e/bWFD6oWnxRz4QmjIKP4EHXuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIm4Q1gV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIm4Q1gV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FDCC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744130993;
	bh=Vi/VURqFp7OkJ0iYP4knUgDZjKKs01XEPMkswmYUUj8=;
	h=To:Subject:From:Date:From;
	b=EIm4Q1gVQaWs8zHbdx9RYb19sCTus3HwObE2PgARYoB1EHWWEKujv6aY6T1SrLD95
	 bMltktoM1UDTMovAMvEbKPYGgXP15Txv7SAdt2MMzh8p93CMdimoWK/bQ3D3EXlYbC
	 zFSFHGqs6Opn8Bm+DZCSFA9/KCKtltkFAX58efNtWA4JhfLLCpUN90UDHfc4MTwSHv
	 +6G7P7QDMIlSnxi7kWQ2UUJcTJgfhJuw+cEVdvAn5YwXWC26zdc/008jVt4+a2ttr6
	 N94Cs4TfdQss9qE1xULrPLivDccf9M03239TajmJaqyugFKTTicwJn2idRhDibivRs
	 nnuykonIhghYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987B0C369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413099361.17307.14815811348858730331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e511e7c9435a38c239581a7d913e3fceca05163b4cae638f013a75ed6ca06c82
Date: Tue, 08 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744130993
