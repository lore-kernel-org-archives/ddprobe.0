Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B91C3090C2
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758200994; cv=none; b=O12rAYosIUt3XftyP/ffQ94EkEsh53AXy9fWdpESGcdbBdzzUyPxn+qj3JDhD9vlkDAfNDtChNBM8nOQyjvZXH7JhkL/eFY1AsS6a3vKJvQeSUuIvmu9p6Upv3kivXms5cW1OPdyiUmqAhRv9EVpHMMr5jDXE6ctzgYTs43omBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758200994; c=relaxed/simple;
	bh=KOkm3Yg4++Y4fLU7qEOKgHleIRtY1BlDXUukKCt/Wgc=;
	h=To:Subject:From:Message-Id:Date; b=ROI+KBS5/hXDXtUgnRh39A4E7uwYCnkJAQ/iLJmgKhMDVmf/rUa7a/1zfYjX+fJOzpKXkzGCF0JTZkFWMyQaVYvzk9so+ITrzM7bqyAvTkXPj0DvfshUjPc7YjXtoA4o6/hPNlDvKuTlqxmZJNmrk7qVzp23+TXJZo26wPk+VdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWXvncgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWXvncgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E83C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758200993;
	bh=KOkm3Yg4++Y4fLU7qEOKgHleIRtY1BlDXUukKCt/Wgc=;
	h=To:Subject:From:Date:From;
	b=XWXvncgwUc0Xl227uKaRJYu8HwCTIv/Wu2wNFdvzn38x/OFwwYsX4lHg1DKACT/D8
	 xA1vTsOiYOPvRwWzjv4dnxKC+D6lcu0zK/+g/832I6GvN7vnITSJXBF4IQWTMTyYgc
	 NpoyUfv0Bk6bcl1mvMKU3N183dOFiLEz+eFdVP5pnVkCiZQDVpvXCBarxZtMR44GPB
	 PaoXByCs1Mc8ztRueC9WzE9nJQaJr8WXwVjiaF8DZlbRwGYM72yHYIglzLQNZ8+/Y1
	 Tve/U8CHGPAA7k+zC1Y9q/1L9Rp++rnCuP2wWhZUovTTDzjP3simV5y6av4CRBovTR
	 LuNgmBc8DP/lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8A5CAC5A0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820099363.21833.3049175395688788295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a9bd906acf34602455771a71d946ce67c5e6a14e543b420898f5a46d42aecd
Date: Thu, 18 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758200993
