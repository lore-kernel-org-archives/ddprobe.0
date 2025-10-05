Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AD7B67A
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759649994; cv=none; b=tilVxHZ3QTlC4/wMkAGCLNKCeUDbI4wF4L1IpP9+kR1kSTq9UDRk+7MJq39yyU+yBDmDraIoramW3eN9xboKKnURcm5Q58ArwvKjW8E9VfHsEuKoZhi8FQ3vQKeCeqPU8t7B/h5/F+Bic+zkz6h8Y8NyI7XFhz/maB+7pvawk1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759649994; c=relaxed/simple;
	bh=NY1OHIJCMk6Pv5qF3epk4nnrMy730N0dfqM9YHXyOuM=;
	h=To:Subject:From:Message-Id:Date; b=awEceO+AP698KlD7uNzTcQ9/lQmv9W+4gCbgIy8Z7gfSrgHd6u01fKuuuPg+8Bb30/+TDk0B3pezB/5ukMzVWsz4PeIKn52WVKj+BKhIluE7JtjxjO/IYvttkh+pA7GNnieGC8ltuv21wy7mOM+rpXeELDfDD0ah1UrAKq5gFeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MT3t4BDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MT3t4BDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF87C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759649993;
	bh=NY1OHIJCMk6Pv5qF3epk4nnrMy730N0dfqM9YHXyOuM=;
	h=To:Subject:From:Date:From;
	b=MT3t4BDIzdAsfAsZMjv8LYrloCHj2w9wWzLF2uDTUZt1pb4YQ1b1sjeE1BdeXnmDm
	 4sCPWyLvkVYFNSR2bYCvdzjhrBGwjg3SyBlgOQxLmjjiPaYjFiN15vwKWiNq64rfXd
	 4pPq4dJOdt+oFpm6EECCE7rBhyfeJiz0NjFh5SEx3x7aEtQj7d5iTys+CoLZOenFLn
	 8ZGE/1Fc1n4pr0d74kBxRdsWH8LtG1j4mhPZ2LFfEvfpnPgYjrgSBUAnRy3ouFCKFI
	 PJCPlJuiIkV5qTewnZzRB/GE9pZNJWEqS7Ep1emzPN0JKNUQaBWzjxehW2yYHJtB9z
	 TgOvxk5StZkVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB88CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964999361.18507.5072340065446820336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6632df82f8a8ee0b4db227c46ade8cf6fdc421e056f2674cb0e7659781273b47
Date: Sun, 05 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759649993
