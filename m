Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6852013A88B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720196723; cv=none; b=hatiHqmhw6T1jb1Of+hwcknHoCCM4lu5D+zimC14CnuV5tw3IurGNNDPXP8MhsydYLxgTLKYJdojMCOz+sJQQI6OKJRWdTQ+wOx+3szj+JzI2/VA8z8xM5KdlKQCcv1pUWQ/UuEjva0y7ZENfkC7v40kbgGLR28IsOb2wi8aQlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720196723; c=relaxed/simple;
	bh=UaXgItMPAzY/S0iwdvbYqeL/VgdL6h2CjH77ykGUOrA=;
	h=To:Subject:From:Message-Id:Date; b=Al09RflCIPEy+nZiO7c2SgOV1/D9QopwkUoAFhBjOEhEbhZ7WB8v1GyoTXLn8FDkGFd7+CxNgnGDUHKf8UmjHia/BZqZ68dbKATss1CTO9TwkKXotqj252Mw09dJhqFi2CRBYwltU6phn/41jUVtxOe0ssvLAXcXT5wln68QkT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXlC5gkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXlC5gkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0BBC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720196722;
	bh=UaXgItMPAzY/S0iwdvbYqeL/VgdL6h2CjH77ykGUOrA=;
	h=To:Subject:From:Date:From;
	b=rXlC5gkn+gnQH4DOX4/6Zb4FRNYyU3t6sdGwRx7dj2jxHNOPM5zhmKYVwysdV5rLf
	 yZagNYZppC4/N+/9iDZuLkbHa47PEEP7pCg+ykfaDB+gNs9yGXBAkWqiaiWfyjukZR
	 GF4qvsH9JsfnbxeSvFwZRzOiAJKWQYghI7a4gBbKhAEGcf1mocdQbuNjp8kpIQlpT0
	 2SG4dxJbfCnEwPnuqY74v1C2Y2cRjICJUyfeREyeGZ7FywcRIbseVbNeAXLOiIeLrN
	 sH6hZyn6H5r+wLtvbjb0l1SX3so8eQxgZR7RiVhq9hsarZ/v5hYeYgfivFSCIbucbN
	 p2tWlxAi71alQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C95C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 16:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019672279.24854.17539154883366819248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657eac23e91812e6a5e7a285f8c6c7da60cdf479b9e91e99a6c9d88a52ea3e96
Date: Fri, 05 Jul 2024 16:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720196722
