Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A25C2ED845
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752248994; cv=none; b=jQSpxPhsJfCzMAA4510mCkdBfWmPQvnxaUGISeyTCdJ1GNscYNdGA4L1XH8iokL7XYdZRjto7fMqA6dL0lObqmUOYr5KKTtY1ahLl7PAfcv875/yDyGaHP9Q4OiqUUljd8hcZfxk/o5BHuw/IAytvhzhRI6epCKAv6air+YZmRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752248994; c=relaxed/simple;
	bh=y8/r+oTv6ECCio2lc7CR8l7oM06W/NV09GoyOGtx9BU=;
	h=To:Subject:From:Message-Id:Date; b=JN3UgSwKnqHVUQpvypMXXqMqDn186e9okWJEWO3fSKJw0bNFJiok04rNMMlvSsk2Ua3UardBpBXWo36ivfTZcxz/SBtjXUJMR/kxmevJUOvawr1A+VC+sJ16TQ0MzGMKjJGxH06CCAhZiQV6wv1hOXjfOwFMchUziRMutYXGNzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/NpsDXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/NpsDXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB28C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752248993;
	bh=y8/r+oTv6ECCio2lc7CR8l7oM06W/NV09GoyOGtx9BU=;
	h=To:Subject:From:Date:From;
	b=K/NpsDXdBcFWaCPXuB/9PQiqFaCEju1n6VDoMag8tMnrtnmzuSeycdk4xe4bgwYFV
	 /VF/OO06Dxw5fGcTLtVRmXMD8N3IvrdkDTKBeKfLiIrBT8YCOxV2d8yrz/IrYBSJiJ
	 EwuPtS4nfXyGRVQTi7ov6GQsW5UhYkvNxjiD5Bn7YbF88R6Ws1j+DjgbfAUUn4mh0e
	 qLzg9xyb1oHm1lnhtddg8hy86eO6o8dX9lrOWxXTXFgoQpznN8oifZ5kfRcDMuWous
	 W8itH9aJoQEoTGgRvpOZmliInVoACVy2vVhuJvoQx2sm+9X0DMjKLSsk9nNOO5+jl1
	 BShUHxG4MOudw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A47C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224899358.25152.15447807764928364112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429afadd600cb04375d0ff0395fbcfec70e32ae459b4b70e11ea2f814ebc1d3c
Date: Fri, 11 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752248993
