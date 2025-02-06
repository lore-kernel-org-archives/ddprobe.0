Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE1F1A5B9B
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738854355; cv=none; b=t0IgC1rDyF/YQtUcG5UtbV1W8A7eLKJMA7dSs0chHlGKGA3JB/uqJnd1rYYuI7XCRQpqNRVg0Tv5SxACaH1cd5OFkmj/crNZWTC8I9qyOPUCi9Y2tkOYr8KEfO4a6G3iLHla8xha6Ck/IR+12Wo1cyKa399BL3WkIJqVl9VMN5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738854355; c=relaxed/simple;
	bh=tqtjEYS6DFHSya4k9L+G/ddWM6/7qdAYjL1I9iLNuQ4=;
	h=To:Subject:From:Message-Id:Date; b=a+NiSQLfrSgbWfnOU5aZaq+B5TaoS9Ndf8l0JV6Q9l7D6r+NdcX1JdvnUYcrw1zmvjoYFaxRjUBF4/VU6oImrnyGF4W0/YCfhA6TkDw/Ly9NHd+7b/d98NtH18beE2Nn7KR56k2opRBnmyxZdMWS3Sm2m6VvObZEOu1n+gde28A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHFjKBXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHFjKBXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DE6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738854353;
	bh=tqtjEYS6DFHSya4k9L+G/ddWM6/7qdAYjL1I9iLNuQ4=;
	h=To:Subject:From:Date:From;
	b=lHFjKBXRFLDEY1Tojn/WvJjWNv+iITlpj8A0i7tu+o6zUxf5ka39FqjTb3Jd9+KEO
	 3GR4u0Y7v0OiFNIqWRgG8t89eOesaSz7iyxClLKhounqa3CxYcxPsmc4Wka39G3r8G
	 H04iACyKXS9BusNzKLUi2eLTb4JTpRzkaqezqvHI/ixm1ZLr85V737egyaPk1ek82p
	 d+P08Sa4T0vn1FX2Rk15SUIlQ/iSb8NmqaJlqzaLs4VBFRPkPybP5NuMAHuzZf/M4X
	 zfbVW1vMyNXCGhdcH9wC0dtEWZfz90N1oxfJ38Jbyuie0dt5iipx1drqZDK9cDgNjd
	 ug1PEZ14cVFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C434CC02198
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885435378.397.17685933327620744725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa759a45ad414e1255f25011cb8039370c40190b1618c2ed1383890d96d87d92
Date: Thu, 06 Feb 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738854353
