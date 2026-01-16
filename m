Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F372D3A0E98
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768590234; cv=none; b=i1b0PxhxvvRH00y6o+/yxTrfXtiy/KmhyC1sbBvgKBxefjoBSYLK1ZkgaT0Zz/9LMfGcxsTVpLpJejfBm+gVb/BSfvnN4QMQtaOUOnw85p8x1091D4G+M4ZqgJtXisZ/nDo3bkpf0fAzuPh+NwpsD6uPAZxpvbD4NHcGkNgCE44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768590234; c=relaxed/simple;
	bh=8sj4P9UwD5cbAvrQLrRA5VKo6mflp0dZ7o6YXOMwO9o=;
	h=To:Subject:From:Message-Id:Date; b=ufe13c50GtkAFdCggrJTgE6xbNc3HLkz97xBd5PTqMnNkkW8+XpefF1BaXCW9jYxvjicfc0O1YVonJsdND9VyjnubPMMmVShQP86eSqx09C+lx8Up3JhqCJYFZmX7YF8iZIlzOy3pGGkBTP+giKfuRdA9fhTlZLLvf3FgwblorI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNs8C4i7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNs8C4i7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C2C19422
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768590233;
	bh=8sj4P9UwD5cbAvrQLrRA5VKo6mflp0dZ7o6YXOMwO9o=;
	h=To:Subject:From:Date:From;
	b=nNs8C4i7Y5XnSBWGr9/RV43cq2Br+2CusNLwr477yeB3hhyfuj2MYUrVCbrhsr4dU
	 HtTFCtxR8YB6Crn6t/E0jDBxwGGg5XRZU9WuCmPfIK0cWgaJ6Ryo0ay7ri6RDy5QEE
	 AXF+SxW0r3sPr1wt2RjWy17MKHOaWngjliFF8DFohqY+MJG2pYl7BZetk1Jcwfx5HM
	 lwLcy3JgeLCj5Q0OQ/lx3DWM/ZgTIFQ3TQhaXKkuPdF312ds2Vq5oORdA58wERNC5L
	 bLzS6fI7oXs22qx8Zr0l5Y0owZFaU5b52joA3+wHBBrsDTaZ562kUGAJRJzgh5JhLt
	 njC6dPg/RVxwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91520C982F3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859023358.20589.16550567006821117863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1690a0976f20e0ca0df24ff2e721f5d33e8aaa1bd33ab550badc95a065765d35
Date: Fri, 16 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768590233
