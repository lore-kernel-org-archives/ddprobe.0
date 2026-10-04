Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A26818B0A
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791073234; cv=none; b=kEotDUc+DM+kmE8Ml0kaxFpLytpJVQ7TnmCMJ3Vlj1auuCI3fTBCsdN8PbyBW9MvaNBpT9V0PFBYTFswmKrkkvCLcXF9fggI1bd6BYudekvM7WHYA7a23uKYHenukz4L+e+6aSlSnY1coakEGzQO3Agx/uhmP8w5P18QQLLnmjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791073234; c=relaxed/simple;
	bh=f8CVExkYyA/ibZpyON1Zsb0Li74u4j5wiVbK3W5Q54E=;
	h=To:Subject:From:Message-Id:Date; b=ESGB76gFwB0y0fQScf1pjkeOHcO9V2+vqVzjHcziLyd3xkJn/JX9RL1VtGHhCCXrFT021myUoebvKJEyHZANmdWnDn03VlqNQDyZVA5r6FhNWUoGLV6hIjiomGfjJ1YPTxWfZFsSfIWzua7+e96R8r1J+crvhFQmMtvQUYcS1Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM6o7vv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM6o7vv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3A2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791073233;
	bh=f8CVExkYyA/ibZpyON1Zsb0Li74u4j5wiVbK3W5Q54E=;
	h=To:Subject:From:Date:From;
	b=cM6o7vv59y0QyyaXCoxcgsMHX2iN+Cqgc2xHXdlF5oOPa6mqAvDwY+2QVo93CGpsd
	 3quqdcDa74DFCav2ObL9jH5TeBOrK3KnRtXRZGsZhgcWi/TpAEg1jwICjSpPafy6GX
	 E8/bSBNwB6H2J+/5jmdG2BW9h5YK7N0TKMVMPGAO03xYb6UMWR3DJUdBx9pvY2vGrl
	 i4oGFcGyU1EscvoP431e1fA9Q+vlzwUKE0MYLC4p/kKQQFNzV+OJNLyxbel5AF33Ne
	 +yW0GPLBRIMI8G1BekSBpqxclhTKkXa9yPyRaPtyzEL8RxWvQFEtSZC5qz5alvoeu+
	 39YR0Gqp0b8Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FC9CA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107323371.13060.2948939090274765514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705861f4959d68efb64d72118dc99399312d0b97ffca2c64d5bdba0dbe5190bd
Date: Sun, 04 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791073233
