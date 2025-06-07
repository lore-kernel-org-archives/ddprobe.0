Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF691F1517
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749331794; cv=none; b=hSGWX4wRGev6o9b0dDjYMMYA7aAfTwwmjiXdqzgRk5jUq0mzpS5IRW9jANzqkOejnzW7CaJM4D/911MV/sdM1g4t5KsV71VRzIYmqXJKIefYGZt6CYOlqXYmxZR5oir/EibnrfhPnouE+mbG3S1JjPT75zuejUqt/jLNPru6hO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749331794; c=relaxed/simple;
	bh=K0/WIiSxYfubrSQ2JCQvLN7fAjMG1tXi4qUywD0DJdk=;
	h=To:Subject:From:Message-Id:Date; b=o9P4AiT3McUdZGNgK+j2iQYlqMwTAsqS8E+/OI+qBbBSLWSyScRIeEsIqEm3atQY6wuNthYBElRL5QBmQpB1W5YXUD8w6Wp8o4KWCKDTZGteJco6xfDE5bh9Ol1MB3NNVI7zmc/KbxQC5zOT+yz7mAfQqsdQ+XkS29i3f28hY4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbmp2+ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbmp2+ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F45FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331793;
	bh=K0/WIiSxYfubrSQ2JCQvLN7fAjMG1tXi4qUywD0DJdk=;
	h=To:Subject:From:Date:From;
	b=lbmp2+car5iT2IrWAjHIbO7lQ/CF1zZJoYDMpcD8AXtKc3TxC9XUjxRRNZ2T6HxwV
	 nc/MXtOcWscJwFBfJ7S5/gIenqbNdMygkBCOsdr6JSyncvvOB63p4UIKacEXH8kc0w
	 taRSUnZllErM1y8iOBu2p4GJN5n5jnQpvYcTByBic6PmOumeKUzBbJXEiq6UCg0YXb
	 lvA9S2k/X5lmovjuaDA/UEUUgoEUVNBf6KbZ246DIQ08iZjieoEIzmiMKzKOQ6lHjD
	 ziVdt+4tlcqqBAuk9+MrkK3RFSNmrIxjHYybfIidRjwUxLJq0z0AG8FAFIgtzu5aE5
	 F9utZRNBpUeOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F118C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933179357.30568.17253502226744096990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66714f4127becb984561b64853217e56efc32c5ed6380cf1272a886cc72ed4be
Date: Sat, 07 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749331793
