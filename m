Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EF3212556
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756729194; cv=none; b=gdk5XtQL0DiYmwPge2CLPj6xU/9kUiFQr9segKUksw0teBa2ijKP+f1R6ORsTM4OOHWXk4/EfjObukUHiSHeBewFpOesUcgjGq3vWJIbPtEYS00j71+ZgSJen9HTQuHHkmO2c1EUwNsYQMWPogJM/Sw6BS+6mMBBvs3GZilu59g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756729194; c=relaxed/simple;
	bh=zRTW2bvvH8ydBaPdFzp1DOpIygUheevtJD7g9I4+rk4=;
	h=To:Subject:From:Message-Id:Date; b=EjvQxn8FBrwOzZvSbM7ydL8jzxVw3PxX5Y1HTj8AMikURhwfD6H+ow5mKq/H4PYMxP+bhl5GHeVmBZAsFeAfuTP++00W7LUi0QIKh/rUzrxJyoyfxW+EDJtPHSmooZg/3wcHDuSUSD5/sLe0T7qWH2vdffFYFF8tuhs1N5hGYgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZh6QB8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZh6QB8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BD1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756729193;
	bh=zRTW2bvvH8ydBaPdFzp1DOpIygUheevtJD7g9I4+rk4=;
	h=To:Subject:From:Date:From;
	b=IZh6QB8UsSmWFrD24s7dYziaE/DPyXOY46cNJQFznnPnQRuI09zX17qG8I8qNIGEO
	 lNZ6tl/qwsaMi3mkbtaJIJHhBfiN1DAC8Aw+t14a0zYgp1c17Ny/sb8cQlp28q/uV/
	 XbqHlyjbtuH2CF9/WZH1akAfM96VC9F17GLOCyLOM+GDvmddLUQ0Yq1I6OxD9dhapR
	 mjf4Detx5GeKu3e4P55vJKN/tOJk4Uyj4hzuxKSYkCOcUzOoT9rApSz9ojzrZG8yX8
	 bRgwQuet1YOmW9nCwZbD1CIxFL0f2e4S1UBkTUHzN+2873/Fkan2UgNA26wmsiBkSg
	 iKSVhk/iMJo4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8D0CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672919362.12581.900891934467127722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8079782accbfd314e16d039f15efdda9a11b2c6283b581969a5da14fe0752cc
Date: Mon, 01 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756729193
