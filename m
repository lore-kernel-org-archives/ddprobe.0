Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423ED2EACEF
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790533834; cv=none; b=Dc3TBVHBVOP0uG9yFomsnH/+l5HX+MlhTO8Rc6C213pNJY3nr+fBPwNIzrjze9IogxpFyugLpyn68QDS29SfXS7AeiA6SJI3Mlgy+47h0LLUjPGlP8BhTSIHBUXLtvt0zudBTZbuGpfKTcQipgmOPOQjQkJwB9iNO1soD+ogYWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790533834; c=relaxed/simple;
	bh=qgCPHQQ4KqVBBRsYvzNkTNSoRB8fNs626npZILaNi7w=;
	h=To:Subject:From:Message-Id:Date; b=lv+29LoRJEzDuk/K+nEIxXNMKEnu0skI/791LNQyOfIr0RsY9sJziY6/U1RycwD469dOSIGnOjIbhOXrWnzpdkTJR906WtLjvNuZYxnkCz7C8I5DOG6q55nLw8GupkYYMAsMWjUsokRPWKeMuxRNVColUpQJv9t1efJLn0ceabo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDrZLnAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDrZLnAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40DFC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790533833;
	bh=qgCPHQQ4KqVBBRsYvzNkTNSoRB8fNs626npZILaNi7w=;
	h=To:Subject:From:Date:From;
	b=XDrZLnAHxsb9gixm8kWR60ZXbb7+PM5w0cIeFXH6rIR9S+sMPDurwTGccINNsImMr
	 taaJmPFHiwNE3qkrbxUZqHEax79e8FQzMqW3/foCIePvImLjto1aplJSPVcJhUPSXW
	 JB6KLdvfwFA8BtOPFjlL7xle1uVVSkoe5HRk+buWE3n1kJTwP6Q4+KutK8x7qUx1kf
	 fF0KsvuNj4FWmusYaBX4kHDWP0epVT0ZVQsuHO0uV9v+0QUXdTi3zAVrJvI7zRJIhd
	 cuu8+Db4swYSOchulhoodsKzmtDNZWfVhMq0Dh7v6K+mJuvXCLWlOn/OVKBCVZ86+m
	 M2Qf8FBQiwdQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE73EC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053383369.19245.11844255569775133575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfc1619e03e4a4a20236ebfa0dafe63f70061afe69caa3b54bd9533dc26675f
Date: Sun, 27 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790533833
