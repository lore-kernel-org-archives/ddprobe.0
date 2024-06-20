Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D9540862
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718866763; cv=none; b=il0M9a+sxFGJGL5whlZG9ropzKvEVDBEZi6fPUcEUbEb8drUXUPROiaFlbAloUCiIC04k9EMnmanpjUyWV3xBhQVIxrKn5sQyF88Jo84sCbcYVO8VNx1gC5L13mxAM6shsilhS4f4+gXFuAIaV+s4I4bbzEQjkRdubp5N+5ZyK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718866763; c=relaxed/simple;
	bh=U1k6HPLwXuQBf3ADA8gy1Tpq+jyqLRFbSBfBk2g2PWQ=;
	h=To:Subject:From:Message-Id:Date; b=A6AtG80H8jHeWYRZyyMTVxh3vxDVm9Hgg2OafqPxrmejeG/4LGMO79mbNAsLzua3iTppbZOiRFYHbG5HYiDdon2KCm3pWTahzl9nO/j5ckAxbzvXChYD9c0ghuHupCu34zTvRzLb3HQClfteTPD3OI7O9OdQ4gy1n/fRvftZBDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfjt3oY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfjt3oY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF90C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718866762;
	bh=U1k6HPLwXuQBf3ADA8gy1Tpq+jyqLRFbSBfBk2g2PWQ=;
	h=To:Subject:From:Date:From;
	b=qfjt3oY8m/4vPOapTpRa1IHfQRMkFKVpML5uXOvUW4//siVDYU1GXsSP6ljj8wU/e
	 MCCk9CLGW6HOc9XONoqgrh/SPdeFawKjypt+xsrq9voyel15zfrZLEl8+p4megoa4A
	 UNX3EJUxKOJ2VpOHkZrkoyMHfWWHux1E+BIp527Mv6zhcjxyph/rTVGDbqcW9+IvCZ
	 5T4C6q+v+65OWTI2RQv6jeVe0W9HHP+cjQs8zaY5502ZFTjV9UDPrySuzah8r865ar
	 umjGn4L79P+6bYgjJqxcBPXpkDZE/NH5X6dZmVfGjS++nGvsAlqJBR26+oRNUqCXRN
	 0G2DVa3uW2iaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF58BC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 06:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171886676277.20642.4228043478011313711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63083deafa4142da3f5304e30083a2bdc865fab3b65b25a94c63abdca983ac3f
Date: Thu, 20 Jun 2024 06:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718866762
