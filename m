Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B9A214815
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744238394; cv=none; b=sCvCzMofBdDcblEPEo29ZlssQbEICSSF9SfnpdIzL/UaCxMy1QJq9uJmub6HFG33p89SRAgFpQXxnSImm7dNa8j2Q+Hu1l/0rQ/THDxQKMM+J3dXkClDolwQjT7YqjwJ30/58Dvci3qZoxHzMOVGcpLD4OyFRS2T6abWszrSlzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744238394; c=relaxed/simple;
	bh=4oMV3hieQCErQwkbuqjFEaH0eItwvvuUga6UqcneoQQ=;
	h=To:Subject:From:Message-Id:Date; b=XSRmiVk26wCLQjebyOkOWG0+pz4aAQ9tIAT2xYCqxlStVYxHCVzWd1lBDC1r0kr9a6LxwhcoVYualJy1hTG0M1pfuulsjFMYo+eIXw4MujEbYwQ5dRz4WA9hygn0wp9u4zRPR0AeUc77QJj98kFuWeUN3h0Yo+xmfwsdBqj1uXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktTkGDKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktTkGDKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED38C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744238393;
	bh=4oMV3hieQCErQwkbuqjFEaH0eItwvvuUga6UqcneoQQ=;
	h=To:Subject:From:Date:From;
	b=ktTkGDKAUyihDyNukTRcBbgb08pGhzngrP8uBfN5vpAq0+sMPJSRlLw3R1eBC2L8x
	 3JUumOEJmp4zVMXQIO2OWBCtf/On8nlDeYnuLCVJ6LvIZ+DqpHJf2wB5Ap0rp8HYbB
	 ceEsZ5c/9l2IqUwynS+jOyHgNCu3tCD9qHtWEPf7nXepEzACRzXSSja1MjnurPgAqV
	 WvdALj6HmlW0cd4DzDydgom1CYsmXgusw9elVjAyDnts4w4tFfHKaY1+JEk1CEcnw5
	 xs5NehoDWO1+o0tVcz3V0gbOJJ9blx2YS9jh0558Y59jYxjub1RuN0eNxncZD13aUj
	 KsV0ZfiNvvDyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961D1C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423839360.14864.17166243149108706002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336457057165d726225db9dcc19b91c8993e13db918986b229dabbb15ff77891
Date: Wed, 09 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744238393
