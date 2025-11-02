Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5C2EACD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762110594; cv=none; b=j1M12w6O+wnMMDlBNxACjSQpW5bQ+0ya4R5UuRQm3LNiTpsE/RS+PhjlznQ2TRKPwxW7VABKHLzNKZDAxhqq8hqmoZuk6F5y4BxshXnGFWZGSbWWE0fxZTQpI6XNCbO5NdNJpt6XEFQ2xw+YPktnL4tM755yz93Q0fJ0Fdm40Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762110594; c=relaxed/simple;
	bh=ncxeO+XMknGfM0tOhifeAkJ5fErnIuhwj9jfIb6lCl0=;
	h=To:Subject:From:Message-Id:Date; b=r8sWyi598knsol6YKwt3tcLIkoR8DugMt4fTkSvOXF0t+BQ2QFH5IC2iYgSYSHGhwJNP3pdyxbMLtdQwzjh2ktqH1NyebSiSQnTfk6GPHfQ7qrWr237RhadZcXEeDD86PcmbY8zpHQgYPCfTXjXHD+STH0AF0bZuqMIP9XyrAAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q86p/8Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q86p/8Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CFCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762110593;
	bh=ncxeO+XMknGfM0tOhifeAkJ5fErnIuhwj9jfIb6lCl0=;
	h=To:Subject:From:Date:From;
	b=Q86p/8VdRXD8YWuVHwpnD/asbfPPZXoaRGCJU84g0amxzABM7b6jioEn+nT84NuGk
	 7bG6mrVOJ1IgdehDM+t/BBuB+6xRo4D0bexlGuVsyI7HoiSiCxDHtxVa9af0IwEQlX
	 8OZqqzVIsau/pkX61j+YzRebUpU+mBSi8RGKsoUcA4gKMfpkbOMAanMEoPHJnYyLQM
	 wkrXKXMtv9r+1m7Z18hrz4wC3DFKe3fvuE+YCvUruIpKZDqlqBGpz4ZPekZjY29oE7
	 19XyDIwsbltCJ4TerzhpYNDA5WE+LXCiqk0VJ9mlWSFLrSJtuzmqXPwkkreMHd93JJ
	 kXbImb3sZYHUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963E8CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211059358.25170.15653944435207231004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ab90effaefb7ae657031d4753712f4ae9e97e8837a07aac9c655307a89a2ad
Date: Sun, 02 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762110593
