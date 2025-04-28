Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7B61EA65
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745803794; cv=none; b=uz1KZYUSGIiadU2oPVhRTeEHkx3cIo2xLu3C2984zrREki02/yk7gcsUX8vU3exkTPHgGVwFJo+auIZPOtm+BoBT9Vo15a5H5ewFYey36HOeMVv+tnMPSWnib2vTNe8BVm3mdJu86++O8NwBRn0PrlQd3K6u2ixhXbshgHXcSYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745803794; c=relaxed/simple;
	bh=i6L00wR1oWlYJEGFGCwQsrJyDOrunc1frbBcU0jaefk=;
	h=To:Subject:From:Message-Id:Date; b=tmuWzZWDoeOWeYKBJdWvDHsQzWgknGL0q4d6f61kqtflldQ9je61DFTZ/BDjrgPAnDjH1lC41r8jzihtdOQpxO27QwUyGRRREhBQhPasJCGxH3poDkRGyWV/LfE6AcPlpFFTmo6SN0qkqLdS5uZiVkgARSz4AR9fEM7gGOyGXAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJI++z2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJI++z2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36CCC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745803793;
	bh=i6L00wR1oWlYJEGFGCwQsrJyDOrunc1frbBcU0jaefk=;
	h=To:Subject:From:Date:From;
	b=fJI++z2RQmqYd+OozOuFheg6e1GfZ1/6++SaDQTqQZ5CQLSSkb9yDmkrl8nxhBxZv
	 +URiknDZCuHIGXUeZ6S0sGHi5fzu5W9qHcdw75TJS30+dVNH3nUtlXxjR/wZEeD9Le
	 RbqQ7FpwKUBOOwDJUc3usa6sZb9A98P0CJYGTc9QeMHIbpDLXxJ/jP1hI4ub5yedod
	 6cMixBza7B4DwdtGKT1LMxG4WPPr8R8S+cgyMsW/3w2GmCPzhbezIinyy8XNU97NZE
	 1CB67PcK3P+4YFyqtk0E+q3EeFl2xBqjNWLa1MdJ02RQlByp2k3nx0TZsTlQWscOrk
	 P2CR7XhsENL9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D0C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580379357.3143.1284040733063244376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f421798e9f22cb837870749c98ddb7963004b57e8567bf07f6dda580f1a0a9
Date: Mon, 28 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745803793
