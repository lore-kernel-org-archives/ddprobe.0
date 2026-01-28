Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34772DCC04
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769627633; cv=none; b=JlQwd8fZEuN89mXur4QBFi3lcy5yB/M5d8kD5Cdrl+QMFwr/9QAlVuHJzjGHFwsIXpJPBXoMfi1E6YyP0ZeJR6yqw49Fbo5Zq+I8n9o9jua3QTwY7XXaaV4hqFXbjRGea4jBU2krf6FzC5oc52nKjwv9B+JaQIrAlXSNYJHkdP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769627633; c=relaxed/simple;
	bh=TdPrSw4W8Y7YeR712KvQ7AqcdnGQb+T3zhacP1iEM0o=;
	h=To:Subject:From:Message-Id:Date; b=VNEqDkD7D/7kd4/T6L2qUQYj1tP6WprI+k3ycMutH4fyKEDbfTnEz/H1XgHQACd6kYr5kHC2rWhIxFrNycUun6NTpwyR+kFxcLJq69HcQalAnSdWaMp9VL7sHersYBHWP4u9qhqIU4xoOxrzYCygRklj6jQ7bunwuT+hvqUhceY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLNCpmnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLNCpmnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D687C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769627633;
	bh=TdPrSw4W8Y7YeR712KvQ7AqcdnGQb+T3zhacP1iEM0o=;
	h=To:Subject:From:Date:From;
	b=ZLNCpmntC0W9L5J6NjAk9yWZARVKBNOVJB5kZ6gXf/CGIxNFjG5JUQsVYSYWNKPQb
	 kpRd1k+QQ59DTBA1GWAggc0Bedq4w5FslrUxNaSMFNS6117get/srEd/E6d2mDM2qy
	 JVG1tKMYKDqVK/z+ZmPQ4z54Ogq6l92Do7lr0weYP7knvt6V7QxopFPhVQJcBh33c9
	 VnVYeQBIVlAzplc1yTKFS6Uo6Dh6fwGH2Ny4CjojmDqwF2HK3i16BhbXDiC9qPu2TN
	 AW03cr6XK4wtxlbWgzidcRnXZ5q7b19o8OqrptjGWpIMbL9unyJIFlvJ/J2clEmdoZ
	 3UrOZqhJ5yyoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F560D46BE9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962763357.16053.14400693084620207593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8843fbc7946c1db741519e0e9d0f6aa82522a78c3cb0b703bea44c0988d71aca
Date: Wed, 28 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769627633
