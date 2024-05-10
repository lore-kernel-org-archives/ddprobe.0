Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561B712BF39
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715346143; cv=none; b=nus/tpfxc9s8zfD3OYFr3909ILq8Dj3SbJNuQ/zA48e6k8lZdy89PVjFWkiOKyJGQw5eGtEFpFRN3QGNr1TJ8bBEdxYKczyoaKN0dsSEajeAcER26K5GXdF++MdlHTzxUzHEJQk05YEAgWZw8A/3ygvjA0fdK4UsZnmU6E9xajM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715346143; c=relaxed/simple;
	bh=Hy9JMto+6zb8uPiglqoFuv7o5xTC7AW5YpgXwPEe40w=;
	h=To:Subject:From:Message-Id:Date; b=A8JD/22hQe5+ajq0LZldVHvkD9QnCDqpKe0B6KBhbYXTr9QWA6iV8oIzh/cqgqbfOjlhyPOS2S5CLw7betebV8r6ZsPHCW2uYORy46OwcUryCB5+Np0RBHGL06y8guQ+yjLj148ltVZB4sBvRxm5BM9rwLgo9eeHIHyu6oOgTKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn+glaj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn+glaj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F15C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715346142;
	bh=Hy9JMto+6zb8uPiglqoFuv7o5xTC7AW5YpgXwPEe40w=;
	h=To:Subject:From:Date:From;
	b=Bn+glaj0cOuZ/yB6jCNWjw2OiHzGtsYmRR1yZsKxThvbNVOqucn55YDk0fAsfE+nq
	 e+IlQxxFISyf52FBXvLnDyqqdmpIK0jL7UqVxw6ypu6kyfP9fTuffZBTGW2JpkKN7E
	 cmtxg/73uiS5dacD8LE09qFEMqhJHZsLePRhI7JX2InPAdaiq+KwfKz/gmmDhCSjkf
	 BcWW1lTiH6psXa3JulNMfCe6wXHIh19g5GdZRr6wmsdUdmNSHCcLSD+bRH9zV8uC4P
	 l02Ui2I96cRn0A6AoEDoR8StBFRv9Wr5n5/QCqKYU841Xmp1BdzWAjkVUGtXGublvi
	 HjCt8O9nOTY2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5F5C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534614279.3866.5951472738029414237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3101b57d38530fdfcde490c28124e60e45047af2ca133429a3e70e96ab774b
Date: Fri, 10 May 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715346142
