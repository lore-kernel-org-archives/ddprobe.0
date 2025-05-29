Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391F61A314B
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748527194; cv=none; b=RNwN5eJRPK9KC18j8FdlgBRGqtJhnisGzP+QiNgklqvErfQVrZX+Q+Nm2dMHS88R+H7P8eLuI91ouyD4llA6OSXlj/W66x6GWG3bS9PVvh1pM2RgRJO1ilxqPqHbxEHpdnqGgxsb8ZTXhv97QKDufFeA5tNO9GjmsVA5xBrGWW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748527194; c=relaxed/simple;
	bh=xmqReKQdGGxtC6YPw5JO7NZyXwfXd8mcrAoC6oZpxrk=;
	h=To:Subject:From:Message-Id:Date; b=PV3owJG5v9H+ObiLsH9pRTlXktUPGmzgrafS6Fv6BGyDbaW2U+qEL3i3H2B/qtrit0ym0DdvCjJlfrcjy9wPcImE0W8uQdMziDIQza41+M4msMpMIpwg10Kz8bi6UiWifiK1pcgCtfZOmC+m/afNxleHxGKW0xyudYuuS+hpRBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+Y0Vn2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+Y0Vn2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D400C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748527193;
	bh=xmqReKQdGGxtC6YPw5JO7NZyXwfXd8mcrAoC6oZpxrk=;
	h=To:Subject:From:Date:From;
	b=Q+Y0Vn2Pi/C0q3hmJzwV19JA7Cf2rJzhP1saPbfJ0ZzWTB4n55F/u1UMYHtj17/G8
	 pjg62q3XMkHsq5n3FRmwyhWi1RmgNrVlqSpZA3kDJ4+c4TabC10ZQGVlyxTcPvSRW5
	 HaPBVepdJOAjk44O6pWhT2Nbe0pO/Dozv1ccsD1td07XNWRDoWw3wcj4iYd9JiuDLi
	 XzvPEjn+aWJQUz7RjJcaONBs+QLVGVwQ1pjJ4ztJS1OZdqd8o4ZkZ4OFwFB5WLbxKE
	 5PeR55P10IM+MA/MEsxUSC8l9nNZiITGtiSYSe6ltEF4+H6Rca+EyIGQ1PO6ojD4ma
	 UMVl40/rZO9iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD46C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852719357.17843.6102639423961891423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b7533e7d54e1c55243ed1fdb602938f082c4417e45d772b823f84f133f2f02
Date: Thu, 29 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748527193
