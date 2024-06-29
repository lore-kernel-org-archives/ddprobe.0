Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAF539FD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719649463; cv=none; b=GlL5QaDb63eXWmwDVLr38AkdbFTbXVRAzqEDFgfsWpw0frW6w1dh9Nvm0ga5LLSKGk82hQEIwGlw4mVSFR+z9sWJ6y4MKW+AKeV3z+9RW0/hRRvwC730ArXfAxabks1qE7RNHexCtkuxP1dcAkQzOISSynPIovqHEECuTmpoDVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719649463; c=relaxed/simple;
	bh=LVLoEguiBZCOSg/480fMdn/VVow4TYYUVdS+NQUw7iE=;
	h=To:Subject:From:Message-Id:Date; b=Bu4rj02rhgaKn1fHt8dx0RBia/qlOMyLgRb7XfEwONo7jwzIIv8oH0oek0VFo+1+5rbVgD6RO41CEoNTxAT2Rc9aw6Wv0GUqPC8FZGaQY2EOmh+4CqOjgtMn7OLArqBb2ypRaha40VlRmLuXfFucXZgnoUsVridBL9mdZlwMDfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5fzcFER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5fzcFER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB5A1C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719649463;
	bh=LVLoEguiBZCOSg/480fMdn/VVow4TYYUVdS+NQUw7iE=;
	h=To:Subject:From:Date:From;
	b=J5fzcFERF0Ja14Fh9a6vqxFIMbGs4G9aiA9vGrxOsGfwtFoUSC6e5pYW/ztMA95vO
	 merETa3VxYUvPJEkaVWZpwTTrW4z/vWs2O9R3bKJvWnWwyimQQ4XDhrgiMKqE7isTL
	 +f38iioJpSO5Ap3qTvwMvwaOvCIxlPa6QcNZPpMNjKkx+W6nY2Cnz1xWqTVtT80L6y
	 rZrR6rlmJTSTa/jbLeStpDC3hHw/QnDXjI5mGOqvBB48d55wcLIw5eD8r4FUUzY/jJ
	 ssp3gIHroyldWWvrk86iIZ/9ZIuBaB+HM5gjFQHFPGUy+78QyCnLrdyIhvyzuOPD4t
	 3Wx9PIeMHmdcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D75E0C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964946282.12213.4780647541443378542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded0ff686e4f9bd458bb4657ba7f2da1889606c6f3e9038be5524250bc214729
Date: Sat, 29 Jun 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719649462
