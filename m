Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8AF331A56C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773674694; cv=none; b=VXFTZO1wzdfQlOi6P6dFJQYOAjm3/hk/UM3PovtriredPrf97ZfaZAxz00CbKX9KB4poIQno8+VMyMbXwxogMhPXMBv0tZWJw2/S8peUm3MKEGvGD4T1GDfSxQ2oQ7F0V72cxxTkGLEXc1CHjfKa/F9h0FO47rXBrH9wSSMafSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773674694; c=relaxed/simple;
	bh=mWymBtJ9RAO24W2yb+FtCc+Vg2z+6yCXMRWeX47Fw0Y=;
	h=To:Subject:From:Message-Id:Date; b=VkFN59a1NNXvljOOyX/Lczk1EURD8lQaaU5oSf4DbGkJSeUHJYqn1RGREp8Oim7ge53kks+VHBsoN/THnTjs0IDoW8uJRkjh/264NXgrg+tn/afmfM/jR4gqb+1wDWbXboxLt4ho+Wy1HZDcbCIe7yKWSmGIvr+n+fJNL9ul900=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORcJ9CPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORcJ9CPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A9C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773674693;
	bh=mWymBtJ9RAO24W2yb+FtCc+Vg2z+6yCXMRWeX47Fw0Y=;
	h=To:Subject:From:Date:From;
	b=ORcJ9CPd756GmdLKH6CT72tXBBbzVmmHjuvAWlyz0HGq2jm6IIdppgrvy/Ln777QV
	 2XBw6QEgAlmkg0kd95NyySTh9Pt5ZdkjOmNn39x7nKvMz4rdYzig+VbkjrqjFVv3kk
	 R3ph6KqmjiVrNz8uw7gRIxmbimil04Nxh1lEfbkcXstKvbo7rbSyZp/LUkvPAawkRc
	 5DyigdJK/vVrcIzNoDSbmVFuuLovu/C9wdA5Swc9ubJkzB9yA9QRvznBjPfprHcQPo
	 47GwNpkNa6fvEmmV8KGD3Hp9UGFu6I2p9jfxmyurA8pY9QgqSCkgsJEvVGn6Xzs+Bv
	 evyH6DXT26E9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92082F53D65
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367469358.20423.3749626071964632815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffa53226c2aea801dc9903c045806aeff97ccd0ff7091e89dff980f1a437f9f
Date: Mon, 16 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773674693
