Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF672C17A3
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760516394; cv=none; b=I29+7X3gILxMRUUQVNJqEHk3zPXmvNrs65V4KKqEvgdzMW9yPbxcwCi6cNwtfQGRdJSXLuEYH0ArGy4ytR0FJ26mdAGlOqNe1/JVdbFXok1szBO4ybwYV3DM/5M02A+cA7UtIjqwtk0YIwwWJqxNkldyWBKgqo8mKuaZtzfB9C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760516394; c=relaxed/simple;
	bh=HyotiSHRa4bcZgnzwB2Azop3sQsqQjNBfzDQH+SXPrI=;
	h=To:Subject:From:Message-Id:Date; b=QJIhzMwmaOgyvZnWNhYkbEcgaZ0kU26TJ/koaD1RnYcD9OXVt3bpMAgZmu/Ehxpb6YOunS9iWIyWGjwwBU8vK6F131F4Uei+hrETbcd0/9DylrTQRQn4SmBhRglYzqpM4bnGYXvzI0Nf/AqwQDpmyUcYuNwWfktH4nIiLdjnkH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7JFYH4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7JFYH4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5A6C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760516393;
	bh=HyotiSHRa4bcZgnzwB2Azop3sQsqQjNBfzDQH+SXPrI=;
	h=To:Subject:From:Date:From;
	b=V7JFYH4nLosi0tbi1gk4PkjGWFPigk8iKjAyeyogaIpDoqhhTgcTqywwwXPMwHdIG
	 1aKHt63c17ejLBDZ8GiTeHBekgCw7LKqrqQ4pnrxUKzm578rWi4QUF91n/0QU+cTcY
	 Z4U5KrWSZ/jYHv9vkwOfOtp5bqpXVmI7I9psVVgGIJ8G2xIGtvowkRrY9JksyNod0O
	 TV2GgxTx41YA21N8ft/1XTZtigpjO2Eyn0W0k7gjlAwRU6cu95Px1UheUr+zYon/bf
	 mwISHJ61BhkrrZvVXUJk1AYhjAYL9o4PkZ2f92WiL3mKQHp0ls80754ppWC6YRomfU
	 JajBp0cNMqYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9721DCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051639360.10978.8788638083688545991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cee9a1d65c08c52dc04818f27c05c5df4514b73a8dc809bb3030056a5d8002c
Date: Wed, 15 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760516393
