Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153751BC2A
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756031995; cv=none; b=SpDVjl+7Lz2uYuvJF3viLg9rvTnq31Qf+603+a5WHbRMZS9HSShLSlGW8s/uaGw3tGDtSnA2FpynklGgsTPCb8yX6L3g+C/KAmYsm6UlYjCiGnm1L6dPLUuGbtccqppdGp4oIKaA+ZylOn6n2570ftHyAV8x4amykP/evGfhxsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756031995; c=relaxed/simple;
	bh=lYzYn8XGy8V2+EC3PrWQsk7T1JE61pbTlcYQ/UioBF8=;
	h=To:Subject:From:Message-Id:Date; b=rYFo3XkacXy5vkI/ETvehoJYf7UHQS/Rch4dWxIYQfxhESxkVXTsgMKDhz3iDOANED8ACEv2l87Dun8pjssYqG2XO0JfPbasbDmc4yYxc5dhFUKQX3cFfDipuO+3nsvw+iD0He1JGWmCUxzAkdCwbo46YpCuPZfcWOeXmzDgwlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtpGtF3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtpGtF3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF9BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756031993;
	bh=lYzYn8XGy8V2+EC3PrWQsk7T1JE61pbTlcYQ/UioBF8=;
	h=To:Subject:From:Date:From;
	b=rtpGtF3NCyflVtC1PjcP0kzWg3vzphk1nhd5zY4DyedJbASfVWFqvVfhS0iFUGMyt
	 EmqK80Bpx0X1JnN2IC2mU+4sh7QC3W++pSHvcGfubjJ7BZdz0SxT9biBwP8aBXJ392
	 8WJ3NPcj+H3vXb1WyXmk0aHRjp2pn0j+oMK7QeM0B/3xwSMHgQmjnSmKKFdSSzL2V0
	 t14ySqak//Nopio5TAeJna1nclnULce2Mi9othYYQqVDgrzPsn77i5Vk3FH1tQP+34
	 73PeDyymkPVj6/1Dh+DeZ/Hfa0L1i7BOSUA1Hk0NcMudWUUhmNejcCYEvq0DL0qbFo
	 eXAM77hMErfng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A2CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603199357.1646.10203018633482340207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db83a0a83f81030ca6d3d9258f44a3907c27d1d350ad2083043b7e88b411889a
Date: Sun, 24 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756031993
