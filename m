Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D523378823
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780184074; cv=none; b=cl12z0Pl5mDM8rgRfkEfF9gY6gI54gGkS1O+2oJjRn2JJ/CEowTushYpdu8EGghlX7hoy+uDRWqLMIPJ1uG9uDQt1dOrYppSbDHHuvMHsKAMEatEvXWuptZ7RHsLyR8TkweGehxNr3/TJPlyexsXEoRkWijjkPXXo1u/1oFDZdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780184074; c=relaxed/simple;
	bh=1kkyNs0valJS8kAHxjhwOcxRFMMjaFo58OJstBGsa0w=;
	h=To:Subject:From:Message-Id:Date; b=TCUhMeJj0N+mVSf7URmFSqy5mvd7iiY4ZR13yx8o9LV2YjfoDlxLE7nAUdtVQ7CZzuuTPjHBxqPIifqWaySDxLydnU2fjLoVcnMSpIb54h1sx5b5ohZbULNRDIC7MUUDAWSkYQQAiFJH7WH8F0bu40McaZdsCehakMACWWYbSUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/f5/abs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/f5/abs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD921C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780184073;
	bh=1kkyNs0valJS8kAHxjhwOcxRFMMjaFo58OJstBGsa0w=;
	h=To:Subject:From:Date:From;
	b=F/f5/abs6AZUyBKI2l8gQrHlJjJemZXUF1iTLXk1VuqSD8DBMtkWxPmgTw0chWDwx
	 woVHMdXK/v9hj6LbWuK8I2Rlsjtevp+29U0Rlr/Ch4yjMg6xk05OGqE+3K3r1PGnRp
	 skwAOxFg9nW99gUXvRZohLmYq0h04FLl12v5CSTLOrj5qohorY4w/Zcdqv7zWDVgWK
	 WrFLRrqVa8S9kTazMI5zWlnqhn98AWlOn4OQbxYrMW+0Qqrp6GS/IF/NZFjii96yfL
	 elHXu1o6UBYC7eboEeikEsh6XHuJ5NsCxn8efbwMWyb4Fm3COnKL1HPlm/rcvmk9Wa
	 J01pWugT7J72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80CBCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018407368.17793.392718546148286765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb1d906fd42d082ee345448282bdbf27b232fd0b8c5b481c72f0496da393ea1
Date: Sat, 30 May 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780184073
