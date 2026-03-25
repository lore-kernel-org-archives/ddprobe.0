Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2AB3D6662
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774445094; cv=none; b=Dsi66kFBgGj3DZJlettXMCBFAYr9ytSnk2PM4HibGBVRi+8q/vfnQkshlSIpvgVb6sutzMK3Zt0457Xs8h982aVgHLPxKX+JDKIE63VuHiP0AYxPxCS5Z8iEAoCTio1BE1gjQAgXSz0kLKzhyVpYq5M8rHLeIdGsbZkA8syspcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774445094; c=relaxed/simple;
	bh=J6n9oUv+kEE0tvQxHQHSKpKdhMFzwWCYYWG5aKzp6f0=;
	h=To:Subject:From:Message-Id:Date; b=D6mRsRmtoUtVHXSz6GNfNAbd40/Qcpuhm8jdI2+dK5QhP0YmF34IZMcr9mGkLT4UWHxGIEvBwzsF5ns5ruAaeNFhd8mvGMQqNX7+Wi+lmP909trnp0jMvRznlscjOwsh7eLrxwk72oAmm2/wZ1HZ5JERboydZBKPtx0APgwj6Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIJJtDhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIJJtDhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA495C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774445093;
	bh=J6n9oUv+kEE0tvQxHQHSKpKdhMFzwWCYYWG5aKzp6f0=;
	h=To:Subject:From:Date:From;
	b=lIJJtDhxVvlqjfLJsHa3iC9mcN+oIdsVKRLMwycK+3TF6o8G44JZu+TfpAii74A7Z
	 /0Oi6VG7SKIFik5+2GyBg9RRKw1bWr0vqJvXVUrKTsh/Ga76Z8zK95RpkulkSm+doi
	 OEuIVSHZqHz6p0z5/clhg0EXEZo/7eQ3TZdbKIWJjKwdU4JGuswsXg4K+lh38nNcOo
	 iuvAnhqXIMEr+yOR2qU+j9ZHgI+XlyGfXLdjpwK6Wxja3nI1Om5vdFCAB8jwTTB7j9
	 NzWH3SJVPJVhRmBsTHgjFpf7X7q/oi5UwVRShzBAxGOs9whPSL1oHTGnPvQHPqHb7P
	 JZ+H4R6xTyIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B9106B535
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177444509361.867.7053109420325750719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58e6cd260885af4cd343bf03bf1c7bf75679ee8b3231831010363e6f3437571
Date: Wed, 25 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774445093
