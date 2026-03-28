Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1707333A70F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774724694; cv=none; b=RUT7o5RGW1C4IfncmR4fKK+sFZn21fHj0OIeQNJ2o1tiSEgDvHMzc6jSBRfn6sw9d7ubH3s/Fhl5zYWWMWV9cHL07vgD48gB89+9AqeCyHIJRuGS9X+ccutEkYw23gZYRmD74lU7UjA19YCoVSJSMUViW4E0OJJIZeT5c0ByYcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774724694; c=relaxed/simple;
	bh=nVgdY/kFgOrQvXpA8k/4mQj8ltjlu/8GLAWQFgfNHFg=;
	h=To:Subject:From:Message-Id:Date; b=KI5zcLptemh8NUs9Oxy/cAhup80PKzhrZsdd/eTDDG4Vc7L0KS9fWEw/qVX0BUGNaf21du31Pr14B6/PUjUvI7MbHcWPUOMsKlAZi6EXIO9eIwhqEaQp6r8UXrarOu8KIxPOeKMyVnyb4DazXY/dC+Ma2ri1sPf4t1UxT7rON70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbY1fY6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbY1fY6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F76C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774724693;
	bh=nVgdY/kFgOrQvXpA8k/4mQj8ltjlu/8GLAWQFgfNHFg=;
	h=To:Subject:From:Date:From;
	b=WbY1fY6zz3eZAL33w7GkjPqmc5xzPld7AYEvu6vmXZb+AOVWkRR+YCe7CGNjzk+2z
	 eyFPERNN47Cjb28ahdts4E7HiM/HL+ySlm8hFArs0ueZOEF95iooO3214e1JZ9l1s9
	 7nWteXWk5c2hk6RPTGyQp45y5+qr1FSTVsHqWIlYdmpyHTNM8EkAY0bcErZNbNbc1Y
	 VCzbEAPJB7++/NitDE2bgjJs/Fueedt5wg4okO0KiDfW5DAehiIdX4w8pQ/qN06Hb9
	 3C7UyhqCg0oXsL8CZQKSrte58xyd5/NbMfCv8G+6pMrwGKc3u6tuIHsSn+76hsbLh5
	 XNl3AbfHdxs8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F0B10F3DF2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472469358.32116.2451180091385310146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3c6bf27d14c4cb69da20fba18f38bc8a92e8513164004f320f4f445792183e
Date: Sat, 28 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774724693
