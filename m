Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3313D76
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735380354; cv=none; b=CQXrwIUFXUxL+5cI+nurWIYKbR38YfjkTQDogc7gk5yTZR8tKaOxRiC6e+4pJC4gKfmmFSS/dYMebktRarti6fsweV/4OnP/6iUPDeR5EUMMQFWPVf0v1irE1xP24h+erIwdhySowlKTWqZlzSUxQe1tukenMEUZOHaNpS0o/hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735380354; c=relaxed/simple;
	bh=xNR/2+J6UFMqTphagr0lHiCBTzuaGYIce+gFv4LHIOQ=;
	h=To:Subject:From:Message-Id:Date; b=T1nIQjz1+ALQdGVOVYe2p2oorKVXJspVS9n1RP0RaAc4S+oEWcBBX/jMX+deO15kJHh1sBsxyS/YDUJxGw1bs+k4KOlxNNXXW7GgqbnS2fSQMfg7VtBGhuZfd0cSBXRLY715LKNX87AXQtOHF7dBMeZTUXUc9+u57oWScuNIii8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JthLDbEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JthLDbEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4F3C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735380353;
	bh=xNR/2+J6UFMqTphagr0lHiCBTzuaGYIce+gFv4LHIOQ=;
	h=To:Subject:From:Date:From;
	b=JthLDbEkD/ioQQj3Okt2ynU9OPZEFRtlgTCd/VZFv6CMDwpBR45BwRwEclyZ5Ur2+
	 FmcWeNxEHreVjF3IYu758Q2Fl2FlScFyuOqIrBN4sxAn6z97wl4wh2UP0X5kAy/U0j
	 28rijMUhFQd3CJS8khCJT2sXfGWKznyWdEbIe5DHQjl7Y6KAedg5wwK60j8vW8ymdB
	 YE1gmm0u7zUMHzkR9IxKy1+rugkOsoJuYiN+2LKRSwnIHyMKkJCQijH40zYVMwD0yI
	 gwsVOvUr245UuJ0B+cmeFY7HDKa7m/QnK6iMBpWJ5u6mEKWzK4ao/NU3knUdH1s7Xc
	 nb+6BU4Ab7a+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BB7E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538035359.12724.4019826303978841583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7592f9ecd17c9ea6a2c13b968a77cf43a8d7c431f10487706c1d2be30dca65
Date: Sat, 28 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735380353
