Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D31A3594C
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759103395; cv=none; b=F6bTlngCyN7pGUBA+B0613XGncOwfGDV8CRSSETgk7N9HAb3wW3ZhD+lDMJ0lEVLAA5lcXvzCprEtHWq6IzW5+p+AudwlVdyozcA4aY90w9h5wJoIMzcXAy1NVWmVbEI7i8hrS5xBr8TkLslgRJOsA9CDKgq/rUT9Bu0KI1WNJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759103395; c=relaxed/simple;
	bh=uK7eN5qmLP/KwOvQs5Luwrika2uW79RnJCsCkVLegHQ=;
	h=To:Subject:From:Message-Id:Date; b=MDFYG9BSrm3Q/h/To2Tr16ao3PpQsyYoD44D12YnikOvMHDZR5/rUHEQkDFcGCsiJVGvTHweYz+SGUguRt4v895DMSjPvoZOSvySK3J4V8Vjl9KcKb87DizSoKu8i6dNloBbHHzzpCk0UNd041xL4o2wmnf1nQWme8QBXz7+JtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tl34Mu2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tl34Mu2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBC6C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759103393;
	bh=uK7eN5qmLP/KwOvQs5Luwrika2uW79RnJCsCkVLegHQ=;
	h=To:Subject:From:Date:From;
	b=tl34Mu2fcuLsGGwgG/ZJFO+7sPax583pCAujwDOPGtDja+ErdLdnMuYCnED1+qB9j
	 zuDcL5Zl1yMf43g61aiUBxGUEkjaYZ15wVwD9GCBixPkAnZh3fxe9pv5aXZdVLtQ0e
	 xOQW8N/mJX2f/FFnIrKO5mjq0+YJst4i5FVVj7pnKMlt5alJmZd6fUBOAX3jeMwgcu
	 +Z+pKLh+O2vmoVdLzIFj7G8z1F3/A0V0gmfRtEbv8hQG3ed0JUBD3sVyC6kmE1kN5k
	 nqdzdJssUQ7BsWwPycEHJRCuV+Uzr/nWzq1/nPedw9RvhscbitorhLS1kfGvQIIuOh
	 vcApIgHg4X2Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98621CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910339358.17203.10299200320210828539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68327f8ba092aecbd9c0ae20a1fe9c175ff7e39a10da6d72667f0eef21410414
Date: Sun, 28 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759103393
