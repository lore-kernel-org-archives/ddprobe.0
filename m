Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312147DA68
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731862554; cv=none; b=F0VtvmPqcKumIL8N4G9pnlJLDIEYe992AIQ1E2j4FW6F+gQVn4ZAeo/O7Pe31qZQhKuOigw/IJgGBQLJYOyjgZkTdJBERnVLVD2zIfE+aIJBqtFfwpPzZiIL7E7Nr0awbMa17zIrl1XcNsI658E5VTGLbUGNvGGttbornPNyT6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731862554; c=relaxed/simple;
	bh=2nMojrlXS2e6JtI4/Xid9kbQ07cuG3Qk8Q9ihy7GaCU=;
	h=To:Subject:From:Message-Id:Date; b=Xpd3FcWQYGtIi+XSMwQswzE13H6R5LubW8rBZG5gpKRCaQNmk4Lan2hbp0r6EzELwztO8xvCuGXEXhcLWdZHLQVboSX7gx357NlL+44Q0vrabYrF/SGZFIfscM5MRhim3tVTWXLru/MyaNJx+ldMEPZImcj4stKRnYg/8JJCkEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICpXMq1x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICpXMq1x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9A7C4CED8
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731862553;
	bh=2nMojrlXS2e6JtI4/Xid9kbQ07cuG3Qk8Q9ihy7GaCU=;
	h=To:Subject:From:Date:From;
	b=ICpXMq1xXDZza9tfVGB6SACDqJbvOyeWzGuL304m38dfLRqN8jmGoodTCs8bki+pV
	 7ry8rBebflvUeMRKzf+g4tl3RHXodfKJjjLltFuL6KkGzChCWiajJxdAkR52L1rpd8
	 16UjfufSxGJIfZriuJk/EUxb8bvsmEkLPfOVkYZAk873iBQfjCXLEtz7DiFeLIVRPq
	 pHjbbGQZgwu1U1m2L3x0pUO7sMkRMbIxr2y6Qd6F9l8CRQplRN74oxo6JBta2Myq5+
	 uWaveOwjWt+uyTh/RhJBJqiLBbMjk5wDId5sDmfhSjLU+8fRcPkLtVd75SqlCyz6P0
	 y2vo3b8KZMB+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C69D10F21
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173186255358.12451.5804840041827259995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2139b76e96729d08b56a305321972a60689da76c6b06f3be0766c8e836215a61
Date: Sun, 17 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731862553
