Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B51233E7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756871994; cv=none; b=RDgqIoTQcwATzv5zCbacSL1lK4yaKuzhPrCASv1TqsGlXWenTreE8I9qkdJmX3ieQBO3wYlaAkj4DfIUKra1Q3GhdRK2vN1uA15QmgoS2jkn8HfwSg+HEG2+zl4XkTSiqEXZSuRcqulZHmXZRhTcPfw8ik6gKoxBpFu+7BIoY+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756871994; c=relaxed/simple;
	bh=/wMQEVRzRsY/psOZANK0TkiX+HJx1vieU7H7MiUbolw=;
	h=To:Subject:From:Message-Id:Date; b=FJDwfjVR/b4WkPWhAh/CL8GBWUHyHfZM8SxEJEJi3XOVclAvDY/7/nFC6qksXL7FXYiB9PE7jox7TR9aVRACO68skGqV8/4h16K74I8rA1AcDS4JRVwA2e/2wK3ra1iXpekT/eZic1SdWj7VtZ8GPCTaqPoAW119Dwa881PH4I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPhXwrwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPhXwrwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE6C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756871993;
	bh=/wMQEVRzRsY/psOZANK0TkiX+HJx1vieU7H7MiUbolw=;
	h=To:Subject:From:Date:From;
	b=DPhXwrwAGHtJ6wYWYyZyxg/3Lhkxo8YZrbL3XUw3KxUaTesjYI4ND7vT7DEDB8BuJ
	 Ep0tsZTGvwKXIVdovchhWUne7WG2AxruHbcW5cohmS1WAmxTgVy0pTmMF8UxYgQgP+
	 g4IJAouFiwsGd9E+7lOrKX/gm+dyY49f+Ucz8qhw9YAXiJdpzymnv5e2zOYKcVA9Ei
	 B97WfNT+WvAHFK7OmMXOYym9m/zTwajKfAFcvyrWaPBXGoOthC7/rx4Pj+1SrF2Kbr
	 ajnoWGlSd0KSxsrdDZyXKXOK12iRP/1fhIBHklc/WN6Wmy2glEKyGXH95gR3GR9LNV
	 t2aS/2aem4Lcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F283CA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687199357.1603.12083530944353887718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ede8ef444579a2903c14259a169fd92e2e196690e124ea8ac7cd3756a03e8e
Date: Wed, 03 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756871993
