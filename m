Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B071373
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727795754; cv=none; b=eriu8srBL8B0HWfRNInKG/FlFlH/weOGLKSOK1cv/dcBVAWraUm+hZjHi7W3aVHqKtQ4wyHlHmEO+HkVlPe9cn4Bmv65nV92ODYiBuntt1GhXEe9zXHQf0vINc1/f8acPutmqON9axGPqOFdJFiYVc0L4NAiofLqTEMunsTiMNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727795754; c=relaxed/simple;
	bh=Mpd78Xmal9zNbjjQ1J03pe3IAoup8xO7VdAIpVwl9Uw=;
	h=To:Subject:From:Message-Id:Date; b=IKDT5uq73v8CSc5+elffYpz/1bXDiCzA4i9+Mta6l9Ua3Eke+lGoiZBPevqmoAH9riTPYGvakWHxr+1Ys9HMd0qJQyaKWqbDC39+uaMT39MKbsw5aB/iJghbioLxxV9hiidrJPm9SZljEgDSNlj9Q9F+hMR7zd4D2HwHnx9RoMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsUPhqcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsUPhqcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77C8C4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727795753;
	bh=Mpd78Xmal9zNbjjQ1J03pe3IAoup8xO7VdAIpVwl9Uw=;
	h=To:Subject:From:Date:From;
	b=dsUPhqcYVfBaElL3HMqrnsIg70NPj4CJnjaUxnKnoTL2TlQZz2kex09H1jHZmRAL9
	 vYKUMBAkQSpF2IG9MPpbxJ3gucgHSWvH69DWxEZUR9iIl6oouzBTg1AjJDAUO503Ib
	 Gd29tDYqcNoGp8Gcmwuk1xtuc6G5wbcnFxX1VTyJ6tpbpbmdlTnpdoXYT3irzhhyUU
	 X7vQ8WcqQui+VjX9wvLpdUYqXMHxIiUHSs0vn0oY/Epm8Ad4UTwU0BH2sPFcu5oT55
	 1AgbhEwX+zV9AWnHrqdqPEJWLuiOHyejrRxaL+HmBckpIbdFcygP3y8YSLNs9Afx5D
	 Jim0JOmjpWxAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E8DCEACD5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779575368.29269.15963547564118731635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8510209b717b0fc8aea7c629b588e5ac2d1d4661e6878fb7f3cc1ccdcd3175eb
Date: Tue, 01 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727795753
