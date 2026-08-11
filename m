Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211183B0AE6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786481434; cv=none; b=rTm9OmWKIYE6sWCeqdip+UCQlPmB+YRd1OCQqkRdXV0zPzgD/0D9dAiDXABfTAJOJV9DJmfjV0tR+t7ER7NSahDQ0gWpgYzXVTvKYAmSHuAW0sAA3WkQxb2z8ykOu5L3Q8qvaBLFjN9uWwlZZjjmdZrNQ7dEFyqMMLVezdPcNDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786481434; c=relaxed/simple;
	bh=8cwWtM5lOiCg+v1nOMZ3qessi4tkyXoX5xpVY1FNtJg=;
	h=To:Subject:From:Message-Id:Date; b=EYQvNvs+Pe0+0BrktCTi7clXvlQKGaywQOhFeTumcBp6W2z4JkCnMskxTfRMWXMH1DeZDcNeQ+5ab/NfbcSDIb1qAFYToW3yDdZWU8HyQELmF3JBHfz8jS4ZhKwdYk57EUFnj8WQuxDlJsyGExuw7m4yTsemSMjmK1976U+cDzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m23Q8mE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m23Q8mE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC695C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786481433;
	bh=8cwWtM5lOiCg+v1nOMZ3qessi4tkyXoX5xpVY1FNtJg=;
	h=To:Subject:From:Date:From;
	b=m23Q8mE3GKIqcHksSgFBFBHa4sGOjA+MHjTt58F2YU0uvIjBF4jy9bd7BPxooaYTC
	 dsWjg0QGmfmacktShkQcl4UQldkXgBwDE4SKEjZ79ImSpKE7PpPjN0H6bFnKglCPTc
	 zLxuI2VSI2PatPAGJSpRAVmzb88TE6m5OGkC62D1d5uSzhmjTywPDJNl9fDK95yjxC
	 sm2c743G6Qko19eu6ZGVddZjIXoGcShCVB0cRxhy1BtS7TX+1VXo2pOCmVYd5suiRz
	 UlX/SJoZsYOkf4Y1ttIudHQUUtetgnBaX1H4LcviLeiNvFjkBjQE5Fv2iaI1hpyN4X
	 8PU+lcbNTJOVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA497C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648143368.30634.9864073245554830752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778ad431d0a16492910fb22e0e58deea8d3dab4308748cfe5b89f85faa069987
Date: Tue, 11 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786481433
