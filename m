Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3974F74040
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759655394; cv=none; b=onm8+lE4ER2Fmxa94C40qwS2kTQfOfjQc7Ktu2xNXVjjj1V4i9q/sONUlxhO9iXtcBWSxdJo3b/qlkN11/68KTkjD72g23EalrBd2pzuYsUyEOvLiH593SnuCO0lsNgAyf5xo88+hHR9NFCkJMxEmYx6SP2OwrD8BBJux24MTd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759655394; c=relaxed/simple;
	bh=VEagwnpGEToZ4qXpi3RplxUNqrjaNsa5VALj04FaE8E=;
	h=To:Subject:From:Message-Id:Date; b=XDfwggQpi2JTFFslUlP+P8r9+2J4eulx6Lkd2RVkChVqPhvlYwpQA6CK0qlbxcEC52vcmOR/gcKMKM37RxBGTgvYhf77BFuR6NfZXErluHoS6mF3iLziNRVYYJi+JSVoijW4qWJlH/BfR6lguG0a059adCZgC5jP0c1+HBcIEfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOfP84c3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOfP84c3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7ABC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759655393;
	bh=VEagwnpGEToZ4qXpi3RplxUNqrjaNsa5VALj04FaE8E=;
	h=To:Subject:From:Date:From;
	b=YOfP84c3v4zEcI7bKbuDHpaEARf3OktTnDedNxlDHcwoZiVur55CXcbzpOyVaz5Ml
	 wSXXdbsS4jJ2m515Cz0maz4b5FmMlvlX2bDMm4Pnac80LrMXw7hv0Fu5wAQbOSvBir
	 yC3EhyAMPl3A657ZGvGAi7bRuL7CjtQVjn7on2mz2VlMOeKota/6x7qpvxE92c6uyz
	 ULe4qdJeMhZjjC8vR0LiJCKWIQe1SnGtU7xio5Lb3c1UQr2Rl4YrMxwPo+1BheHMuG
	 BAo4lUZMV0u4BXFgLFAi7K1WyMn4HHD7VKEgoEbJArorJbZkyDoMCAtTKhpxxGrqI7
	 gFldrE8+v0UCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F32CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965539358.20453.6025582259449467337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe8e7bdbc46f9434a7987bb654eb29e62587997782b7018e58eafb9f625491a
Date: Sun, 05 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759655393
