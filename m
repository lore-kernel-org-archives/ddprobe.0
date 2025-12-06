Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D80D2E6CDB
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765036374; cv=none; b=fTXFBXKAHXJTn1n6Hr5Txgx1wObV1f4XYp1pvukctb/dN8HetBB4JFqDSbmwOoQ0IP6bAaWjzhEwwgBzjd6Wy46sSHKDjLyKDdiAA7Xwz6WGJFd98JLNmmJwhcVG8c9P5QzCU+LIx62j9rwa+Lng/ny5thT7j/0+f25wREtcN9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765036374; c=relaxed/simple;
	bh=3qvvsNbANHVsADVDqPiTWMWGroyTVodia5Wp5RQJ4CE=;
	h=To:Subject:From:Message-Id:Date; b=FKQSt4h5Ik1rTgaHstEGq+zsCsVpq3HdweC/Jm11y1iSOpdYoWS5TLds1hChipsZWyPzBvhCJumWAJqYFk3fEL8oXgPLBKr5M1vJPZDRjgPW8QlwjM8qnm44xkjWEZMB0SSAZK8NtrrwH371vgz90Nigb6yy+MuHH8AJeQDEisM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llQ6xglT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llQ6xglT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EFDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765036373;
	bh=3qvvsNbANHVsADVDqPiTWMWGroyTVodia5Wp5RQJ4CE=;
	h=To:Subject:From:Date:From;
	b=llQ6xglTZWVBAzsRUzXvAuK7duewRA+LAwiviWSHBnNHBs+1JWySBfmxtH1fRtRji
	 Lzwm0oAWTlq6agiimg6WYbVnuKebVqdg6tHNUQBac7wTeDU23a1ueQvIMgB9B0yJvQ
	 R8S1qfQTdT0KyftleqLTsvegA/y3czrbvHsmRt/VnqiG0XMQWAQqQ9+HXz4ZNj2+rH
	 BYqYccWJ4j79NgNYetmaxvJe/XUSDvSXHxDmQJBZF25qG2bJC/piA6rtoDGDIOJTcC
	 MBGs6PZgLk/fMEpcC9D+eMD/bm22JLH4x83ftQV4BUyUzYP/0JjJaYnC6OzVWEMLPq
	 oh7ekHy9rEdcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049FD3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176503637358.8379.5113458431141389298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940a1801ae7740ec55e4e4d74ce11ded2aa7a8f29652dba859cbae1772c12397
Date: Sat, 06 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765036373
