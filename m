Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA141898F2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722355553; cv=none; b=CEJzEq+eIMV0FK/UCXT5lg9PeFzoo8thcvQHKmremkjn+U75ddFS5gs8q+cNI1Fh2Jtc9R7tykB9rpuLwdnqwROLqmoKb9bC62tSF8hOi3yj3Se14YMhpxXkERH53tdY4G1kkUYT0K+/4l7oSOtD9oJjYf8bzUX56OBz9nmFrxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722355553; c=relaxed/simple;
	bh=McUj+mXAECgh9dvD5y5ZAWHlVNoNUoKCDfz6s0Rstdg=;
	h=To:Subject:From:Message-Id:Date; b=GmnGxu7QlLboXYc+zT0BIaey2YYSgZotXep6J6/3TB7CQHMiIlcHoyKmHuAh3AnrkTf0QHadWs1yl9lu7+MbNlEeh3hOpFsxCLbDPm8l1TFptQl2xKfFW3WL7reR17LortOenEKeOomNbmzBRn3/mDQ+2nK5hNoZMHi6eCVanGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvL7iYRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvL7iYRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC595C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722355553;
	bh=McUj+mXAECgh9dvD5y5ZAWHlVNoNUoKCDfz6s0Rstdg=;
	h=To:Subject:From:Date:From;
	b=cvL7iYRJ+c+8bxBRRKf8EutjBUhEG4rm49ErWjj7VBOYIRri0T7gfKOxZfzFmN2TR
	 TCyiqF/DjYryICP6QbouU7rmVBM3V3mUqHl5DS8UVTTVliN2ZwLKuMTJk/CDv3PgIT
	 BwEn72Tk5oPXVQ7Ehcn/I5gAyUwM0koHAGIz7HXci/nQZRarr+HlppHrFzPVJNPICH
	 eoFs0ILERvc/clCeMZrLVz7LD8vHuuuIIXyBAE4PPW+ZSNM5ir7vduPj1M5pQ7B7RG
	 0rHEnugEtyZwO7pX3e8pQASlR8AohfYBZ3sVSVa94zMwhEiptfvzT/kb5j1m/TThK6
	 JbMvfBqab4eKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972C6C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172235555360.9661.10383034432612946653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4663f24f8575c1499b55da29e40d12a2c5a2807972f99257e54346642e7e726e
Date: Tue, 30 Jul 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722355553
